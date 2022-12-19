---
permalink: /sql_database/
---

# sql_database

`sql_database` represents the `google_sql_database` Terraform resource.



This package contains functions and utilities for setting up the resource using Jsonnet code.


## Index

* [`fn new()`](#fn-new)
* [`fn newAttrs()`](#fn-newattrs)
* [`fn withCharset()`](#fn-withcharset)
* [`fn withCollation()`](#fn-withcollation)
* [`fn withDeletionPolicy()`](#fn-withdeletionpolicy)
* [`fn withInstance()`](#fn-withinstance)
* [`fn withName()`](#fn-withname)
* [`fn withProject()`](#fn-withproject)
* [`fn withTimeouts()`](#fn-withtimeouts)
* [`fn withTimeoutsMixin()`](#fn-withtimeoutsmixin)
* [`obj timeouts`](#obj-timeouts)
  * [`fn new()`](#fn-timeoutsnew)

## Fields

### fn new

```ts
new()
```


`google.sql_database.new` injects a new `google_sql_database` Terraform `resource`
block into the root module document.

Additionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the
resource. For example, if you added a new instance to the root using:

    # arguments omitted for brevity
    google.sql_database.new('some_id')

You can get the reference to the `id` field of the created `google.sql_database` using the reference:

    $._ref.google_sql_database.some_id.get('id')

This is the same as directly entering `"${ google_sql_database.some_id.id }"` as the value.

NOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,
or `$` to refer to the root object. Instead, make an explicit outer object using `local`.

**Args**:
  - `resourceLabel` (`string`): The name label of the block.
  - `charset` (`string`): The charset value. See MySQL&#39;s
[Supported Character Sets and Collations](https://dev.mysql.com/doc/refman/5.7/en/charset-charsets.html)
and Postgres&#39; [Character Set Support](https://www.postgresql.org/docs/9.6/static/multibyte.html)
for more details and supported values. Postgres databases only support
a value of &#39;UTF8&#39; at creation time. When `null`, the `charset` field will be omitted from the resulting object.
  - `collation` (`string`): The collation value. See MySQL&#39;s
[Supported Character Sets and Collations](https://dev.mysql.com/doc/refman/5.7/en/charset-charsets.html)
and Postgres&#39; [Collation Support](https://www.postgresql.org/docs/9.6/static/collation.html)
for more details and supported values. Postgres databases only support
a value of &#39;en_US.UTF8&#39; at creation time. When `null`, the `collation` field will be omitted from the resulting object.
  - `deletion_policy` (`string`): The deletion policy for the database. Setting ABANDON allows the resource 
to be abandoned rather than deleted. This is useful for Postgres, where databases cannot be 
deleted from the API if there are users other than cloudsqlsuperuser with access. Possible 
values are: &#34;ABANDON&#34;. When `null`, the `deletion_policy` field will be omitted from the resulting object.
  - `instance` (`string`): The name of the Cloud SQL instance. This does not include the project
ID.
  - `name` (`string`): The name of the database in the Cloud SQL instance.
This does not include the project ID or instance name.
  - `project` (`string`): Set the `project` field on the resulting resource block. When `null`, the `project` field will be omitted from the resulting object.
  - `timeouts` (`obj`): Set the `timeouts` field on the resulting resource block. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.sql_database.timeouts.new](#fn-timeoutsnew) constructor.

**Returns**:
- A mixin object that injects the new resource into the root Terraform configuration.


### fn newAttrs

```ts
newAttrs()
```


`google.sql_database.newAttrs` constructs a new object with attributes and blocks configured for the `sql_database`
Terraform resource.

Unlike [google.sql_database.new](#fn-new), this function will not inject the `resource`
block into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the
[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.

This is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to
injecting into a complete block.

**Args**:
  - `charset` (`string`): The charset value. See MySQL&#39;s
[Supported Character Sets and Collations](https://dev.mysql.com/doc/refman/5.7/en/charset-charsets.html)
and Postgres&#39; [Character Set Support](https://www.postgresql.org/docs/9.6/static/multibyte.html)
for more details and supported values. Postgres databases only support
a value of &#39;UTF8&#39; at creation time. When `null`, the `charset` field will be omitted from the resulting object.
  - `collation` (`string`): The collation value. See MySQL&#39;s
[Supported Character Sets and Collations](https://dev.mysql.com/doc/refman/5.7/en/charset-charsets.html)
and Postgres&#39; [Collation Support](https://www.postgresql.org/docs/9.6/static/collation.html)
for more details and supported values. Postgres databases only support
a value of &#39;en_US.UTF8&#39; at creation time. When `null`, the `collation` field will be omitted from the resulting object.
  - `deletion_policy` (`string`): The deletion policy for the database. Setting ABANDON allows the resource 
to be abandoned rather than deleted. This is useful for Postgres, where databases cannot be 
deleted from the API if there are users other than cloudsqlsuperuser with access. Possible 
values are: &#34;ABANDON&#34;. When `null`, the `deletion_policy` field will be omitted from the resulting object.
  - `instance` (`string`): The name of the Cloud SQL instance. This does not include the project
ID.
  - `name` (`string`): The name of the database in the Cloud SQL instance.
This does not include the project ID or instance name.
  - `project` (`string`): Set the `project` field on the resulting object. When `null`, the `project` field will be omitted from the resulting object.
  - `timeouts` (`obj`): Set the `timeouts` field on the resulting object. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.sql_database.timeouts.new](#fn-timeoutsnew) constructor.

**Returns**:
  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `sql_database` resource into the root Terraform configuration.


### fn withCharset

```ts
withCharset()
```

`google.string.withCharset` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the charset field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `charset` field.


### fn withCollation

```ts
withCollation()
```

`google.string.withCollation` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the collation field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `collation` field.


### fn withDeletionPolicy

```ts
withDeletionPolicy()
```

`google.string.withDeletionPolicy` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the deletion_policy field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `deletion_policy` field.


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


## obj timeouts



### fn timeouts.new

```ts
new()
```


`google.sql_database.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`
Terraform sub block.



**Args**:
  - `create` (`string`): Set the `create` field on the resulting object. When `null`, the `create` field will be omitted from the resulting object.
  - `delete` (`string`): Set the `delete` field on the resulting object. When `null`, the `delete` field will be omitted from the resulting object.
  - `update` (`string`): Set the `update` field on the resulting object. When `null`, the `update` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `timeouts` sub block.
