---
permalink: /data_catalog_entry/
---

# data_catalog_entry

`data_catalog_entry` represents the `google_data_catalog_entry` Terraform resource.



This package contains functions and utilities for setting up the resource using Jsonnet code.


## Index

* [`fn new()`](#fn-new)
* [`fn newAttrs()`](#fn-newattrs)
* [`fn withDescription()`](#fn-withdescription)
* [`fn withDisplayName()`](#fn-withdisplayname)
* [`fn withEntryGroup()`](#fn-withentrygroup)
* [`fn withEntryId()`](#fn-withentryid)
* [`fn withGcsFilesetSpec()`](#fn-withgcsfilesetspec)
* [`fn withGcsFilesetSpecMixin()`](#fn-withgcsfilesetspecmixin)
* [`fn withLinkedResource()`](#fn-withlinkedresource)
* [`fn withSchema()`](#fn-withschema)
* [`fn withTimeouts()`](#fn-withtimeouts)
* [`fn withTimeoutsMixin()`](#fn-withtimeoutsmixin)
* [`fn withType()`](#fn-withtype)
* [`fn withUserSpecifiedSystem()`](#fn-withuserspecifiedsystem)
* [`fn withUserSpecifiedType()`](#fn-withuserspecifiedtype)
* [`obj gcs_fileset_spec`](#obj-gcs_fileset_spec)
  * [`fn new()`](#fn-gcs_fileset_specnew)
* [`obj timeouts`](#obj-timeouts)
  * [`fn new()`](#fn-timeoutsnew)

## Fields

### fn new

```ts
new()
```


`google.data_catalog_entry.new` injects a new `google_data_catalog_entry` Terraform `resource`
block into the root module document.

Additionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the
resource. For example, if you added a new instance to the root using:

    # arguments omitted for brevity
    google.data_catalog_entry.new('some_id')

You can get the reference to the `id` field of the created `google.data_catalog_entry` using the reference:

    $._ref.google_data_catalog_entry.some_id.get('id')

This is the same as directly entering `"${ google_data_catalog_entry.some_id.id }"` as the value.

NOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,
or `$` to refer to the root object. Instead, make an explicit outer object using `local`.

**Args**:
  - `resourceLabel` (`string`): The name label of the block.
  - `description` (`string`): Entry description, which can consist of several sentences or paragraphs that describe entry contents. When `null`, the `description` field will be omitted from the resulting object.
  - `display_name` (`string`): Display information such as title and description. A short name to identify the entry,
for example, &#34;Analytics Data - Jan 2011&#34;. When `null`, the `display_name` field will be omitted from the resulting object.
  - `entry_group` (`string`): The name of the entry group this entry is in.
  - `entry_id` (`string`): The id of the entry to create.
  - `linked_resource` (`string`): The resource this metadata entry refers to.
For Google Cloud Platform resources, linkedResource is the full name of the resource.
For example, the linkedResource for a table resource from BigQuery is:
//bigquery.googleapis.com/projects/projectId/datasets/datasetId/tables/tableId
Output only when Entry is of type in the EntryType enum. For entries with userSpecifiedType,
this field is optional and defaults to an empty string. When `null`, the `linked_resource` field will be omitted from the resulting object.
  - `schema` (`string`): Schema of the entry (e.g. BigQuery, GoogleSQL, Avro schema), as a json string. An entry might not have any schema
attached to it. See
https://cloud.google.com/data-catalog/docs/reference/rest/v1/projects.locations.entryGroups.entries#schema
for what fields this schema can contain. When `null`, the `schema` field will be omitted from the resulting object.
  - `type` (`string`): The type of the entry. Only used for Entries with types in the EntryType enum.
Currently, only FILESET enum value is allowed. All other entries created through Data Catalog must use userSpecifiedType. Possible values: [&#34;FILESET&#34;] When `null`, the `type` field will be omitted from the resulting object.
  - `user_specified_system` (`string`): This field indicates the entry&#39;s source system that Data Catalog does not integrate with.
userSpecifiedSystem strings must begin with a letter or underscore and can only contain letters, numbers,
and underscores; are case insensitive; must be at least 1 character and at most 64 characters long. When `null`, the `user_specified_system` field will be omitted from the resulting object.
  - `user_specified_type` (`string`): Entry type if it does not fit any of the input-allowed values listed in EntryType enum above.
When creating an entry, users should check the enum values first, if nothing matches the entry
to be created, then provide a custom value, for example &#34;my_special_type&#34;.
userSpecifiedType strings must begin with a letter or underscore and can only contain letters,
numbers, and underscores; are case insensitive; must be at least 1 character and at most 64 characters long. When `null`, the `user_specified_type` field will be omitted from the resulting object.
  - `gcs_fileset_spec` (`list[obj]`): Specification that applies to a Cloud Storage fileset. This is only valid on entries of type FILESET. When `null`, the `gcs_fileset_spec` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.data_catalog_entry.gcs_fileset_spec.new](#fn-data_catalog_entrygcs_fileset_specnew) constructor.
  - `timeouts` (`obj`):  When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.data_catalog_entry.timeouts.new](#fn-data_catalog_entrytimeoutsnew) constructor.

**Returns**:
- A mixin object that injects the new resource into the root Terraform configuration.


### fn newAttrs

```ts
newAttrs()
```


`google.data_catalog_entry.newAttrs` constructs a new object with attributes and blocks configured for the `data_catalog_entry`
Terraform resource.

Unlike [google.data_catalog_entry.new](#fn-data_catalog_entrynew), this function will not inject the `resource`
block into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the
[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.

This is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to
injecting into a complete block.

**Args**:
  - `description` (`string`): Entry description, which can consist of several sentences or paragraphs that describe entry contents. When `null`, the `description` field will be omitted from the resulting object.
  - `display_name` (`string`): Display information such as title and description. A short name to identify the entry,
for example, &#34;Analytics Data - Jan 2011&#34;. When `null`, the `display_name` field will be omitted from the resulting object.
  - `entry_group` (`string`): The name of the entry group this entry is in.
  - `entry_id` (`string`): The id of the entry to create.
  - `linked_resource` (`string`): The resource this metadata entry refers to.
For Google Cloud Platform resources, linkedResource is the full name of the resource.
For example, the linkedResource for a table resource from BigQuery is:
//bigquery.googleapis.com/projects/projectId/datasets/datasetId/tables/tableId
Output only when Entry is of type in the EntryType enum. For entries with userSpecifiedType,
this field is optional and defaults to an empty string. When `null`, the `linked_resource` field will be omitted from the resulting object.
  - `schema` (`string`): Schema of the entry (e.g. BigQuery, GoogleSQL, Avro schema), as a json string. An entry might not have any schema
attached to it. See
https://cloud.google.com/data-catalog/docs/reference/rest/v1/projects.locations.entryGroups.entries#schema
for what fields this schema can contain. When `null`, the `schema` field will be omitted from the resulting object.
  - `type` (`string`): The type of the entry. Only used for Entries with types in the EntryType enum.
Currently, only FILESET enum value is allowed. All other entries created through Data Catalog must use userSpecifiedType. Possible values: [&#34;FILESET&#34;] When `null`, the `type` field will be omitted from the resulting object.
  - `user_specified_system` (`string`): This field indicates the entry&#39;s source system that Data Catalog does not integrate with.
userSpecifiedSystem strings must begin with a letter or underscore and can only contain letters, numbers,
and underscores; are case insensitive; must be at least 1 character and at most 64 characters long. When `null`, the `user_specified_system` field will be omitted from the resulting object.
  - `user_specified_type` (`string`): Entry type if it does not fit any of the input-allowed values listed in EntryType enum above.
When creating an entry, users should check the enum values first, if nothing matches the entry
to be created, then provide a custom value, for example &#34;my_special_type&#34;.
userSpecifiedType strings must begin with a letter or underscore and can only contain letters,
numbers, and underscores; are case insensitive; must be at least 1 character and at most 64 characters long. When `null`, the `user_specified_type` field will be omitted from the resulting object.
  - `gcs_fileset_spec` (`list[obj]`): Specification that applies to a Cloud Storage fileset. This is only valid on entries of type FILESET. When `null`, the `gcs_fileset_spec` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.data_catalog_entry.gcs_fileset_spec.new](#fn-data_catalog_entrygcs_fileset_specnew) constructor.
  - `timeouts` (`obj`):  When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.data_catalog_entry.timeouts.new](#fn-data_catalog_entrytimeoutsnew) constructor.

**Returns**:
  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `data_catalog_entry` resource into the root Terraform configuration.


### fn withDescription

```ts
withDescription()
```

`google.string.withDescription` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the description field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `description` field.


### fn withDisplayName

```ts
withDisplayName()
```

`google.string.withDisplayName` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the display_name field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `display_name` field.


### fn withEntryGroup

```ts
withEntryGroup()
```

`google.string.withEntryGroup` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the entry_group field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `entry_group` field.


### fn withEntryId

```ts
withEntryId()
```

`google.string.withEntryId` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the entry_id field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `entry_id` field.


### fn withGcsFilesetSpec

```ts
withGcsFilesetSpec()
```

`google.list[obj].withGcsFilesetSpec` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the gcs_fileset_spec field.

This function will replace the array with the passed in `value`. If you wish to instead append the
passed in value to the existing array, use the [google.list[obj].withGcsFilesetSpecMixin](TODO) function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `gcs_fileset_spec` field.


### fn withGcsFilesetSpecMixin

```ts
withGcsFilesetSpecMixin()
```

`google.list[obj].withGcsFilesetSpecMixin` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the gcs_fileset_spec field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google.list[obj].withGcsFilesetSpec](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `gcs_fileset_spec` field.


### fn withLinkedResource

```ts
withLinkedResource()
```

`google.string.withLinkedResource` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the linked_resource field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `linked_resource` field.


### fn withSchema

```ts
withSchema()
```

`google.string.withSchema` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the schema field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `schema` field.


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


### fn withType

```ts
withType()
```

`google.string.withType` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the type field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `type` field.


### fn withUserSpecifiedSystem

```ts
withUserSpecifiedSystem()
```

`google.string.withUserSpecifiedSystem` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the user_specified_system field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `user_specified_system` field.


### fn withUserSpecifiedType

```ts
withUserSpecifiedType()
```

`google.string.withUserSpecifiedType` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the user_specified_type field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `user_specified_type` field.


## obj gcs_fileset_spec



### fn gcs_fileset_spec.new

```ts
new()
```


`google.data_catalog_entry.gcs_fileset_spec.new` constructs a new object with attributes and blocks configured for the `gcs_fileset_spec`
Terraform sub block.



**Args**:
  - `file_patterns` (`list`): Patterns to identify a set of files in Google Cloud Storage.
See [Cloud Storage documentation](https://cloud.google.com/storage/docs/gsutil/addlhelp/WildcardNames)
for more information. Note that bucket wildcards are currently not supported. Examples of valid filePatterns:

* gs://bucket_name/dir/*: matches all files within bucket_name/dir directory.
* gs://bucket_name/dir/**: matches all files in bucket_name/dir spanning all subdirectories.
* gs://bucket_name/file*: matches files prefixed by file in bucket_name
* gs://bucket_name/??.txt: matches files with two characters followed by .txt in bucket_name
* gs://bucket_name/[aeiou].txt: matches files that contain a single vowel character followed by .txt in bucket_name
* gs://bucket_name/[a-m].txt: matches files that contain a, b, ... or m followed by .txt in bucket_name
* gs://bucket_name/a/*/b: matches all files in bucket_name that match a/*/b pattern, such as a/c/b, a/d/b
* gs://another_bucket/a.txt: matches gs://another_bucket/a.txt

**Returns**:
  - An attribute object that represents the `gcs_fileset_spec` sub block.


## obj timeouts



### fn timeouts.new

```ts
new()
```


`google.data_catalog_entry.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`
Terraform sub block.



**Args**:
  - `create` (`string`):  When `null`, the `create` field will be omitted from the resulting object.
  - `delete` (`string`):  When `null`, the `delete` field will be omitted from the resulting object.
  - `update` (`string`):  When `null`, the `update` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `timeouts` sub block.
