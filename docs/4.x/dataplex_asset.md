---
permalink: /dataplex_asset/
---

# dataplex_asset

`dataplex_asset` represents the `google_dataplex_asset` Terraform resource.



This package contains functions and utilities for setting up the resource using Jsonnet code.


## Index

* [`fn new()`](#fn-new)
* [`fn newAttrs()`](#fn-newattrs)
* [`fn withDataplexZone()`](#fn-withdataplexzone)
* [`fn withDescription()`](#fn-withdescription)
* [`fn withDiscoverySpec()`](#fn-withdiscoveryspec)
* [`fn withDiscoverySpecMixin()`](#fn-withdiscoveryspecmixin)
* [`fn withDisplayName()`](#fn-withdisplayname)
* [`fn withLabels()`](#fn-withlabels)
* [`fn withLake()`](#fn-withlake)
* [`fn withLocation()`](#fn-withlocation)
* [`fn withName()`](#fn-withname)
* [`fn withProject()`](#fn-withproject)
* [`fn withResourceSpec()`](#fn-withresourcespec)
* [`fn withResourceSpecMixin()`](#fn-withresourcespecmixin)
* [`fn withTimeouts()`](#fn-withtimeouts)
* [`fn withTimeoutsMixin()`](#fn-withtimeoutsmixin)
* [`obj discovery_spec`](#obj-discovery_spec)
  * [`fn new()`](#fn-discovery_specnew)
  * [`obj discovery_spec.csv_options`](#obj-discovery_speccsv_options)
    * [`fn new()`](#fn-discovery_speccsv_optionsnew)
  * [`obj discovery_spec.json_options`](#obj-discovery_specjson_options)
    * [`fn new()`](#fn-discovery_specjson_optionsnew)
* [`obj resource_spec`](#obj-resource_spec)
  * [`fn new()`](#fn-resource_specnew)
* [`obj timeouts`](#obj-timeouts)
  * [`fn new()`](#fn-timeoutsnew)

## Fields

### fn new

```ts
new()
```


`google.dataplex_asset.new` injects a new `google_dataplex_asset` Terraform `resource`
block into the root module document.

Additionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the
resource. For example, if you added a new instance to the root using:

    # arguments omitted for brevity
    google.dataplex_asset.new('some_id')

You can get the reference to the `id` field of the created `google.dataplex_asset` using the reference:

    $._ref.google_dataplex_asset.some_id.get('id')

This is the same as directly entering `"${ google_dataplex_asset.some_id.id }"` as the value.

NOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,
or `$` to refer to the root object. Instead, make an explicit outer object using `local`.

**Args**:
  - `resourceLabel` (`string`): The name label of the block.
  - `dataplex_zone` (`string`): The zone for the resource
  - `description` (`string`): Optional. Description of the asset. When `null`, the `description` field will be omitted from the resulting object.
  - `display_name` (`string`): Optional. User friendly display name. When `null`, the `display_name` field will be omitted from the resulting object.
  - `labels` (`obj`): Optional. User defined labels for the asset.

**Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
Please refer to the field `effective_labels` for all of the labels present on the resource. When `null`, the `labels` field will be omitted from the resulting object.
  - `lake` (`string`): The lake for the resource
  - `location` (`string`): The location for the resource
  - `name` (`string`): The name of the asset.
  - `project` (`string`): The project for the resource When `null`, the `project` field will be omitted from the resulting object.
  - `discovery_spec` (`list[obj]`): Required. Specification of the discovery feature applied to data referenced by this asset. When this spec is left unset, the asset will use the spec set on the parent zone. When `null`, the `discovery_spec` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dataplex_asset.discovery_spec.new](#fn-discovery_specnew) constructor.
  - `resource_spec` (`list[obj]`): Required. Immutable. Specification of the resource that is referenced by this asset. When `null`, the `resource_spec` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dataplex_asset.resource_spec.new](#fn-resource_specnew) constructor.
  - `timeouts` (`obj`): Set the `timeouts` field on the resulting resource block. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dataplex_asset.timeouts.new](#fn-timeoutsnew) constructor.

**Returns**:
- A mixin object that injects the new resource into the root Terraform configuration.


### fn newAttrs

```ts
newAttrs()
```


`google.dataplex_asset.newAttrs` constructs a new object with attributes and blocks configured for the `dataplex_asset`
Terraform resource.

Unlike [google.dataplex_asset.new](#fn-new), this function will not inject the `resource`
block into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the
[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.

This is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to
injecting into a complete block.

**Args**:
  - `dataplex_zone` (`string`): The zone for the resource
  - `description` (`string`): Optional. Description of the asset. When `null`, the `description` field will be omitted from the resulting object.
  - `display_name` (`string`): Optional. User friendly display name. When `null`, the `display_name` field will be omitted from the resulting object.
  - `labels` (`obj`): Optional. User defined labels for the asset.

**Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
Please refer to the field `effective_labels` for all of the labels present on the resource. When `null`, the `labels` field will be omitted from the resulting object.
  - `lake` (`string`): The lake for the resource
  - `location` (`string`): The location for the resource
  - `name` (`string`): The name of the asset.
  - `project` (`string`): The project for the resource When `null`, the `project` field will be omitted from the resulting object.
  - `discovery_spec` (`list[obj]`): Required. Specification of the discovery feature applied to data referenced by this asset. When this spec is left unset, the asset will use the spec set on the parent zone. When `null`, the `discovery_spec` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dataplex_asset.discovery_spec.new](#fn-discovery_specnew) constructor.
  - `resource_spec` (`list[obj]`): Required. Immutable. Specification of the resource that is referenced by this asset. When `null`, the `resource_spec` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dataplex_asset.resource_spec.new](#fn-resource_specnew) constructor.
  - `timeouts` (`obj`): Set the `timeouts` field on the resulting object. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dataplex_asset.timeouts.new](#fn-timeoutsnew) constructor.

**Returns**:
  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `dataplex_asset` resource into the root Terraform configuration.


### fn withDataplexZone

```ts
withDataplexZone()
```

`google.string.withDataplexZone` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the dataplex_zone field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `dataplex_zone` field.


### fn withDescription

```ts
withDescription()
```

`google.string.withDescription` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the description field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `description` field.


### fn withDiscoverySpec

```ts
withDiscoverySpec()
```

`google.list[obj].withDiscoverySpec` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the discovery_spec field.

This function will replace the array with the passed in `value`. If you wish to instead append the
passed in value to the existing array, use the [google.list[obj].withDiscoverySpecMixin](TODO) function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `discovery_spec` field.


### fn withDiscoverySpecMixin

```ts
withDiscoverySpecMixin()
```

`google.list[obj].withDiscoverySpecMixin` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the discovery_spec field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google.list[obj].withDiscoverySpec](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `discovery_spec` field.


### fn withDisplayName

```ts
withDisplayName()
```

`google.string.withDisplayName` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the display_name field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `display_name` field.


### fn withLabels

```ts
withLabels()
```

`google.obj.withLabels` constructs a mixin object that can be merged into the `obj`
Terraform resource block to set or update the labels field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`obj`): The value to set for the `labels` field.


### fn withLake

```ts
withLake()
```

`google.string.withLake` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the lake field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `lake` field.


### fn withLocation

```ts
withLocation()
```

`google.string.withLocation` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the location field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `location` field.


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


### fn withResourceSpec

```ts
withResourceSpec()
```

`google.list[obj].withResourceSpec` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the resource_spec field.

This function will replace the array with the passed in `value`. If you wish to instead append the
passed in value to the existing array, use the [google.list[obj].withResourceSpecMixin](TODO) function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `resource_spec` field.


### fn withResourceSpecMixin

```ts
withResourceSpecMixin()
```

`google.list[obj].withResourceSpecMixin` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the resource_spec field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google.list[obj].withResourceSpec](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `resource_spec` field.


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


## obj discovery_spec



### fn discovery_spec.new

```ts
new()
```


`google.dataplex_asset.discovery_spec.new` constructs a new object with attributes and blocks configured for the `discovery_spec`
Terraform sub block.



**Args**:
  - `enabled` (`bool`): Required. Whether discovery is enabled.
  - `exclude_patterns` (`list`): Optional. The list of patterns to apply for selecting data to exclude during discovery. For Cloud Storage bucket assets, these are interpreted as glob patterns used to match object names. For BigQuery dataset assets, these are interpreted as patterns to match table names. When `null`, the `exclude_patterns` field will be omitted from the resulting object.
  - `include_patterns` (`list`): Optional. The list of patterns to apply for selecting data to include during discovery if only a subset of the data should considered. For Cloud Storage bucket assets, these are interpreted as glob patterns used to match object names. For BigQuery dataset assets, these are interpreted as patterns to match table names. When `null`, the `include_patterns` field will be omitted from the resulting object.
  - `schedule` (`string`): Optional. Cron schedule (https://en.wikipedia.org/wiki/Cron) for running discovery periodically. Successive discovery runs must be scheduled at least 60 minutes apart. The default value is to run discovery every 60 minutes. To explicitly set a timezone to the cron tab, apply a prefix in the cron tab: &#34;CRON_TZ=${IANA_TIME_ZONE}&#34; or TZ=${IANA_TIME_ZONE}&#34;. The ${IANA_TIME_ZONE} may only be a valid string from IANA time zone database. For example, &#34;CRON_TZ=America/New_York 1 * * * *&#34;, or &#34;TZ=America/New_York 1 * * * *&#34;. When `null`, the `schedule` field will be omitted from the resulting object.
  - `csv_options` (`list[obj]`): Optional. Configuration for CSV data. When `null`, the `csv_options` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dataplex_asset.discovery_spec.csv_options.new](#fn-discovery_speccsv_optionsnew) constructor.
  - `json_options` (`list[obj]`): Optional. Configuration for Json data. When `null`, the `json_options` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dataplex_asset.discovery_spec.json_options.new](#fn-discovery_specjson_optionsnew) constructor.

**Returns**:
  - An attribute object that represents the `discovery_spec` sub block.


## obj discovery_spec.csv_options



### fn discovery_spec.csv_options.new

```ts
new()
```


`google.dataplex_asset.discovery_spec.csv_options.new` constructs a new object with attributes and blocks configured for the `csv_options`
Terraform sub block.



**Args**:
  - `delimiter` (`string`): Optional. The delimiter being used to separate values. This defaults to &#39;,&#39;. When `null`, the `delimiter` field will be omitted from the resulting object.
  - `disable_type_inference` (`bool`): Optional. Whether to disable the inference of data type for CSV data. If true, all columns will be registered as strings. When `null`, the `disable_type_inference` field will be omitted from the resulting object.
  - `encoding` (`string`): Optional. The character encoding of the data. The default is UTF-8. When `null`, the `encoding` field will be omitted from the resulting object.
  - `header_rows` (`number`): Optional. The number of rows to interpret as header rows that should be skipped when reading data rows. When `null`, the `header_rows` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `csv_options` sub block.


## obj discovery_spec.json_options



### fn discovery_spec.json_options.new

```ts
new()
```


`google.dataplex_asset.discovery_spec.json_options.new` constructs a new object with attributes and blocks configured for the `json_options`
Terraform sub block.



**Args**:
  - `disable_type_inference` (`bool`): Optional. Whether to disable the inference of data type for Json data. If true, all columns will be registered as their primitive types (strings, number or boolean). When `null`, the `disable_type_inference` field will be omitted from the resulting object.
  - `encoding` (`string`): Optional. The character encoding of the data. The default is UTF-8. When `null`, the `encoding` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `json_options` sub block.


## obj resource_spec



### fn resource_spec.new

```ts
new()
```


`google.dataplex_asset.resource_spec.new` constructs a new object with attributes and blocks configured for the `resource_spec`
Terraform sub block.



**Args**:
  - `name` (`string`): Immutable. Relative name of the cloud resource that contains the data that is being managed within a lake. For example: `projects/{project_number}/buckets/{bucket_id}` `projects/{project_number}/datasets/{dataset_id}` When `null`, the `name` field will be omitted from the resulting object.
  - `read_access_mode` (`string`): Optional. Determines how read permissions are handled for each asset and their associated tables. Only available to storage buckets assets. Possible values: DIRECT, MANAGED When `null`, the `read_access_mode` field will be omitted from the resulting object.
  - `type` (`string`): Required. Immutable. Type of resource. Possible values: STORAGE_BUCKET, BIGQUERY_DATASET

**Returns**:
  - An attribute object that represents the `resource_spec` sub block.


## obj timeouts



### fn timeouts.new

```ts
new()
```


`google.dataplex_asset.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`
Terraform sub block.



**Args**:
  - `create` (`string`): Set the `create` field on the resulting object. When `null`, the `create` field will be omitted from the resulting object.
  - `delete` (`string`): Set the `delete` field on the resulting object. When `null`, the `delete` field will be omitted from the resulting object.
  - `update` (`string`): Set the `update` field on the resulting object. When `null`, the `update` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `timeouts` sub block.
