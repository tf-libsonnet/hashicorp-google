---
permalink: /sql_source_representation_instance/
---

# sql_source_representation_instance

`sql_source_representation_instance` represents the `google_sql_source_representation_instance` Terraform resource.



This package contains functions and utilities for setting up the resource using Jsonnet code.


## Index

* [`fn new()`](#fn-new)
* [`fn newAttrs()`](#fn-newattrs)
* [`fn withCaCertificate()`](#fn-withcacertificate)
* [`fn withClientCertificate()`](#fn-withclientcertificate)
* [`fn withClientKey()`](#fn-withclientkey)
* [`fn withDatabaseVersion()`](#fn-withdatabaseversion)
* [`fn withDumpFilePath()`](#fn-withdumpfilepath)
* [`fn withHost()`](#fn-withhost)
* [`fn withName()`](#fn-withname)
* [`fn withPassword()`](#fn-withpassword)
* [`fn withPort()`](#fn-withport)
* [`fn withProject()`](#fn-withproject)
* [`fn withRegion()`](#fn-withregion)
* [`fn withTimeouts()`](#fn-withtimeouts)
* [`fn withTimeoutsMixin()`](#fn-withtimeoutsmixin)
* [`fn withUsername()`](#fn-withusername)
* [`obj timeouts`](#obj-timeouts)
  * [`fn new()`](#fn-timeoutsnew)

## Fields

### fn new

```ts
new()
```


`google.sql_source_representation_instance.new` injects a new `google_sql_source_representation_instance` Terraform `resource`
block into the root module document.

Additionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the
resource. For example, if you added a new instance to the root using:

    # arguments omitted for brevity
    google.sql_source_representation_instance.new('some_id')

You can get the reference to the `id` field of the created `google.sql_source_representation_instance` using the reference:

    $._ref.google_sql_source_representation_instance.some_id.get('id')

This is the same as directly entering `"${ google_sql_source_representation_instance.some_id.id }"` as the value.

NOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,
or `$` to refer to the root object. Instead, make an explicit outer object using `local`.

**Args**:
  - `resourceLabel` (`string`): The name label of the block.
  - `ca_certificate` (`string`): The CA certificate on the external server. Include only if SSL/TLS is used on the external server. When `null`, the `ca_certificate` field will be omitted from the resulting object.
  - `client_certificate` (`string`): The client certificate on the external server. Required only for server-client authentication. Include only if SSL/TLS is used on the external server. When `null`, the `client_certificate` field will be omitted from the resulting object.
  - `client_key` (`string`): The private key file for the client certificate on the external server. Required only for server-client authentication. Include only if SSL/TLS is used on the external server. When `null`, the `client_key` field will be omitted from the resulting object.
  - `database_version` (`string`): The MySQL version running on your source database server. Possible values: [&#34;MYSQL_5_6&#34;, &#34;MYSQL_5_7&#34;, &#34;MYSQL_8_0&#34;, &#34;POSTGRES_9_6&#34;, &#34;POSTGRES_10&#34;, &#34;POSTGRES_11&#34;, &#34;POSTGRES_12&#34;, &#34;POSTGRES_13&#34;, &#34;POSTGRES_14&#34;]
  - `dump_file_path` (`string`): A file in the bucket that contains the data from the external server. When `null`, the `dump_file_path` field will be omitted from the resulting object.
  - `host` (`string`): The externally accessible IPv4 address for the source database server.
  - `name` (`string`): The name of the source representation instance. Use any valid Cloud SQL instance name.
  - `password` (`string`): The password for the replication user account. When `null`, the `password` field will be omitted from the resulting object.
  - `port` (`number`): The externally accessible port for the source database server.
Defaults to 3306. When `null`, the `port` field will be omitted from the resulting object.
  - `project` (`string`): Set the `project` field on the resulting resource block. When `null`, the `project` field will be omitted from the resulting object.
  - `region` (`string`): The Region in which the created instance should reside.
If it is not provided, the provider region is used. When `null`, the `region` field will be omitted from the resulting object.
  - `username` (`string`): The replication user account on the external server. When `null`, the `username` field will be omitted from the resulting object.
  - `timeouts` (`obj`): Set the `timeouts` field on the resulting resource block. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.sql_source_representation_instance.timeouts.new](#fn-timeoutsnew) constructor.

**Returns**:
- A mixin object that injects the new resource into the root Terraform configuration.


### fn newAttrs

```ts
newAttrs()
```


`google.sql_source_representation_instance.newAttrs` constructs a new object with attributes and blocks configured for the `sql_source_representation_instance`
Terraform resource.

Unlike [google.sql_source_representation_instance.new](#fn-new), this function will not inject the `resource`
block into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the
[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.

This is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to
injecting into a complete block.

**Args**:
  - `ca_certificate` (`string`): The CA certificate on the external server. Include only if SSL/TLS is used on the external server. When `null`, the `ca_certificate` field will be omitted from the resulting object.
  - `client_certificate` (`string`): The client certificate on the external server. Required only for server-client authentication. Include only if SSL/TLS is used on the external server. When `null`, the `client_certificate` field will be omitted from the resulting object.
  - `client_key` (`string`): The private key file for the client certificate on the external server. Required only for server-client authentication. Include only if SSL/TLS is used on the external server. When `null`, the `client_key` field will be omitted from the resulting object.
  - `database_version` (`string`): The MySQL version running on your source database server. Possible values: [&#34;MYSQL_5_6&#34;, &#34;MYSQL_5_7&#34;, &#34;MYSQL_8_0&#34;, &#34;POSTGRES_9_6&#34;, &#34;POSTGRES_10&#34;, &#34;POSTGRES_11&#34;, &#34;POSTGRES_12&#34;, &#34;POSTGRES_13&#34;, &#34;POSTGRES_14&#34;]
  - `dump_file_path` (`string`): A file in the bucket that contains the data from the external server. When `null`, the `dump_file_path` field will be omitted from the resulting object.
  - `host` (`string`): The externally accessible IPv4 address for the source database server.
  - `name` (`string`): The name of the source representation instance. Use any valid Cloud SQL instance name.
  - `password` (`string`): The password for the replication user account. When `null`, the `password` field will be omitted from the resulting object.
  - `port` (`number`): The externally accessible port for the source database server.
Defaults to 3306. When `null`, the `port` field will be omitted from the resulting object.
  - `project` (`string`): Set the `project` field on the resulting object. When `null`, the `project` field will be omitted from the resulting object.
  - `region` (`string`): The Region in which the created instance should reside.
If it is not provided, the provider region is used. When `null`, the `region` field will be omitted from the resulting object.
  - `username` (`string`): The replication user account on the external server. When `null`, the `username` field will be omitted from the resulting object.
  - `timeouts` (`obj`): Set the `timeouts` field on the resulting object. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.sql_source_representation_instance.timeouts.new](#fn-timeoutsnew) constructor.

**Returns**:
  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `sql_source_representation_instance` resource into the root Terraform configuration.


### fn withCaCertificate

```ts
withCaCertificate()
```

`google.string.withCaCertificate` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the ca_certificate field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `ca_certificate` field.


### fn withClientCertificate

```ts
withClientCertificate()
```

`google.string.withClientCertificate` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the client_certificate field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `client_certificate` field.


### fn withClientKey

```ts
withClientKey()
```

`google.string.withClientKey` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the client_key field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `client_key` field.


### fn withDatabaseVersion

```ts
withDatabaseVersion()
```

`google.string.withDatabaseVersion` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the database_version field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `database_version` field.


### fn withDumpFilePath

```ts
withDumpFilePath()
```

`google.string.withDumpFilePath` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the dump_file_path field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `dump_file_path` field.


### fn withHost

```ts
withHost()
```

`google.string.withHost` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the host field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `host` field.


### fn withName

```ts
withName()
```

`google.string.withName` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the name field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `name` field.


### fn withPassword

```ts
withPassword()
```

`google.string.withPassword` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the password field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `password` field.


### fn withPort

```ts
withPort()
```

`google.number.withPort` constructs a mixin object that can be merged into the `number`
Terraform resource block to set or update the port field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`number`): The value to set for the `port` field.


### fn withProject

```ts
withProject()
```

`google.string.withProject` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the project field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `project` field.


### fn withRegion

```ts
withRegion()
```

`google.string.withRegion` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the region field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `region` field.


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


### fn withUsername

```ts
withUsername()
```

`google.string.withUsername` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the username field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `username` field.


## obj timeouts



### fn timeouts.new

```ts
new()
```


`google.sql_source_representation_instance.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`
Terraform sub block.



**Args**:
  - `create` (`string`): Set the `create` field on the resulting object. When `null`, the `create` field will be omitted from the resulting object.
  - `delete` (`string`): Set the `delete` field on the resulting object. When `null`, the `delete` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `timeouts` sub block.
