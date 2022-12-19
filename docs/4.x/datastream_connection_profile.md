---
permalink: /datastream_connection_profile/
---

# datastream_connection_profile

`datastream_connection_profile` represents the `google_datastream_connection_profile` Terraform resource.



This package contains functions and utilities for setting up the resource using Jsonnet code.


## Index

* [`fn new()`](#fn-new)
* [`fn newAttrs()`](#fn-newattrs)
* [`fn withBigqueryProfile()`](#fn-withbigqueryprofile)
* [`fn withBigqueryProfileMixin()`](#fn-withbigqueryprofilemixin)
* [`fn withConnectionProfileId()`](#fn-withconnectionprofileid)
* [`fn withDisplayName()`](#fn-withdisplayname)
* [`fn withForwardSshConnectivity()`](#fn-withforwardsshconnectivity)
* [`fn withForwardSshConnectivityMixin()`](#fn-withforwardsshconnectivitymixin)
* [`fn withGcsProfile()`](#fn-withgcsprofile)
* [`fn withGcsProfileMixin()`](#fn-withgcsprofilemixin)
* [`fn withLabels()`](#fn-withlabels)
* [`fn withLocation()`](#fn-withlocation)
* [`fn withMysqlProfile()`](#fn-withmysqlprofile)
* [`fn withMysqlProfileMixin()`](#fn-withmysqlprofilemixin)
* [`fn withOracleProfile()`](#fn-withoracleprofile)
* [`fn withOracleProfileMixin()`](#fn-withoracleprofilemixin)
* [`fn withPostgresqlProfile()`](#fn-withpostgresqlprofile)
* [`fn withPostgresqlProfileMixin()`](#fn-withpostgresqlprofilemixin)
* [`fn withPrivateConnectivity()`](#fn-withprivateconnectivity)
* [`fn withPrivateConnectivityMixin()`](#fn-withprivateconnectivitymixin)
* [`fn withProject()`](#fn-withproject)
* [`fn withTimeouts()`](#fn-withtimeouts)
* [`fn withTimeoutsMixin()`](#fn-withtimeoutsmixin)
* [`obj bigquery_profile`](#obj-bigquery_profile)
  * [`fn new()`](#fn-bigquery_profilenew)
* [`obj forward_ssh_connectivity`](#obj-forward_ssh_connectivity)
  * [`fn new()`](#fn-forward_ssh_connectivitynew)
* [`obj gcs_profile`](#obj-gcs_profile)
  * [`fn new()`](#fn-gcs_profilenew)
* [`obj mysql_profile`](#obj-mysql_profile)
  * [`fn new()`](#fn-mysql_profilenew)
  * [`obj mysql_profile.ssl_config`](#obj-mysql_profilessl_config)
    * [`fn new()`](#fn-mysql_profilessl_confignew)
* [`obj oracle_profile`](#obj-oracle_profile)
  * [`fn new()`](#fn-oracle_profilenew)
* [`obj postgresql_profile`](#obj-postgresql_profile)
  * [`fn new()`](#fn-postgresql_profilenew)
* [`obj private_connectivity`](#obj-private_connectivity)
  * [`fn new()`](#fn-private_connectivitynew)
* [`obj timeouts`](#obj-timeouts)
  * [`fn new()`](#fn-timeoutsnew)

## Fields

### fn new

```ts
new()
```


`google.datastream_connection_profile.new` injects a new `google_datastream_connection_profile` Terraform `resource`
block into the root module document.

Additionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the
resource. For example, if you added a new instance to the root using:

    # arguments omitted for brevity
    google.datastream_connection_profile.new('some_id')

You can get the reference to the `id` field of the created `google.datastream_connection_profile` using the reference:

    $._ref.google_datastream_connection_profile.some_id.get('id')

This is the same as directly entering `"${ google_datastream_connection_profile.some_id.id }"` as the value.

NOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,
or `$` to refer to the root object. Instead, make an explicit outer object using `local`.

**Args**:
  - `resourceLabel` (`string`): The name label of the block.
  - `connection_profile_id` (`string`): The connection profile identifier.
  - `display_name` (`string`): Display name.
  - `labels` (`obj`): Labels. When `null`, the `labels` field will be omitted from the resulting object.
  - `location` (`string`): The name of the location this repository is located in.
  - `project` (`string`): Set the `project` field on the resulting resource block. When `null`, the `project` field will be omitted from the resulting object.
  - `bigquery_profile` (`list[obj]`): BigQuery warehouse profile. When `null`, the `bigquery_profile` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.datastream_connection_profile.bigquery_profile.new](#fn-bigquery_profilenew) constructor.
  - `forward_ssh_connectivity` (`list[obj]`): Forward SSH tunnel connectivity. When `null`, the `forward_ssh_connectivity` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.datastream_connection_profile.forward_ssh_connectivity.new](#fn-forward_ssh_connectivitynew) constructor.
  - `gcs_profile` (`list[obj]`): Cloud Storage bucket profile. When `null`, the `gcs_profile` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.datastream_connection_profile.gcs_profile.new](#fn-gcs_profilenew) constructor.
  - `mysql_profile` (`list[obj]`): MySQL database profile. When `null`, the `mysql_profile` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.datastream_connection_profile.mysql_profile.new](#fn-mysql_profilenew) constructor.
  - `oracle_profile` (`list[obj]`): Oracle database profile. When `null`, the `oracle_profile` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.datastream_connection_profile.oracle_profile.new](#fn-oracle_profilenew) constructor.
  - `postgresql_profile` (`list[obj]`): PostgreSQL database profile. When `null`, the `postgresql_profile` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.datastream_connection_profile.postgresql_profile.new](#fn-postgresql_profilenew) constructor.
  - `private_connectivity` (`list[obj]`): Private connectivity. When `null`, the `private_connectivity` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.datastream_connection_profile.private_connectivity.new](#fn-private_connectivitynew) constructor.
  - `timeouts` (`obj`): Set the `timeouts` field on the resulting resource block. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.datastream_connection_profile.timeouts.new](#fn-timeoutsnew) constructor.

**Returns**:
- A mixin object that injects the new resource into the root Terraform configuration.


### fn newAttrs

```ts
newAttrs()
```


`google.datastream_connection_profile.newAttrs` constructs a new object with attributes and blocks configured for the `datastream_connection_profile`
Terraform resource.

Unlike [google.datastream_connection_profile.new](#fn-new), this function will not inject the `resource`
block into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the
[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.

This is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to
injecting into a complete block.

**Args**:
  - `connection_profile_id` (`string`): The connection profile identifier.
  - `display_name` (`string`): Display name.
  - `labels` (`obj`): Labels. When `null`, the `labels` field will be omitted from the resulting object.
  - `location` (`string`): The name of the location this repository is located in.
  - `project` (`string`): Set the `project` field on the resulting object. When `null`, the `project` field will be omitted from the resulting object.
  - `bigquery_profile` (`list[obj]`): BigQuery warehouse profile. When `null`, the `bigquery_profile` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.datastream_connection_profile.bigquery_profile.new](#fn-bigquery_profilenew) constructor.
  - `forward_ssh_connectivity` (`list[obj]`): Forward SSH tunnel connectivity. When `null`, the `forward_ssh_connectivity` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.datastream_connection_profile.forward_ssh_connectivity.new](#fn-forward_ssh_connectivitynew) constructor.
  - `gcs_profile` (`list[obj]`): Cloud Storage bucket profile. When `null`, the `gcs_profile` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.datastream_connection_profile.gcs_profile.new](#fn-gcs_profilenew) constructor.
  - `mysql_profile` (`list[obj]`): MySQL database profile. When `null`, the `mysql_profile` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.datastream_connection_profile.mysql_profile.new](#fn-mysql_profilenew) constructor.
  - `oracle_profile` (`list[obj]`): Oracle database profile. When `null`, the `oracle_profile` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.datastream_connection_profile.oracle_profile.new](#fn-oracle_profilenew) constructor.
  - `postgresql_profile` (`list[obj]`): PostgreSQL database profile. When `null`, the `postgresql_profile` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.datastream_connection_profile.postgresql_profile.new](#fn-postgresql_profilenew) constructor.
  - `private_connectivity` (`list[obj]`): Private connectivity. When `null`, the `private_connectivity` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.datastream_connection_profile.private_connectivity.new](#fn-private_connectivitynew) constructor.
  - `timeouts` (`obj`): Set the `timeouts` field on the resulting object. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.datastream_connection_profile.timeouts.new](#fn-timeoutsnew) constructor.

**Returns**:
  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `datastream_connection_profile` resource into the root Terraform configuration.


### fn withBigqueryProfile

```ts
withBigqueryProfile()
```

`google.list[obj].withBigqueryProfile` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the bigquery_profile field.

This function will replace the array with the passed in `value`. If you wish to instead append the
passed in value to the existing array, use the [google.list[obj].withBigqueryProfileMixin](TODO) function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `bigquery_profile` field.


### fn withBigqueryProfileMixin

```ts
withBigqueryProfileMixin()
```

`google.list[obj].withBigqueryProfileMixin` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the bigquery_profile field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google.list[obj].withBigqueryProfile](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `bigquery_profile` field.


### fn withConnectionProfileId

```ts
withConnectionProfileId()
```

`google.string.withConnectionProfileId` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the connection_profile_id field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `connection_profile_id` field.


### fn withDisplayName

```ts
withDisplayName()
```

`google.string.withDisplayName` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the display_name field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `display_name` field.


### fn withForwardSshConnectivity

```ts
withForwardSshConnectivity()
```

`google.list[obj].withForwardSshConnectivity` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the forward_ssh_connectivity field.

This function will replace the array with the passed in `value`. If you wish to instead append the
passed in value to the existing array, use the [google.list[obj].withForwardSshConnectivityMixin](TODO) function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `forward_ssh_connectivity` field.


### fn withForwardSshConnectivityMixin

```ts
withForwardSshConnectivityMixin()
```

`google.list[obj].withForwardSshConnectivityMixin` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the forward_ssh_connectivity field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google.list[obj].withForwardSshConnectivity](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `forward_ssh_connectivity` field.


### fn withGcsProfile

```ts
withGcsProfile()
```

`google.list[obj].withGcsProfile` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the gcs_profile field.

This function will replace the array with the passed in `value`. If you wish to instead append the
passed in value to the existing array, use the [google.list[obj].withGcsProfileMixin](TODO) function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `gcs_profile` field.


### fn withGcsProfileMixin

```ts
withGcsProfileMixin()
```

`google.list[obj].withGcsProfileMixin` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the gcs_profile field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google.list[obj].withGcsProfile](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `gcs_profile` field.


### fn withLabels

```ts
withLabels()
```

`google.obj.withLabels` constructs a mixin object that can be merged into the `obj`
Terraform resource block to set or update the labels field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`obj`): The value to set for the `labels` field.


### fn withLocation

```ts
withLocation()
```

`google.string.withLocation` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the location field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `location` field.


### fn withMysqlProfile

```ts
withMysqlProfile()
```

`google.list[obj].withMysqlProfile` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the mysql_profile field.

This function will replace the array with the passed in `value`. If you wish to instead append the
passed in value to the existing array, use the [google.list[obj].withMysqlProfileMixin](TODO) function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `mysql_profile` field.


### fn withMysqlProfileMixin

```ts
withMysqlProfileMixin()
```

`google.list[obj].withMysqlProfileMixin` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the mysql_profile field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google.list[obj].withMysqlProfile](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `mysql_profile` field.


### fn withOracleProfile

```ts
withOracleProfile()
```

`google.list[obj].withOracleProfile` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the oracle_profile field.

This function will replace the array with the passed in `value`. If you wish to instead append the
passed in value to the existing array, use the [google.list[obj].withOracleProfileMixin](TODO) function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `oracle_profile` field.


### fn withOracleProfileMixin

```ts
withOracleProfileMixin()
```

`google.list[obj].withOracleProfileMixin` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the oracle_profile field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google.list[obj].withOracleProfile](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `oracle_profile` field.


### fn withPostgresqlProfile

```ts
withPostgresqlProfile()
```

`google.list[obj].withPostgresqlProfile` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the postgresql_profile field.

This function will replace the array with the passed in `value`. If you wish to instead append the
passed in value to the existing array, use the [google.list[obj].withPostgresqlProfileMixin](TODO) function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `postgresql_profile` field.


### fn withPostgresqlProfileMixin

```ts
withPostgresqlProfileMixin()
```

`google.list[obj].withPostgresqlProfileMixin` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the postgresql_profile field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google.list[obj].withPostgresqlProfile](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `postgresql_profile` field.


### fn withPrivateConnectivity

```ts
withPrivateConnectivity()
```

`google.list[obj].withPrivateConnectivity` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the private_connectivity field.

This function will replace the array with the passed in `value`. If you wish to instead append the
passed in value to the existing array, use the [google.list[obj].withPrivateConnectivityMixin](TODO) function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `private_connectivity` field.


### fn withPrivateConnectivityMixin

```ts
withPrivateConnectivityMixin()
```

`google.list[obj].withPrivateConnectivityMixin` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the private_connectivity field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google.list[obj].withPrivateConnectivity](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `private_connectivity` field.


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


## obj bigquery_profile



### fn bigquery_profile.new

```ts
new()
```


`google.datastream_connection_profile.bigquery_profile.new` constructs a new object with attributes and blocks configured for the `bigquery_profile`
Terraform sub block.



**Returns**:
  - An attribute object that represents the `bigquery_profile` sub block.


## obj forward_ssh_connectivity



### fn forward_ssh_connectivity.new

```ts
new()
```


`google.datastream_connection_profile.forward_ssh_connectivity.new` constructs a new object with attributes and blocks configured for the `forward_ssh_connectivity`
Terraform sub block.



**Args**:
  - `hostname` (`string`): Hostname for the SSH tunnel.
  - `password` (`string`): SSH password. When `null`, the `password` field will be omitted from the resulting object.
  - `port` (`number`): Port for the SSH tunnel. When `null`, the `port` field will be omitted from the resulting object.
  - `private_key` (`string`): SSH private key. When `null`, the `private_key` field will be omitted from the resulting object.
  - `username` (`string`): Username for the SSH tunnel.

**Returns**:
  - An attribute object that represents the `forward_ssh_connectivity` sub block.


## obj gcs_profile



### fn gcs_profile.new

```ts
new()
```


`google.datastream_connection_profile.gcs_profile.new` constructs a new object with attributes and blocks configured for the `gcs_profile`
Terraform sub block.



**Args**:
  - `bucket` (`string`): The Cloud Storage bucket name.
  - `root_path` (`string`): The root path inside the Cloud Storage bucket. When `null`, the `root_path` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `gcs_profile` sub block.


## obj mysql_profile



### fn mysql_profile.new

```ts
new()
```


`google.datastream_connection_profile.mysql_profile.new` constructs a new object with attributes and blocks configured for the `mysql_profile`
Terraform sub block.



**Args**:
  - `hostname` (`string`): Hostname for the MySQL connection.
  - `password` (`string`): Password for the MySQL connection.
  - `port` (`number`): Port for the MySQL connection. When `null`, the `port` field will be omitted from the resulting object.
  - `username` (`string`): Username for the MySQL connection.
  - `ssl_config` (`list[obj]`): SSL configuration for the MySQL connection. When `null`, the `ssl_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.datastream_connection_profile.mysql_profile.ssl_config.new](#fn-mysql_profilessl_confignew) constructor.

**Returns**:
  - An attribute object that represents the `mysql_profile` sub block.


## obj mysql_profile.ssl_config



### fn mysql_profile.ssl_config.new

```ts
new()
```


`google.datastream_connection_profile.mysql_profile.ssl_config.new` constructs a new object with attributes and blocks configured for the `ssl_config`
Terraform sub block.



**Args**:
  - `ca_certificate` (`string`): PEM-encoded certificate of the CA that signed the source database
server&#39;s certificate. When `null`, the `ca_certificate` field will be omitted from the resulting object.
  - `client_certificate` (`string`): PEM-encoded certificate that will be used by the replica to
authenticate against the source database server. If this field
is used then the &#39;clientKey&#39; and the &#39;caCertificate&#39; fields are
mandatory. When `null`, the `client_certificate` field will be omitted from the resulting object.
  - `client_key` (`string`): PEM-encoded private key associated with the Client Certificate.
If this field is used then the &#39;client_certificate&#39; and the
&#39;ca_certificate&#39; fields are mandatory. When `null`, the `client_key` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `ssl_config` sub block.


## obj oracle_profile



### fn oracle_profile.new

```ts
new()
```


`google.datastream_connection_profile.oracle_profile.new` constructs a new object with attributes and blocks configured for the `oracle_profile`
Terraform sub block.



**Args**:
  - `connection_attributes` (`obj`): Connection string attributes When `null`, the `connection_attributes` field will be omitted from the resulting object.
  - `database_service` (`string`): Database for the Oracle connection.
  - `hostname` (`string`): Hostname for the Oracle connection.
  - `password` (`string`): Password for the Oracle connection.
  - `port` (`number`): Port for the Oracle connection. When `null`, the `port` field will be omitted from the resulting object.
  - `username` (`string`): Username for the Oracle connection.

**Returns**:
  - An attribute object that represents the `oracle_profile` sub block.


## obj postgresql_profile



### fn postgresql_profile.new

```ts
new()
```


`google.datastream_connection_profile.postgresql_profile.new` constructs a new object with attributes and blocks configured for the `postgresql_profile`
Terraform sub block.



**Args**:
  - `database` (`string`): Database for the PostgreSQL connection.
  - `hostname` (`string`): Hostname for the PostgreSQL connection.
  - `password` (`string`): Password for the PostgreSQL connection.
  - `port` (`number`): Port for the PostgreSQL connection. When `null`, the `port` field will be omitted from the resulting object.
  - `username` (`string`): Username for the PostgreSQL connection.

**Returns**:
  - An attribute object that represents the `postgresql_profile` sub block.


## obj private_connectivity



### fn private_connectivity.new

```ts
new()
```


`google.datastream_connection_profile.private_connectivity.new` constructs a new object with attributes and blocks configured for the `private_connectivity`
Terraform sub block.



**Args**:
  - `private_connection` (`string`): A reference to a private connection resource. Format: &#39;projects/{project}/locations/{location}/privateConnections/{name}&#39;

**Returns**:
  - An attribute object that represents the `private_connectivity` sub block.


## obj timeouts



### fn timeouts.new

```ts
new()
```


`google.datastream_connection_profile.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`
Terraform sub block.



**Args**:
  - `create` (`string`): Set the `create` field on the resulting object. When `null`, the `create` field will be omitted from the resulting object.
  - `delete` (`string`): Set the `delete` field on the resulting object. When `null`, the `delete` field will be omitted from the resulting object.
  - `update` (`string`): Set the `update` field on the resulting object. When `null`, the `update` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `timeouts` sub block.
