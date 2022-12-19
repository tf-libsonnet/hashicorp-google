---
permalink: /bigquery_connection/
---

# bigquery_connection

`bigquery_connection` represents the `google_bigquery_connection` Terraform resource.



This package contains functions and utilities for setting up the resource using Jsonnet code.


## Index

* [`fn new()`](#fn-new)
* [`fn newAttrs()`](#fn-newattrs)
* [`fn withAws()`](#fn-withaws)
* [`fn withAwsMixin()`](#fn-withawsmixin)
* [`fn withAzure()`](#fn-withazure)
* [`fn withAzureMixin()`](#fn-withazuremixin)
* [`fn withCloudResource()`](#fn-withcloudresource)
* [`fn withCloudResourceMixin()`](#fn-withcloudresourcemixin)
* [`fn withCloudSpanner()`](#fn-withcloudspanner)
* [`fn withCloudSpannerMixin()`](#fn-withcloudspannermixin)
* [`fn withCloudSql()`](#fn-withcloudsql)
* [`fn withCloudSqlMixin()`](#fn-withcloudsqlmixin)
* [`fn withConnectionId()`](#fn-withconnectionid)
* [`fn withDescription()`](#fn-withdescription)
* [`fn withFriendlyName()`](#fn-withfriendlyname)
* [`fn withLocation()`](#fn-withlocation)
* [`fn withProject()`](#fn-withproject)
* [`fn withTimeouts()`](#fn-withtimeouts)
* [`fn withTimeoutsMixin()`](#fn-withtimeoutsmixin)
* [`obj aws`](#obj-aws)
  * [`fn new()`](#fn-awsnew)
  * [`obj aws.access_role`](#obj-awsaccess_role)
    * [`fn new()`](#fn-awsaccess_rolenew)
* [`obj azure`](#obj-azure)
  * [`fn new()`](#fn-azurenew)
* [`obj cloud_resource`](#obj-cloud_resource)
  * [`fn new()`](#fn-cloud_resourcenew)
* [`obj cloud_spanner`](#obj-cloud_spanner)
  * [`fn new()`](#fn-cloud_spannernew)
* [`obj cloud_sql`](#obj-cloud_sql)
  * [`fn new()`](#fn-cloud_sqlnew)
  * [`obj cloud_sql.credential`](#obj-cloud_sqlcredential)
    * [`fn new()`](#fn-cloud_sqlcredentialnew)
* [`obj timeouts`](#obj-timeouts)
  * [`fn new()`](#fn-timeoutsnew)

## Fields

### fn new

```ts
new()
```


`google.bigquery_connection.new` injects a new `google_bigquery_connection` Terraform `resource`
block into the root module document.

Additionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the
resource. For example, if you added a new instance to the root using:

    # arguments omitted for brevity
    google.bigquery_connection.new('some_id')

You can get the reference to the `id` field of the created `google.bigquery_connection` using the reference:

    $._ref.google_bigquery_connection.some_id.get('id')

This is the same as directly entering `"${ google_bigquery_connection.some_id.id }"` as the value.

NOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,
or `$` to refer to the root object. Instead, make an explicit outer object using `local`.

**Args**:
  - `resourceLabel` (`string`): The name label of the block.
  - `connection_id` (`string`): Optional connection id that should be assigned to the created connection. When `null`, the `connection_id` field will be omitted from the resulting object.
  - `description` (`string`): A descriptive description for the connection When `null`, the `description` field will be omitted from the resulting object.
  - `friendly_name` (`string`): A descriptive name for the connection When `null`, the `friendly_name` field will be omitted from the resulting object.
  - `location` (`string`): The geographic location where the connection should reside.
Cloud SQL instance must be in the same location as the connection
with following exceptions: Cloud SQL us-central1 maps to BigQuery US, Cloud SQL europe-west1 maps to BigQuery EU.
Examples: US, EU, asia-northeast1, us-central1, europe-west1.
Spanner Connections same as spanner region
AWS allowed regions are aws-us-east-1
Azure allowed regions are azure-eastus2 When `null`, the `location` field will be omitted from the resulting object.
  - `project` (`string`):  When `null`, the `project` field will be omitted from the resulting object.
  - `aws` (`list[obj]`): Connection properties specific to Amazon Web Services. When `null`, the `aws` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.bigquery_connection.aws.new](#fn-awsnew) constructor.
  - `azure` (`list[obj]`): Container for connection properties specific to Azure. When `null`, the `azure` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.bigquery_connection.azure.new](#fn-azurenew) constructor.
  - `cloud_resource` (`list[obj]`): Container for connection properties for delegation of access to GCP resources. When `null`, the `cloud_resource` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.bigquery_connection.cloud_resource.new](#fn-cloud_resourcenew) constructor.
  - `cloud_spanner` (`list[obj]`): Connection properties specific to Cloud Spanner When `null`, the `cloud_spanner` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.bigquery_connection.cloud_spanner.new](#fn-cloud_spannernew) constructor.
  - `cloud_sql` (`list[obj]`): A nested object resource When `null`, the `cloud_sql` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.bigquery_connection.cloud_sql.new](#fn-cloud_sqlnew) constructor.
  - `timeouts` (`obj`):  When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.bigquery_connection.timeouts.new](#fn-timeoutsnew) constructor.

**Returns**:
- A mixin object that injects the new resource into the root Terraform configuration.


### fn newAttrs

```ts
newAttrs()
```


`google.bigquery_connection.newAttrs` constructs a new object with attributes and blocks configured for the `bigquery_connection`
Terraform resource.

Unlike [google.bigquery_connection.new](#fn-new), this function will not inject the `resource`
block into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the
[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.

This is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to
injecting into a complete block.

**Args**:
  - `connection_id` (`string`): Optional connection id that should be assigned to the created connection. When `null`, the `connection_id` field will be omitted from the resulting object.
  - `description` (`string`): A descriptive description for the connection When `null`, the `description` field will be omitted from the resulting object.
  - `friendly_name` (`string`): A descriptive name for the connection When `null`, the `friendly_name` field will be omitted from the resulting object.
  - `location` (`string`): The geographic location where the connection should reside.
Cloud SQL instance must be in the same location as the connection
with following exceptions: Cloud SQL us-central1 maps to BigQuery US, Cloud SQL europe-west1 maps to BigQuery EU.
Examples: US, EU, asia-northeast1, us-central1, europe-west1.
Spanner Connections same as spanner region
AWS allowed regions are aws-us-east-1
Azure allowed regions are azure-eastus2 When `null`, the `location` field will be omitted from the resulting object.
  - `project` (`string`):  When `null`, the `project` field will be omitted from the resulting object.
  - `aws` (`list[obj]`): Connection properties specific to Amazon Web Services. When `null`, the `aws` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.bigquery_connection.aws.new](#fn-awsnew) constructor.
  - `azure` (`list[obj]`): Container for connection properties specific to Azure. When `null`, the `azure` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.bigquery_connection.azure.new](#fn-azurenew) constructor.
  - `cloud_resource` (`list[obj]`): Container for connection properties for delegation of access to GCP resources. When `null`, the `cloud_resource` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.bigquery_connection.cloud_resource.new](#fn-cloud_resourcenew) constructor.
  - `cloud_spanner` (`list[obj]`): Connection properties specific to Cloud Spanner When `null`, the `cloud_spanner` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.bigquery_connection.cloud_spanner.new](#fn-cloud_spannernew) constructor.
  - `cloud_sql` (`list[obj]`): A nested object resource When `null`, the `cloud_sql` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.bigquery_connection.cloud_sql.new](#fn-cloud_sqlnew) constructor.
  - `timeouts` (`obj`):  When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.bigquery_connection.timeouts.new](#fn-timeoutsnew) constructor.

**Returns**:
  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `bigquery_connection` resource into the root Terraform configuration.


### fn withAws

```ts
withAws()
```

`google.list[obj].withAws` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the aws field.

This function will replace the array with the passed in `value`. If you wish to instead append the
passed in value to the existing array, use the [google.list[obj].withAwsMixin](TODO) function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `aws` field.


### fn withAwsMixin

```ts
withAwsMixin()
```

`google.list[obj].withAwsMixin` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the aws field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google.list[obj].withAws](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `aws` field.


### fn withAzure

```ts
withAzure()
```

`google.list[obj].withAzure` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the azure field.

This function will replace the array with the passed in `value`. If you wish to instead append the
passed in value to the existing array, use the [google.list[obj].withAzureMixin](TODO) function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `azure` field.


### fn withAzureMixin

```ts
withAzureMixin()
```

`google.list[obj].withAzureMixin` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the azure field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google.list[obj].withAzure](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `azure` field.


### fn withCloudResource

```ts
withCloudResource()
```

`google.list[obj].withCloudResource` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the cloud_resource field.

This function will replace the array with the passed in `value`. If you wish to instead append the
passed in value to the existing array, use the [google.list[obj].withCloudResourceMixin](TODO) function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `cloud_resource` field.


### fn withCloudResourceMixin

```ts
withCloudResourceMixin()
```

`google.list[obj].withCloudResourceMixin` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the cloud_resource field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google.list[obj].withCloudResource](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `cloud_resource` field.


### fn withCloudSpanner

```ts
withCloudSpanner()
```

`google.list[obj].withCloudSpanner` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the cloud_spanner field.

This function will replace the array with the passed in `value`. If you wish to instead append the
passed in value to the existing array, use the [google.list[obj].withCloudSpannerMixin](TODO) function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `cloud_spanner` field.


### fn withCloudSpannerMixin

```ts
withCloudSpannerMixin()
```

`google.list[obj].withCloudSpannerMixin` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the cloud_spanner field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google.list[obj].withCloudSpanner](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `cloud_spanner` field.


### fn withCloudSql

```ts
withCloudSql()
```

`google.list[obj].withCloudSql` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the cloud_sql field.

This function will replace the array with the passed in `value`. If you wish to instead append the
passed in value to the existing array, use the [google.list[obj].withCloudSqlMixin](TODO) function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `cloud_sql` field.


### fn withCloudSqlMixin

```ts
withCloudSqlMixin()
```

`google.list[obj].withCloudSqlMixin` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the cloud_sql field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google.list[obj].withCloudSql](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `cloud_sql` field.


### fn withConnectionId

```ts
withConnectionId()
```

`google.string.withConnectionId` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the connection_id field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `connection_id` field.


### fn withDescription

```ts
withDescription()
```

`google.string.withDescription` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the description field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `description` field.


### fn withFriendlyName

```ts
withFriendlyName()
```

`google.string.withFriendlyName` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the friendly_name field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `friendly_name` field.


### fn withLocation

```ts
withLocation()
```

`google.string.withLocation` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the location field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `location` field.


### fn withProject

```ts
withProject()
```

`google.string.withProject` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the project field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `project` field.


### fn withTimeouts

```ts
withTimeouts()
```

`google.obj.withTimeouts` constructs a mixin object that can be merged into the `obj`
Terraform resource block to set or update the timeouts field.

This function will replace the map with the passed in `value`. If you wish to instead merge the
passed in value to the existing map, use the [google.obj.withTimeoutsMixin](TODO) function.

**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`obj`): The value to set for the `timeouts` field.


### fn withTimeoutsMixin

```ts
withTimeoutsMixin()
```

`google.obj.withTimeoutsMixin` constructs a mixin object that can be merged into the `obj`
Terraform resource block to set or update the timeouts field.

This function will merge the passed in value to the existing map. If you wish
to instead replace the entire map with the passed in `value`, use the [google.obj.withTimeouts](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`obj`): The value to set for the `timeouts` field.


## obj aws



### fn aws.new

```ts
new()
```


`google.bigquery_connection.aws.new` constructs a new object with attributes and blocks configured for the `aws`
Terraform sub block.



**Args**:
  - `access_role` (`list[obj]`): Authentication using Google owned service account to assume into customer&#39;s AWS IAM Role. When `null`, the `access_role` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.bigquery_connection.aws.access_role.new](#fn-bigquery_connectionaccess_rolenew) constructor.

**Returns**:
  - An attribute object that represents the `aws` sub block.


## obj aws.access_role



### fn aws.access_role.new

```ts
new()
```


`google.bigquery_connection.aws.access_role.new` constructs a new object with attributes and blocks configured for the `access_role`
Terraform sub block.



**Args**:
  - `iam_role_id` (`string`): The user’s AWS IAM Role that trusts the Google-owned AWS IAM user Connection.

**Returns**:
  - An attribute object that represents the `access_role` sub block.


## obj azure



### fn azure.new

```ts
new()
```


`google.bigquery_connection.azure.new` constructs a new object with attributes and blocks configured for the `azure`
Terraform sub block.



**Args**:
  - `customer_tenant_id` (`string`): The id of customer&#39;s directory that host the data.

**Returns**:
  - An attribute object that represents the `azure` sub block.


## obj cloud_resource



### fn cloud_resource.new

```ts
new()
```


`google.bigquery_connection.cloud_resource.new` constructs a new object with attributes and blocks configured for the `cloud_resource`
Terraform sub block.



**Returns**:
  - An attribute object that represents the `cloud_resource` sub block.


## obj cloud_spanner



### fn cloud_spanner.new

```ts
new()
```


`google.bigquery_connection.cloud_spanner.new` constructs a new object with attributes and blocks configured for the `cloud_spanner`
Terraform sub block.



**Args**:
  - `database` (`string`): Cloud Spanner database in the form &#39;project/instance/database&#39;
  - `use_parallelism` (`bool`): If parallelism should be used when reading from Cloud Spanner When `null`, the `use_parallelism` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `cloud_spanner` sub block.


## obj cloud_sql



### fn cloud_sql.new

```ts
new()
```


`google.bigquery_connection.cloud_sql.new` constructs a new object with attributes and blocks configured for the `cloud_sql`
Terraform sub block.



**Args**:
  - `database` (`string`): Database name.
  - `instance_id` (`string`): Cloud SQL instance ID in the form project:location:instance.
  - `type` (`string`): Type of the Cloud SQL database. Possible values: [&#34;DATABASE_TYPE_UNSPECIFIED&#34;, &#34;POSTGRES&#34;, &#34;MYSQL&#34;]
  - `credential` (`list[obj]`): Cloud SQL properties. When `null`, the `credential` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.bigquery_connection.cloud_sql.credential.new](#fn-bigquery_connectioncredentialnew) constructor.

**Returns**:
  - An attribute object that represents the `cloud_sql` sub block.


## obj cloud_sql.credential



### fn cloud_sql.credential.new

```ts
new()
```


`google.bigquery_connection.cloud_sql.credential.new` constructs a new object with attributes and blocks configured for the `credential`
Terraform sub block.



**Args**:
  - `password` (`string`): Password for database.
  - `username` (`string`): Username for database.

**Returns**:
  - An attribute object that represents the `credential` sub block.


## obj timeouts



### fn timeouts.new

```ts
new()
```


`google.bigquery_connection.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`
Terraform sub block.



**Args**:
  - `create` (`string`):  When `null`, the `create` field will be omitted from the resulting object.
  - `delete` (`string`):  When `null`, the `delete` field will be omitted from the resulting object.
  - `update` (`string`):  When `null`, the `update` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `timeouts` sub block.
