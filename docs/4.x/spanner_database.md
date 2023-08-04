---
permalink: /spanner_database/
---

# spanner_database

`spanner_database` represents the `google_spanner_database` Terraform resource.



This package contains functions and utilities for setting up the resource using Jsonnet code.


## Index

* [`fn new()`](#fn-new)
* [`fn newAttrs()`](#fn-newattrs)
* [`fn withDatabaseDialect()`](#fn-withdatabasedialect)
* [`fn withDdl()`](#fn-withddl)
* [`fn withDeletionProtection()`](#fn-withdeletionprotection)
* [`fn withEnableDropProtection()`](#fn-withenabledropprotection)
* [`fn withEncryptionConfig()`](#fn-withencryptionconfig)
* [`fn withEncryptionConfigMixin()`](#fn-withencryptionconfigmixin)
* [`fn withInstance()`](#fn-withinstance)
* [`fn withName()`](#fn-withname)
* [`fn withProject()`](#fn-withproject)
* [`fn withTimeouts()`](#fn-withtimeouts)
* [`fn withTimeoutsMixin()`](#fn-withtimeoutsmixin)
* [`fn withVersionRetentionPeriod()`](#fn-withversionretentionperiod)
* [`obj encryption_config`](#obj-encryption_config)
  * [`fn new()`](#fn-encryption_confignew)
* [`obj timeouts`](#obj-timeouts)
  * [`fn new()`](#fn-timeoutsnew)

## Fields

### fn new

```ts
new()
```


`google.spanner_database.new` injects a new `google_spanner_database` Terraform `resource`
block into the root module document.

Additionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the
resource. For example, if you added a new instance to the root using:

    # arguments omitted for brevity
    google.spanner_database.new('some_id')

You can get the reference to the `id` field of the created `google.spanner_database` using the reference:

    $._ref.google_spanner_database.some_id.get('id')

This is the same as directly entering `"${ google_spanner_database.some_id.id }"` as the value.

NOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,
or `$` to refer to the root object. Instead, make an explicit outer object using `local`.

**Args**:
  - `resourceLabel` (`string`): The name label of the block.
  - `database_dialect` (`string`): The dialect of the Cloud Spanner Database.
If it is not provided, &#34;GOOGLE_STANDARD_SQL&#34; will be used. Possible values: [&#34;GOOGLE_STANDARD_SQL&#34;, &#34;POSTGRESQL&#34;] When `null`, the `database_dialect` field will be omitted from the resulting object.
  - `ddl` (`list`): An optional list of DDL statements to run inside the newly created
database. Statements can create tables, indexes, etc. These statements
execute atomically with the creation of the database: if there is an
error in any statement, the database is not created. When `null`, the `ddl` field will be omitted from the resulting object.
  - `deletion_protection` (`bool`): Whether or not to allow Terraform to destroy the database. Defaults to true. Unless this field is set to false
in Terraform state, a &#39;terraform destroy&#39; or &#39;terraform apply&#39; that would delete the database will fail. When `null`, the `deletion_protection` field will be omitted from the resulting object.
  - `enable_drop_protection` (`bool`): Whether drop protection is enabled for this database. Defaults to false.
Drop protection is different from
the &#34;deletion_protection&#34; attribute in the following ways:
(1) &#34;deletion_protection&#34; only protects the database from deletions in Terraform.
whereas setting “enableDropProtection” to true protects the database from deletions in all interfaces.
(2) Setting &#34;enableDropProtection&#34; to true also prevents the deletion of the parent instance containing the database.
&#34;deletion_protection&#34; attribute does not provide protection against the deletion of the parent instance. When `null`, the `enable_drop_protection` field will be omitted from the resulting object.
  - `instance` (`string`): The instance to create the database on.
  - `name` (`string`): A unique identifier for the database, which cannot be changed after
the instance is created. Values are of the form [a-z][-a-z0-9]*[a-z0-9].
  - `project` (`string`): Set the `project` field on the resulting resource block. When `null`, the `project` field will be omitted from the resulting object.
  - `version_retention_period` (`string`): The retention period for the database. The retention period must be between 1 hour
and 7 days, and can be specified in days, hours, minutes, or seconds. For example,
the values 1d, 24h, 1440m, and 86400s are equivalent. Default value is 1h.
If this property is used, you must avoid adding new DDL statements to &#39;ddl&#39; that
update the database&#39;s version_retention_period. When `null`, the `version_retention_period` field will be omitted from the resulting object.
  - `encryption_config` (`list[obj]`): Encryption configuration for the database When `null`, the `encryption_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.spanner_database.encryption_config.new](#fn-encryption_confignew) constructor.
  - `timeouts` (`obj`): Set the `timeouts` field on the resulting resource block. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.spanner_database.timeouts.new](#fn-timeoutsnew) constructor.

**Returns**:
- A mixin object that injects the new resource into the root Terraform configuration.


### fn newAttrs

```ts
newAttrs()
```


`google.spanner_database.newAttrs` constructs a new object with attributes and blocks configured for the `spanner_database`
Terraform resource.

Unlike [google.spanner_database.new](#fn-new), this function will not inject the `resource`
block into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the
[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.

This is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to
injecting into a complete block.

**Args**:
  - `database_dialect` (`string`): The dialect of the Cloud Spanner Database.
If it is not provided, &#34;GOOGLE_STANDARD_SQL&#34; will be used. Possible values: [&#34;GOOGLE_STANDARD_SQL&#34;, &#34;POSTGRESQL&#34;] When `null`, the `database_dialect` field will be omitted from the resulting object.
  - `ddl` (`list`): An optional list of DDL statements to run inside the newly created
database. Statements can create tables, indexes, etc. These statements
execute atomically with the creation of the database: if there is an
error in any statement, the database is not created. When `null`, the `ddl` field will be omitted from the resulting object.
  - `deletion_protection` (`bool`): Whether or not to allow Terraform to destroy the database. Defaults to true. Unless this field is set to false
in Terraform state, a &#39;terraform destroy&#39; or &#39;terraform apply&#39; that would delete the database will fail. When `null`, the `deletion_protection` field will be omitted from the resulting object.
  - `enable_drop_protection` (`bool`): Whether drop protection is enabled for this database. Defaults to false.
Drop protection is different from
the &#34;deletion_protection&#34; attribute in the following ways:
(1) &#34;deletion_protection&#34; only protects the database from deletions in Terraform.
whereas setting “enableDropProtection” to true protects the database from deletions in all interfaces.
(2) Setting &#34;enableDropProtection&#34; to true also prevents the deletion of the parent instance containing the database.
&#34;deletion_protection&#34; attribute does not provide protection against the deletion of the parent instance. When `null`, the `enable_drop_protection` field will be omitted from the resulting object.
  - `instance` (`string`): The instance to create the database on.
  - `name` (`string`): A unique identifier for the database, which cannot be changed after
the instance is created. Values are of the form [a-z][-a-z0-9]*[a-z0-9].
  - `project` (`string`): Set the `project` field on the resulting object. When `null`, the `project` field will be omitted from the resulting object.
  - `version_retention_period` (`string`): The retention period for the database. The retention period must be between 1 hour
and 7 days, and can be specified in days, hours, minutes, or seconds. For example,
the values 1d, 24h, 1440m, and 86400s are equivalent. Default value is 1h.
If this property is used, you must avoid adding new DDL statements to &#39;ddl&#39; that
update the database&#39;s version_retention_period. When `null`, the `version_retention_period` field will be omitted from the resulting object.
  - `encryption_config` (`list[obj]`): Encryption configuration for the database When `null`, the `encryption_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.spanner_database.encryption_config.new](#fn-encryption_confignew) constructor.
  - `timeouts` (`obj`): Set the `timeouts` field on the resulting object. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.spanner_database.timeouts.new](#fn-timeoutsnew) constructor.

**Returns**:
  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `spanner_database` resource into the root Terraform configuration.


### fn withDatabaseDialect

```ts
withDatabaseDialect()
```

`google.string.withDatabaseDialect` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the database_dialect field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `database_dialect` field.


### fn withDdl

```ts
withDdl()
```

`google.list.withDdl` constructs a mixin object that can be merged into the `list`
Terraform resource block to set or update the ddl field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list`): The value to set for the `ddl` field.


### fn withDeletionProtection

```ts
withDeletionProtection()
```

`google.bool.withDeletionProtection` constructs a mixin object that can be merged into the `bool`
Terraform resource block to set or update the deletion_protection field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`bool`): The value to set for the `deletion_protection` field.


### fn withEnableDropProtection

```ts
withEnableDropProtection()
```

`google.bool.withEnableDropProtection` constructs a mixin object that can be merged into the `bool`
Terraform resource block to set or update the enable_drop_protection field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`bool`): The value to set for the `enable_drop_protection` field.


### fn withEncryptionConfig

```ts
withEncryptionConfig()
```

`google.list[obj].withEncryptionConfig` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the encryption_config field.

This function will replace the array with the passed in `value`. If you wish to instead append the
passed in value to the existing array, use the [google.list[obj].withEncryptionConfigMixin](TODO) function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `encryption_config` field.


### fn withEncryptionConfigMixin

```ts
withEncryptionConfigMixin()
```

`google.list[obj].withEncryptionConfigMixin` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the encryption_config field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google.list[obj].withEncryptionConfig](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `encryption_config` field.


### fn withInstance

```ts
withInstance()
```

`google.string.withInstance` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the instance field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `instance` field.


### fn withName

```ts
withName()
```

`google.string.withName` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the name field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `name` field.


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


### fn withVersionRetentionPeriod

```ts
withVersionRetentionPeriod()
```

`google.string.withVersionRetentionPeriod` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the version_retention_period field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `version_retention_period` field.


## obj encryption_config



### fn encryption_config.new

```ts
new()
```


`google.spanner_database.encryption_config.new` constructs a new object with attributes and blocks configured for the `encryption_config`
Terraform sub block.



**Args**:
  - `kms_key_name` (`string`): Fully qualified name of the KMS key to use to encrypt this database. This key must exist
in the same location as the Spanner Database.

**Returns**:
  - An attribute object that represents the `encryption_config` sub block.


## obj timeouts



### fn timeouts.new

```ts
new()
```


`google.spanner_database.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`
Terraform sub block.



**Args**:
  - `create` (`string`): Set the `create` field on the resulting object. When `null`, the `create` field will be omitted from the resulting object.
  - `delete` (`string`): Set the `delete` field on the resulting object. When `null`, the `delete` field will be omitted from the resulting object.
  - `update` (`string`): Set the `update` field on the resulting object. When `null`, the `update` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `timeouts` sub block.
