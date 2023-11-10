---
permalink: /bigquery_dataset/
---

# bigquery_dataset

`bigquery_dataset` represents the `google_bigquery_dataset` Terraform resource.



This package contains functions and utilities for setting up the resource using Jsonnet code.


## Index

* [`fn new()`](#fn-new)
* [`fn newAttrs()`](#fn-newattrs)
* [`fn withAccess()`](#fn-withaccess)
* [`fn withAccessMixin()`](#fn-withaccessmixin)
* [`fn withDatasetId()`](#fn-withdatasetid)
* [`fn withDefaultCollation()`](#fn-withdefaultcollation)
* [`fn withDefaultEncryptionConfiguration()`](#fn-withdefaultencryptionconfiguration)
* [`fn withDefaultEncryptionConfigurationMixin()`](#fn-withdefaultencryptionconfigurationmixin)
* [`fn withDefaultPartitionExpirationMs()`](#fn-withdefaultpartitionexpirationms)
* [`fn withDefaultTableExpirationMs()`](#fn-withdefaulttableexpirationms)
* [`fn withDeleteContentsOnDestroy()`](#fn-withdeletecontentsondestroy)
* [`fn withDescription()`](#fn-withdescription)
* [`fn withFriendlyName()`](#fn-withfriendlyname)
* [`fn withIsCaseInsensitive()`](#fn-withiscaseinsensitive)
* [`fn withLabels()`](#fn-withlabels)
* [`fn withLocation()`](#fn-withlocation)
* [`fn withMaxTimeTravelHours()`](#fn-withmaxtimetravelhours)
* [`fn withProject()`](#fn-withproject)
* [`fn withStorageBillingModel()`](#fn-withstoragebillingmodel)
* [`fn withTimeouts()`](#fn-withtimeouts)
* [`fn withTimeoutsMixin()`](#fn-withtimeoutsmixin)
* [`obj access`](#obj-access)
  * [`fn new()`](#fn-accessnew)
  * [`obj access.dataset`](#obj-accessdataset)
    * [`fn new()`](#fn-accessdatasetnew)
    * [`obj access.dataset.dataset`](#obj-accessdatasetdataset)
      * [`fn new()`](#fn-accessdatasetdatasetnew)
  * [`obj access.routine`](#obj-accessroutine)
    * [`fn new()`](#fn-accessroutinenew)
  * [`obj access.view`](#obj-accessview)
    * [`fn new()`](#fn-accessviewnew)
* [`obj default_encryption_configuration`](#obj-default_encryption_configuration)
  * [`fn new()`](#fn-default_encryption_configurationnew)
* [`obj timeouts`](#obj-timeouts)
  * [`fn new()`](#fn-timeoutsnew)

## Fields

### fn new

```ts
new()
```


`google.bigquery_dataset.new` injects a new `google_bigquery_dataset` Terraform `resource`
block into the root module document.

Additionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the
resource. For example, if you added a new instance to the root using:

    # arguments omitted for brevity
    google.bigquery_dataset.new('some_id')

You can get the reference to the `id` field of the created `google.bigquery_dataset` using the reference:

    $._ref.google_bigquery_dataset.some_id.get('id')

This is the same as directly entering `"${ google_bigquery_dataset.some_id.id }"` as the value.

NOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,
or `$` to refer to the root object. Instead, make an explicit outer object using `local`.

**Args**:
  - `resourceLabel` (`string`): The name label of the block.
  - `dataset_id` (`string`): A unique ID for this dataset, without the project name. The ID
must contain only letters (a-z, A-Z), numbers (0-9), or
underscores (_). The maximum length is 1,024 characters.
  - `default_collation` (`string`): Defines the default collation specification of future tables created
in the dataset. If a table is created in this dataset without table-level
default collation, then the table inherits the dataset default collation,
which is applied to the string fields that do not have explicit collation
specified. A change to this field affects only tables created afterwards,
and does not alter the existing tables.

The following values are supported:
- &#39;und:ci&#39;: undetermined locale, case insensitive.
- &#39;&#39;: empty string. Default to case-sensitive behavior. When `null`, the `default_collation` field will be omitted from the resulting object.
  - `default_partition_expiration_ms` (`number`): The default partition expiration for all partitioned tables in
the dataset, in milliseconds.


Once this property is set, all newly-created partitioned tables in
the dataset will have an &#39;expirationMs&#39; property in the &#39;timePartitioning&#39;
settings set to this value, and changing the value will only
affect new tables, not existing ones. The storage in a partition will
have an expiration time of its partition time plus this value.
Setting this property overrides the use of &#39;defaultTableExpirationMs&#39;
for partitioned tables: only one of &#39;defaultTableExpirationMs&#39; and
&#39;defaultPartitionExpirationMs&#39; will be used for any new partitioned
table. If you provide an explicit &#39;timePartitioning.expirationMs&#39; when
creating or updating a partitioned table, that value takes precedence
over the default partition expiration time indicated by this property. When `null`, the `default_partition_expiration_ms` field will be omitted from the resulting object.
  - `default_table_expiration_ms` (`number`): The default lifetime of all tables in the dataset, in milliseconds.
The minimum value is 3600000 milliseconds (one hour).


Once this property is set, all newly-created tables in the dataset
will have an &#39;expirationTime&#39; property set to the creation time plus
the value in this property, and changing the value will only affect
new tables, not existing ones. When the &#39;expirationTime&#39; for a given
table is reached, that table will be deleted automatically.
If a table&#39;s &#39;expirationTime&#39; is modified or removed before the
table expires, or if you provide an explicit &#39;expirationTime&#39; when
creating a table, that value takes precedence over the default
expiration time indicated by this property. When `null`, the `default_table_expiration_ms` field will be omitted from the resulting object.
  - `delete_contents_on_destroy` (`bool`): If set to &#39;true&#39;, delete all the tables in the
dataset when destroying the resource; otherwise,
destroying the resource will fail if tables are present. When `null`, the `delete_contents_on_destroy` field will be omitted from the resulting object.
  - `description` (`string`): A user-friendly description of the dataset When `null`, the `description` field will be omitted from the resulting object.
  - `friendly_name` (`string`): A descriptive name for the dataset When `null`, the `friendly_name` field will be omitted from the resulting object.
  - `is_case_insensitive` (`bool`): TRUE if the dataset and its table names are case-insensitive, otherwise FALSE.
By default, this is FALSE, which means the dataset and its table names are
case-sensitive. This field does not affect routine references. When `null`, the `is_case_insensitive` field will be omitted from the resulting object.
  - `labels` (`obj`): The labels associated with this dataset. You can use these to
organize and group your datasets.


**Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
Please refer to the field &#39;effective_labels&#39; for all of the labels present on the resource. When `null`, the `labels` field will be omitted from the resulting object.
  - `location` (`string`): The geographic location where the dataset should reside.
See [official docs](https://cloud.google.com/bigquery/docs/dataset-locations).


There are two types of locations, regional or multi-regional. A regional
location is a specific geographic place, such as Tokyo, and a multi-regional
location is a large geographic area, such as the United States, that
contains at least two geographic places.


The default value is multi-regional location &#39;US&#39;.
Changing this forces a new resource to be created. When `null`, the `location` field will be omitted from the resulting object.
  - `max_time_travel_hours` (`string`): Defines the time travel window in hours. The value can be from 48 to 168 hours (2 to 7 days). When `null`, the `max_time_travel_hours` field will be omitted from the resulting object.
  - `project` (`string`): Set the `project` field on the resulting resource block. When `null`, the `project` field will be omitted from the resulting object.
  - `storage_billing_model` (`string`): Specifies the storage billing model for the dataset.
Set this flag value to LOGICAL to use logical bytes for storage billing,
or to PHYSICAL to use physical bytes instead.

LOGICAL is the default if this flag isn&#39;t specified. When `null`, the `storage_billing_model` field will be omitted from the resulting object.
  - `access` (`list[obj]`): An array of objects that define dataset access for one or more entities. When `null`, the `access` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.bigquery_dataset.access.new](#fn-accessnew) constructor.
  - `default_encryption_configuration` (`list[obj]`): The default encryption key for all tables in the dataset. Once this property is set,
all newly-created partitioned tables in the dataset will have encryption key set to
this value, unless table creation request (or query) overrides the key. When `null`, the `default_encryption_configuration` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.bigquery_dataset.default_encryption_configuration.new](#fn-default_encryption_configurationnew) constructor.
  - `timeouts` (`obj`): Set the `timeouts` field on the resulting resource block. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.bigquery_dataset.timeouts.new](#fn-timeoutsnew) constructor.

**Returns**:
- A mixin object that injects the new resource into the root Terraform configuration.


### fn newAttrs

```ts
newAttrs()
```


`google.bigquery_dataset.newAttrs` constructs a new object with attributes and blocks configured for the `bigquery_dataset`
Terraform resource.

Unlike [google.bigquery_dataset.new](#fn-new), this function will not inject the `resource`
block into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the
[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.

This is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to
injecting into a complete block.

**Args**:
  - `dataset_id` (`string`): A unique ID for this dataset, without the project name. The ID
must contain only letters (a-z, A-Z), numbers (0-9), or
underscores (_). The maximum length is 1,024 characters.
  - `default_collation` (`string`): Defines the default collation specification of future tables created
in the dataset. If a table is created in this dataset without table-level
default collation, then the table inherits the dataset default collation,
which is applied to the string fields that do not have explicit collation
specified. A change to this field affects only tables created afterwards,
and does not alter the existing tables.

The following values are supported:
- &#39;und:ci&#39;: undetermined locale, case insensitive.
- &#39;&#39;: empty string. Default to case-sensitive behavior. When `null`, the `default_collation` field will be omitted from the resulting object.
  - `default_partition_expiration_ms` (`number`): The default partition expiration for all partitioned tables in
the dataset, in milliseconds.


Once this property is set, all newly-created partitioned tables in
the dataset will have an &#39;expirationMs&#39; property in the &#39;timePartitioning&#39;
settings set to this value, and changing the value will only
affect new tables, not existing ones. The storage in a partition will
have an expiration time of its partition time plus this value.
Setting this property overrides the use of &#39;defaultTableExpirationMs&#39;
for partitioned tables: only one of &#39;defaultTableExpirationMs&#39; and
&#39;defaultPartitionExpirationMs&#39; will be used for any new partitioned
table. If you provide an explicit &#39;timePartitioning.expirationMs&#39; when
creating or updating a partitioned table, that value takes precedence
over the default partition expiration time indicated by this property. When `null`, the `default_partition_expiration_ms` field will be omitted from the resulting object.
  - `default_table_expiration_ms` (`number`): The default lifetime of all tables in the dataset, in milliseconds.
The minimum value is 3600000 milliseconds (one hour).


Once this property is set, all newly-created tables in the dataset
will have an &#39;expirationTime&#39; property set to the creation time plus
the value in this property, and changing the value will only affect
new tables, not existing ones. When the &#39;expirationTime&#39; for a given
table is reached, that table will be deleted automatically.
If a table&#39;s &#39;expirationTime&#39; is modified or removed before the
table expires, or if you provide an explicit &#39;expirationTime&#39; when
creating a table, that value takes precedence over the default
expiration time indicated by this property. When `null`, the `default_table_expiration_ms` field will be omitted from the resulting object.
  - `delete_contents_on_destroy` (`bool`): If set to &#39;true&#39;, delete all the tables in the
dataset when destroying the resource; otherwise,
destroying the resource will fail if tables are present. When `null`, the `delete_contents_on_destroy` field will be omitted from the resulting object.
  - `description` (`string`): A user-friendly description of the dataset When `null`, the `description` field will be omitted from the resulting object.
  - `friendly_name` (`string`): A descriptive name for the dataset When `null`, the `friendly_name` field will be omitted from the resulting object.
  - `is_case_insensitive` (`bool`): TRUE if the dataset and its table names are case-insensitive, otherwise FALSE.
By default, this is FALSE, which means the dataset and its table names are
case-sensitive. This field does not affect routine references. When `null`, the `is_case_insensitive` field will be omitted from the resulting object.
  - `labels` (`obj`): The labels associated with this dataset. You can use these to
organize and group your datasets.


**Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
Please refer to the field &#39;effective_labels&#39; for all of the labels present on the resource. When `null`, the `labels` field will be omitted from the resulting object.
  - `location` (`string`): The geographic location where the dataset should reside.
See [official docs](https://cloud.google.com/bigquery/docs/dataset-locations).


There are two types of locations, regional or multi-regional. A regional
location is a specific geographic place, such as Tokyo, and a multi-regional
location is a large geographic area, such as the United States, that
contains at least two geographic places.


The default value is multi-regional location &#39;US&#39;.
Changing this forces a new resource to be created. When `null`, the `location` field will be omitted from the resulting object.
  - `max_time_travel_hours` (`string`): Defines the time travel window in hours. The value can be from 48 to 168 hours (2 to 7 days). When `null`, the `max_time_travel_hours` field will be omitted from the resulting object.
  - `project` (`string`): Set the `project` field on the resulting object. When `null`, the `project` field will be omitted from the resulting object.
  - `storage_billing_model` (`string`): Specifies the storage billing model for the dataset.
Set this flag value to LOGICAL to use logical bytes for storage billing,
or to PHYSICAL to use physical bytes instead.

LOGICAL is the default if this flag isn&#39;t specified. When `null`, the `storage_billing_model` field will be omitted from the resulting object.
  - `access` (`list[obj]`): An array of objects that define dataset access for one or more entities. When `null`, the `access` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.bigquery_dataset.access.new](#fn-accessnew) constructor.
  - `default_encryption_configuration` (`list[obj]`): The default encryption key for all tables in the dataset. Once this property is set,
all newly-created partitioned tables in the dataset will have encryption key set to
this value, unless table creation request (or query) overrides the key. When `null`, the `default_encryption_configuration` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.bigquery_dataset.default_encryption_configuration.new](#fn-default_encryption_configurationnew) constructor.
  - `timeouts` (`obj`): Set the `timeouts` field on the resulting object. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.bigquery_dataset.timeouts.new](#fn-timeoutsnew) constructor.

**Returns**:
  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `bigquery_dataset` resource into the root Terraform configuration.


### fn withAccess

```ts
withAccess()
```

`google.list[obj].withAccess` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the access field.

This function will replace the array with the passed in `value`. If you wish to instead append the
passed in value to the existing array, use the [google.list[obj].withAccessMixin](TODO) function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `access` field.


### fn withAccessMixin

```ts
withAccessMixin()
```

`google.list[obj].withAccessMixin` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the access field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google.list[obj].withAccess](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `access` field.


### fn withDatasetId

```ts
withDatasetId()
```

`google.string.withDatasetId` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the dataset_id field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `dataset_id` field.


### fn withDefaultCollation

```ts
withDefaultCollation()
```

`google.string.withDefaultCollation` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the default_collation field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `default_collation` field.


### fn withDefaultEncryptionConfiguration

```ts
withDefaultEncryptionConfiguration()
```

`google.list[obj].withDefaultEncryptionConfiguration` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the default_encryption_configuration field.

This function will replace the array with the passed in `value`. If you wish to instead append the
passed in value to the existing array, use the [google.list[obj].withDefaultEncryptionConfigurationMixin](TODO) function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `default_encryption_configuration` field.


### fn withDefaultEncryptionConfigurationMixin

```ts
withDefaultEncryptionConfigurationMixin()
```

`google.list[obj].withDefaultEncryptionConfigurationMixin` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the default_encryption_configuration field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google.list[obj].withDefaultEncryptionConfiguration](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `default_encryption_configuration` field.


### fn withDefaultPartitionExpirationMs

```ts
withDefaultPartitionExpirationMs()
```

`google.number.withDefaultPartitionExpirationMs` constructs a mixin object that can be merged into the `number`
Terraform resource block to set or update the default_partition_expiration_ms field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`number`): The value to set for the `default_partition_expiration_ms` field.


### fn withDefaultTableExpirationMs

```ts
withDefaultTableExpirationMs()
```

`google.number.withDefaultTableExpirationMs` constructs a mixin object that can be merged into the `number`
Terraform resource block to set or update the default_table_expiration_ms field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`number`): The value to set for the `default_table_expiration_ms` field.


### fn withDeleteContentsOnDestroy

```ts
withDeleteContentsOnDestroy()
```

`google.bool.withDeleteContentsOnDestroy` constructs a mixin object that can be merged into the `bool`
Terraform resource block to set or update the delete_contents_on_destroy field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`bool`): The value to set for the `delete_contents_on_destroy` field.


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


### fn withIsCaseInsensitive

```ts
withIsCaseInsensitive()
```

`google.bool.withIsCaseInsensitive` constructs a mixin object that can be merged into the `bool`
Terraform resource block to set or update the is_case_insensitive field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`bool`): The value to set for the `is_case_insensitive` field.


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


### fn withMaxTimeTravelHours

```ts
withMaxTimeTravelHours()
```

`google.string.withMaxTimeTravelHours` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the max_time_travel_hours field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `max_time_travel_hours` field.


### fn withProject

```ts
withProject()
```

`google.string.withProject` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the project field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `project` field.


### fn withStorageBillingModel

```ts
withStorageBillingModel()
```

`google.string.withStorageBillingModel` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the storage_billing_model field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `storage_billing_model` field.


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


## obj access



### fn access.new

```ts
new()
```


`google.bigquery_dataset.access.new` constructs a new object with attributes and blocks configured for the `access`
Terraform sub block.



**Args**:
  - `domain` (`string`): A domain to grant access to. Any users signed in with the
domain specified will be granted the specified access When `null`, the `domain` field will be omitted from the resulting object.
  - `group_by_email` (`string`): An email address of a Google Group to grant access to. When `null`, the `group_by_email` field will be omitted from the resulting object.
  - `iam_member` (`string`): Some other type of member that appears in the IAM Policy but isn&#39;t a user,
group, domain, or special group. For example: &#39;allUsers&#39; When `null`, the `iam_member` field will be omitted from the resulting object.
  - `role` (`string`): Describes the rights granted to the user specified by the other
member of the access object. Basic, predefined, and custom roles
are supported. Predefined roles that have equivalent basic roles
are swapped by the API to their basic counterparts. See
[official docs](https://cloud.google.com/bigquery/docs/access-control). When `null`, the `role` field will be omitted from the resulting object.
  - `special_group` (`string`): A special group to grant access to. Possible values include:


* &#39;projectOwners&#39;: Owners of the enclosing project.


* &#39;projectReaders&#39;: Readers of the enclosing project.


* &#39;projectWriters&#39;: Writers of the enclosing project.


* &#39;allAuthenticatedUsers&#39;: All authenticated BigQuery users. When `null`, the `special_group` field will be omitted from the resulting object.
  - `user_by_email` (`string`): An email address of a user to grant access to. For example:
fred@example.com When `null`, the `user_by_email` field will be omitted from the resulting object.
  - `dataset` (`list[obj]`): Grants all resources of particular types in a particular dataset read access to the current dataset. When `null`, the `dataset` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.bigquery_dataset.access.dataset.new](#fn-accessdatasetnew) constructor.
  - `routine` (`list[obj]`): A routine from a different dataset to grant access to. Queries
executed against that routine will have read access to tables in
this dataset. The role field is not required when this field is
set. If that routine is updated by any user, access to the routine
needs to be granted again via an update operation. When `null`, the `routine` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.bigquery_dataset.access.routine.new](#fn-accessroutinenew) constructor.
  - `view` (`list[obj]`): A view from a different dataset to grant access to. Queries
executed against that view will have read access to tables in
this dataset. The role field is not required when this field is
set. If that view is updated by any user, access to the view
needs to be granted again via an update operation. When `null`, the `view` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.bigquery_dataset.access.view.new](#fn-accessviewnew) constructor.

**Returns**:
  - An attribute object that represents the `access` sub block.


## obj access.dataset



### fn access.dataset.new

```ts
new()
```


`google.bigquery_dataset.access.dataset.new` constructs a new object with attributes and blocks configured for the `dataset`
Terraform sub block.



**Args**:
  - `target_types` (`list`): Which resources in the dataset this entry applies to. Currently, only views are supported,
but additional target types may be added in the future. Possible values: VIEWS
  - `dataset` (`list[obj]`): The dataset this entry applies to When `null`, the `dataset` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.bigquery_dataset.access.dataset.dataset.new](#fn-accessaccessdatasetnew) constructor.

**Returns**:
  - An attribute object that represents the `dataset` sub block.


## obj access.dataset.dataset



### fn access.dataset.dataset.new

```ts
new()
```


`google.bigquery_dataset.access.dataset.dataset.new` constructs a new object with attributes and blocks configured for the `dataset`
Terraform sub block.



**Args**:
  - `dataset_id` (`string`): The ID of the dataset containing this table.
  - `project_id` (`string`): The ID of the project containing this table.

**Returns**:
  - An attribute object that represents the `dataset` sub block.


## obj access.routine



### fn access.routine.new

```ts
new()
```


`google.bigquery_dataset.access.routine.new` constructs a new object with attributes and blocks configured for the `routine`
Terraform sub block.



**Args**:
  - `dataset_id` (`string`): The ID of the dataset containing this table.
  - `project_id` (`string`): The ID of the project containing this table.
  - `routine_id` (`string`): The ID of the routine. The ID must contain only letters (a-z,
A-Z), numbers (0-9), or underscores (_). The maximum length
is 256 characters.

**Returns**:
  - An attribute object that represents the `routine` sub block.


## obj access.view



### fn access.view.new

```ts
new()
```


`google.bigquery_dataset.access.view.new` constructs a new object with attributes and blocks configured for the `view`
Terraform sub block.



**Args**:
  - `dataset_id` (`string`): The ID of the dataset containing this table.
  - `project_id` (`string`): The ID of the project containing this table.
  - `table_id` (`string`): The ID of the table. The ID must contain only letters (a-z,
A-Z), numbers (0-9), or underscores (_). The maximum length
is 1,024 characters.

**Returns**:
  - An attribute object that represents the `view` sub block.


## obj default_encryption_configuration



### fn default_encryption_configuration.new

```ts
new()
```


`google.bigquery_dataset.default_encryption_configuration.new` constructs a new object with attributes and blocks configured for the `default_encryption_configuration`
Terraform sub block.



**Args**:
  - `kms_key_name` (`string`): Describes the Cloud KMS encryption key that will be used to protect destination
BigQuery table. The BigQuery Service Account associated with your project requires
access to this encryption key.

**Returns**:
  - An attribute object that represents the `default_encryption_configuration` sub block.


## obj timeouts



### fn timeouts.new

```ts
new()
```


`google.bigquery_dataset.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`
Terraform sub block.



**Args**:
  - `create` (`string`): Set the `create` field on the resulting object. When `null`, the `create` field will be omitted from the resulting object.
  - `delete` (`string`): Set the `delete` field on the resulting object. When `null`, the `delete` field will be omitted from the resulting object.
  - `update` (`string`): Set the `update` field on the resulting object. When `null`, the `update` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `timeouts` sub block.
