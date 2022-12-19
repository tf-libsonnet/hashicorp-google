local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
local d = (import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet');
{
  '#':: d.pkg(name='bigquery_connection', url='', help='`bigquery_connection` represents the `google_bigquery_connection` Terraform resource.\n\n\n\nThis package contains functions and utilities for setting up the resource using Jsonnet code.\n'),
  aws:: {
    access_role:: {
      '#new':: d.fn(help='\n`google.bigquery_connection.aws.access_role.new` constructs a new object with attributes and blocks configured for the `access_role`\nTerraform sub block.\n\n\n\n**Args**:\n  - `iam_role_id` (`string`): The user’s AWS IAM Role that trusts the Google-owned AWS IAM user Connection.\n\n**Returns**:\n  - An attribute object that represents the `access_role` sub block.\n', args=[]),
      new(
        iam_role_id
      ):: std.prune(a={
        iam_role_id: iam_role_id,
      }),
    },
    '#new':: d.fn(help='\n`google.bigquery_connection.aws.new` constructs a new object with attributes and blocks configured for the `aws`\nTerraform sub block.\n\n\n\n**Args**:\n  - `access_role` (`list[obj]`): Authentication using Google owned service account to assume into customer&#39;s AWS IAM Role. When `null`, the `access_role` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.bigquery_connection.aws.access_role.new](#fn-bigquery_connectionaccess_rolenew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `aws` sub block.\n', args=[]),
    new(
      access_role=null
    ):: std.prune(a={
      access_role: access_role,
    }),
  },
  azure:: {
    '#new':: d.fn(help='\n`google.bigquery_connection.azure.new` constructs a new object with attributes and blocks configured for the `azure`\nTerraform sub block.\n\n\n\n**Args**:\n  - `customer_tenant_id` (`string`): The id of customer&#39;s directory that host the data.\n\n**Returns**:\n  - An attribute object that represents the `azure` sub block.\n', args=[]),
    new(
      customer_tenant_id
    ):: std.prune(a={
      customer_tenant_id: customer_tenant_id,
    }),
  },
  cloud_resource:: {
    '#new':: d.fn(help='\n`google.bigquery_connection.cloud_resource.new` constructs a new object with attributes and blocks configured for the `cloud_resource`\nTerraform sub block.\n\n\n\n**Returns**:\n  - An attribute object that represents the `cloud_resource` sub block.\n', args=[]),
    new(

    ):: std.prune(a={}),
  },
  cloud_spanner:: {
    '#new':: d.fn(help='\n`google.bigquery_connection.cloud_spanner.new` constructs a new object with attributes and blocks configured for the `cloud_spanner`\nTerraform sub block.\n\n\n\n**Args**:\n  - `database` (`string`): Cloud Spanner database in the form &#39;project/instance/database&#39;\n  - `use_parallelism` (`bool`): If parallelism should be used when reading from Cloud Spanner When `null`, the `use_parallelism` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `cloud_spanner` sub block.\n', args=[]),
    new(
      database,
      use_parallelism=null
    ):: std.prune(a={
      database: database,
      use_parallelism: use_parallelism,
    }),
  },
  cloud_sql:: {
    credential:: {
      '#new':: d.fn(help='\n`google.bigquery_connection.cloud_sql.credential.new` constructs a new object with attributes and blocks configured for the `credential`\nTerraform sub block.\n\n\n\n**Args**:\n  - `password` (`string`): Password for database.\n  - `username` (`string`): Username for database.\n\n**Returns**:\n  - An attribute object that represents the `credential` sub block.\n', args=[]),
      new(
        password,
        username
      ):: std.prune(a={
        password: password,
        username: username,
      }),
    },
    '#new':: d.fn(help='\n`google.bigquery_connection.cloud_sql.new` constructs a new object with attributes and blocks configured for the `cloud_sql`\nTerraform sub block.\n\n\n\n**Args**:\n  - `database` (`string`): Database name.\n  - `instance_id` (`string`): Cloud SQL instance ID in the form project:location:instance.\n  - `type` (`string`): Type of the Cloud SQL database. Possible values: [&#34;DATABASE_TYPE_UNSPECIFIED&#34;, &#34;POSTGRES&#34;, &#34;MYSQL&#34;]\n  - `credential` (`list[obj]`): Cloud SQL properties. When `null`, the `credential` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.bigquery_connection.cloud_sql.credential.new](#fn-bigquery_connectioncredentialnew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `cloud_sql` sub block.\n', args=[]),
    new(
      database,
      instance_id,
      type,
      credential=null
    ):: std.prune(a={
      credential: credential,
      database: database,
      instance_id: instance_id,
      type: type,
    }),
  },
  '#new':: d.fn(help="\n`google.bigquery_connection.new` injects a new `google_bigquery_connection` Terraform `resource`\nblock into the root module document.\n\nAdditionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the\nresource. For example, if you added a new instance to the root using:\n\n    # arguments omitted for brevity\n    google.bigquery_connection.new('some_id')\n\nYou can get the reference to the `id` field of the created `google.bigquery_connection` using the reference:\n\n    $._ref.google_bigquery_connection.some_id.get('id')\n\nThis is the same as directly entering `\"${ google_bigquery_connection.some_id.id }\"` as the value.\n\nNOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,\nor `$` to refer to the root object. Instead, make an explicit outer object using `local`.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block.\n  - `connection_id` (`string`): Optional connection id that should be assigned to the created connection. When `null`, the `connection_id` field will be omitted from the resulting object.\n  - `description` (`string`): A descriptive description for the connection When `null`, the `description` field will be omitted from the resulting object.\n  - `friendly_name` (`string`): A descriptive name for the connection When `null`, the `friendly_name` field will be omitted from the resulting object.\n  - `location` (`string`): The geographic location where the connection should reside.\nCloud SQL instance must be in the same location as the connection\nwith following exceptions: Cloud SQL us-central1 maps to BigQuery US, Cloud SQL europe-west1 maps to BigQuery EU.\nExamples: US, EU, asia-northeast1, us-central1, europe-west1.\nSpanner Connections same as spanner region\nAWS allowed regions are aws-us-east-1\nAzure allowed regions are azure-eastus2 When `null`, the `location` field will be omitted from the resulting object.\n  - `project` (`string`):  When `null`, the `project` field will be omitted from the resulting object.\n  - `aws` (`list[obj]`): Connection properties specific to Amazon Web Services. When `null`, the `aws` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.bigquery_connection.aws.new](#fn-awsnew) constructor.\n  - `azure` (`list[obj]`): Container for connection properties specific to Azure. When `null`, the `azure` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.bigquery_connection.azure.new](#fn-azurenew) constructor.\n  - `cloud_resource` (`list[obj]`): Container for connection properties for delegation of access to GCP resources. When `null`, the `cloud_resource` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.bigquery_connection.cloud_resource.new](#fn-cloud_resourcenew) constructor.\n  - `cloud_spanner` (`list[obj]`): Connection properties specific to Cloud Spanner When `null`, the `cloud_spanner` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.bigquery_connection.cloud_spanner.new](#fn-cloud_spannernew) constructor.\n  - `cloud_sql` (`list[obj]`): A nested object resource When `null`, the `cloud_sql` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.bigquery_connection.cloud_sql.new](#fn-cloud_sqlnew) constructor.\n  - `timeouts` (`obj`):  When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.bigquery_connection.timeouts.new](#fn-timeoutsnew) constructor.\n\n**Returns**:\n- A mixin object that injects the new resource into the root Terraform configuration.\n", args=[]),
  new(
    resourceLabel,
    aws=null,
    azure=null,
    cloud_resource=null,
    cloud_spanner=null,
    cloud_sql=null,
    connection_id=null,
    description=null,
    friendly_name=null,
    location=null,
    project=null,
    timeouts=null,
    _meta={}
  ):: tf.withResource(
    type='google_bigquery_connection',
    label=resourceLabel,
    attrs=self.newAttrs(
      aws=aws,
      azure=azure,
      cloud_resource=cloud_resource,
      cloud_spanner=cloud_spanner,
      cloud_sql=cloud_sql,
      connection_id=connection_id,
      description=description,
      friendly_name=friendly_name,
      location=location,
      project=project,
      timeouts=timeouts
    ),
    _meta=_meta
  ),
  '#newAttrs':: d.fn(help='\n`google.bigquery_connection.newAttrs` constructs a new object with attributes and blocks configured for the `bigquery_connection`\nTerraform resource.\n\nUnlike [google.bigquery_connection.new](#fn-new), this function will not inject the `resource`\nblock into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the\n[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.\n\nThis is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to\ninjecting into a complete block.\n\n**Args**:\n  - `connection_id` (`string`): Optional connection id that should be assigned to the created connection. When `null`, the `connection_id` field will be omitted from the resulting object.\n  - `description` (`string`): A descriptive description for the connection When `null`, the `description` field will be omitted from the resulting object.\n  - `friendly_name` (`string`): A descriptive name for the connection When `null`, the `friendly_name` field will be omitted from the resulting object.\n  - `location` (`string`): The geographic location where the connection should reside.\nCloud SQL instance must be in the same location as the connection\nwith following exceptions: Cloud SQL us-central1 maps to BigQuery US, Cloud SQL europe-west1 maps to BigQuery EU.\nExamples: US, EU, asia-northeast1, us-central1, europe-west1.\nSpanner Connections same as spanner region\nAWS allowed regions are aws-us-east-1\nAzure allowed regions are azure-eastus2 When `null`, the `location` field will be omitted from the resulting object.\n  - `project` (`string`):  When `null`, the `project` field will be omitted from the resulting object.\n  - `aws` (`list[obj]`): Connection properties specific to Amazon Web Services. When `null`, the `aws` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.bigquery_connection.aws.new](#fn-awsnew) constructor.\n  - `azure` (`list[obj]`): Container for connection properties specific to Azure. When `null`, the `azure` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.bigquery_connection.azure.new](#fn-azurenew) constructor.\n  - `cloud_resource` (`list[obj]`): Container for connection properties for delegation of access to GCP resources. When `null`, the `cloud_resource` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.bigquery_connection.cloud_resource.new](#fn-cloud_resourcenew) constructor.\n  - `cloud_spanner` (`list[obj]`): Connection properties specific to Cloud Spanner When `null`, the `cloud_spanner` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.bigquery_connection.cloud_spanner.new](#fn-cloud_spannernew) constructor.\n  - `cloud_sql` (`list[obj]`): A nested object resource When `null`, the `cloud_sql` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.bigquery_connection.cloud_sql.new](#fn-cloud_sqlnew) constructor.\n  - `timeouts` (`obj`):  When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.bigquery_connection.timeouts.new](#fn-timeoutsnew) constructor.\n\n**Returns**:\n  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `bigquery_connection` resource into the root Terraform configuration.\n', args=[]),
  newAttrs(
    aws=null,
    azure=null,
    cloud_resource=null,
    cloud_spanner=null,
    cloud_sql=null,
    connection_id=null,
    description=null,
    friendly_name=null,
    location=null,
    project=null,
    timeouts=null
  ):: std.prune(a={
    aws: aws,
    azure: azure,
    cloud_resource: cloud_resource,
    cloud_spanner: cloud_spanner,
    cloud_sql: cloud_sql,
    connection_id: connection_id,
    description: description,
    friendly_name: friendly_name,
    location: location,
    project: project,
    timeouts: timeouts,
  }),
  timeouts:: {
    '#new':: d.fn(help='\n`google.bigquery_connection.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`\nTerraform sub block.\n\n\n\n**Args**:\n  - `create` (`string`):  When `null`, the `create` field will be omitted from the resulting object.\n  - `delete` (`string`):  When `null`, the `delete` field will be omitted from the resulting object.\n  - `update` (`string`):  When `null`, the `update` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `timeouts` sub block.\n', args=[]),
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
  '#withAws':: d.fn(help='`google.list[obj].withAws` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the aws field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [google.list[obj].withAwsMixin](TODO) function.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `aws` field.\n', args=[]),
  withAws(resourceLabel, value): {
    resource+: {
      google_bigquery_connection+: {
        [resourceLabel]+: {
          aws: value,
        },
      },
    },
  },
  '#withAwsMixin':: d.fn(help='`google.list[obj].withAwsMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the aws field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google.list[obj].withAws](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `aws` field.\n', args=[]),
  withAwsMixin(resourceLabel, value): {
    resource+: {
      google_bigquery_connection+: {
        [resourceLabel]+: {
          aws+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withAzure':: d.fn(help='`google.list[obj].withAzure` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the azure field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [google.list[obj].withAzureMixin](TODO) function.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `azure` field.\n', args=[]),
  withAzure(resourceLabel, value): {
    resource+: {
      google_bigquery_connection+: {
        [resourceLabel]+: {
          azure: value,
        },
      },
    },
  },
  '#withAzureMixin':: d.fn(help='`google.list[obj].withAzureMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the azure field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google.list[obj].withAzure](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `azure` field.\n', args=[]),
  withAzureMixin(resourceLabel, value): {
    resource+: {
      google_bigquery_connection+: {
        [resourceLabel]+: {
          azure+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withCloudResource':: d.fn(help='`google.list[obj].withCloudResource` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the cloud_resource field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [google.list[obj].withCloudResourceMixin](TODO) function.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `cloud_resource` field.\n', args=[]),
  withCloudResource(resourceLabel, value): {
    resource+: {
      google_bigquery_connection+: {
        [resourceLabel]+: {
          cloud_resource: value,
        },
      },
    },
  },
  '#withCloudResourceMixin':: d.fn(help='`google.list[obj].withCloudResourceMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the cloud_resource field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google.list[obj].withCloudResource](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `cloud_resource` field.\n', args=[]),
  withCloudResourceMixin(resourceLabel, value): {
    resource+: {
      google_bigquery_connection+: {
        [resourceLabel]+: {
          cloud_resource+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withCloudSpanner':: d.fn(help='`google.list[obj].withCloudSpanner` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the cloud_spanner field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [google.list[obj].withCloudSpannerMixin](TODO) function.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `cloud_spanner` field.\n', args=[]),
  withCloudSpanner(resourceLabel, value): {
    resource+: {
      google_bigquery_connection+: {
        [resourceLabel]+: {
          cloud_spanner: value,
        },
      },
    },
  },
  '#withCloudSpannerMixin':: d.fn(help='`google.list[obj].withCloudSpannerMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the cloud_spanner field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google.list[obj].withCloudSpanner](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `cloud_spanner` field.\n', args=[]),
  withCloudSpannerMixin(resourceLabel, value): {
    resource+: {
      google_bigquery_connection+: {
        [resourceLabel]+: {
          cloud_spanner+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withCloudSql':: d.fn(help='`google.list[obj].withCloudSql` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the cloud_sql field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [google.list[obj].withCloudSqlMixin](TODO) function.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `cloud_sql` field.\n', args=[]),
  withCloudSql(resourceLabel, value): {
    resource+: {
      google_bigquery_connection+: {
        [resourceLabel]+: {
          cloud_sql: value,
        },
      },
    },
  },
  '#withCloudSqlMixin':: d.fn(help='`google.list[obj].withCloudSqlMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the cloud_sql field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google.list[obj].withCloudSql](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `cloud_sql` field.\n', args=[]),
  withCloudSqlMixin(resourceLabel, value): {
    resource+: {
      google_bigquery_connection+: {
        [resourceLabel]+: {
          cloud_sql+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withConnectionId':: d.fn(help='`google.string.withConnectionId` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the connection_id field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `connection_id` field.\n', args=[]),
  withConnectionId(resourceLabel, value): {
    resource+: {
      google_bigquery_connection+: {
        [resourceLabel]+: {
          connection_id: value,
        },
      },
    },
  },
  '#withDescription':: d.fn(help='`google.string.withDescription` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the description field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `description` field.\n', args=[]),
  withDescription(resourceLabel, value): {
    resource+: {
      google_bigquery_connection+: {
        [resourceLabel]+: {
          description: value,
        },
      },
    },
  },
  '#withFriendlyName':: d.fn(help='`google.string.withFriendlyName` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the friendly_name field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `friendly_name` field.\n', args=[]),
  withFriendlyName(resourceLabel, value): {
    resource+: {
      google_bigquery_connection+: {
        [resourceLabel]+: {
          friendly_name: value,
        },
      },
    },
  },
  '#withLocation':: d.fn(help='`google.string.withLocation` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the location field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `location` field.\n', args=[]),
  withLocation(resourceLabel, value): {
    resource+: {
      google_bigquery_connection+: {
        [resourceLabel]+: {
          location: value,
        },
      },
    },
  },
  '#withProject':: d.fn(help='`google.string.withProject` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the project field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `project` field.\n', args=[]),
  withProject(resourceLabel, value): {
    resource+: {
      google_bigquery_connection+: {
        [resourceLabel]+: {
          project: value,
        },
      },
    },
  },
  '#withTimeouts':: d.fn(help='`google.obj.withTimeouts` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will replace the map with the passed in `value`. If you wish to instead merge the\npassed in value to the existing map, use the [google.obj.withTimeoutsMixin](TODO) function.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeouts(resourceLabel, value): {
    resource+: {
      google_bigquery_connection+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  '#withTimeoutsMixin':: d.fn(help='`google.obj.withTimeoutsMixin` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will merge the passed in value to the existing map. If you wish\nto instead replace the entire map with the passed in `value`, use the [google.obj.withTimeouts](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeoutsMixin(resourceLabel, value): {
    resource+: {
      google_bigquery_connection+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
}
