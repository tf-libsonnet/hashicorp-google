---
permalink: /healthcare_fhir_store/
---

# healthcare_fhir_store

`healthcare_fhir_store` represents the `google_healthcare_fhir_store` Terraform resource.



This package contains functions and utilities for setting up the resource using Jsonnet code.


## Index

* [`fn new()`](#fn-new)
* [`fn newAttrs()`](#fn-newattrs)
* [`fn withComplexDataTypeReferenceParsing()`](#fn-withcomplexdatatypereferenceparsing)
* [`fn withDataset()`](#fn-withdataset)
* [`fn withDisableReferentialIntegrity()`](#fn-withdisablereferentialintegrity)
* [`fn withDisableResourceVersioning()`](#fn-withdisableresourceversioning)
* [`fn withEnableHistoryImport()`](#fn-withenablehistoryimport)
* [`fn withEnableUpdateCreate()`](#fn-withenableupdatecreate)
* [`fn withLabels()`](#fn-withlabels)
* [`fn withName()`](#fn-withname)
* [`fn withNotificationConfig()`](#fn-withnotificationconfig)
* [`fn withNotificationConfigMixin()`](#fn-withnotificationconfigmixin)
* [`fn withStreamConfigs()`](#fn-withstreamconfigs)
* [`fn withStreamConfigsMixin()`](#fn-withstreamconfigsmixin)
* [`fn withTimeouts()`](#fn-withtimeouts)
* [`fn withTimeoutsMixin()`](#fn-withtimeoutsmixin)
* [`fn withVersion()`](#fn-withversion)
* [`obj notification_config`](#obj-notification_config)
  * [`fn new()`](#fn-notification_confignew)
* [`obj stream_configs`](#obj-stream_configs)
  * [`fn new()`](#fn-stream_configsnew)
  * [`obj stream_configs.bigquery_destination`](#obj-stream_configsbigquery_destination)
    * [`fn new()`](#fn-stream_configsbigquery_destinationnew)
    * [`obj stream_configs.bigquery_destination.schema_config`](#obj-stream_configsbigquery_destinationschema_config)
      * [`fn new()`](#fn-stream_configsbigquery_destinationschema_confignew)
* [`obj timeouts`](#obj-timeouts)
  * [`fn new()`](#fn-timeoutsnew)

## Fields

### fn new

```ts
new()
```


`google.healthcare_fhir_store.new` injects a new `google_healthcare_fhir_store` Terraform `resource`
block into the root module document.

Additionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the
resource. For example, if you added a new instance to the root using:

    # arguments omitted for brevity
    google.healthcare_fhir_store.new('some_id')

You can get the reference to the `id` field of the created `google.healthcare_fhir_store` using the reference:

    $._ref.google_healthcare_fhir_store.some_id.get('id')

This is the same as directly entering `"${ google_healthcare_fhir_store.some_id.id }"` as the value.

NOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,
or `$` to refer to the root object. Instead, make an explicit outer object using `local`.

**Args**:
  - `resourceLabel` (`string`): The name label of the block.
  - `complex_data_type_reference_parsing` (`string`): Enable parsing of references within complex FHIR data types such as Extensions. If this value is set to ENABLED, then features like referential integrity and Bundle reference rewriting apply to all references. If this flag has not been specified the behavior of the FHIR store will not change, references in complex data types will not be parsed. New stores will have this value set to ENABLED by default after a notification period. Warning: turning on this flag causes processing existing resources to fail if they contain references to non-existent resources. Possible values: [&#34;COMPLEX_DATA_TYPE_REFERENCE_PARSING_UNSPECIFIED&#34;, &#34;DISABLED&#34;, &#34;ENABLED&#34;] When `null`, the `complex_data_type_reference_parsing` field will be omitted from the resulting object.
  - `dataset` (`string`): Identifies the dataset addressed by this request. Must be in the format
&#39;projects/{project}/locations/{location}/datasets/{dataset}&#39;
  - `disable_referential_integrity` (`bool`): Whether to disable referential integrity in this FHIR store. This field is immutable after FHIR store
creation. The default value is false, meaning that the API will enforce referential integrity and fail the
requests that will result in inconsistent state in the FHIR store. When this field is set to true, the API
will skip referential integrity check. Consequently, operations that rely on references, such as
Patient.get$everything, will not return all the results if broken references exist.

** Changing this property may recreate the FHIR store (removing all data) ** When `null`, the `disable_referential_integrity` field will be omitted from the resulting object.
  - `disable_resource_versioning` (`bool`): Whether to disable resource versioning for this FHIR store. This field can not be changed after the creation
of FHIR store. If set to false, which is the default behavior, all write operations will cause historical
versions to be recorded automatically. The historical versions can be fetched through the history APIs, but
cannot be updated. If set to true, no historical versions will be kept. The server will send back errors for
attempts to read the historical versions.

** Changing this property may recreate the FHIR store (removing all data) ** When `null`, the `disable_resource_versioning` field will be omitted from the resulting object.
  - `enable_history_import` (`bool`): Whether to allow the bulk import API to accept history bundles and directly insert historical resource
versions into the FHIR store. Importing resource histories creates resource interactions that appear to have
occurred in the past, which clients may not want to allow. If set to false, history bundles within an import
will fail with an error.

** Changing this property may recreate the FHIR store (removing all data) **

** This property can be changed manually in the Google Cloud Healthcare admin console without recreating the FHIR store ** When `null`, the `enable_history_import` field will be omitted from the resulting object.
  - `enable_update_create` (`bool`): Whether this FHIR store has the updateCreate capability. This determines if the client can use an Update
operation to create a new resource with a client-specified ID. If false, all IDs are server-assigned through
the Create operation and attempts to Update a non-existent resource will return errors. Please treat the audit
logs with appropriate levels of care if client-specified resource IDs contain sensitive data such as patient
identifiers, those IDs will be part of the FHIR resource path recorded in Cloud audit logs and Cloud Pub/Sub
notifications. When `null`, the `enable_update_create` field will be omitted from the resulting object.
  - `labels` (`obj`): User-supplied key-value pairs used to organize FHIR stores.

Label keys must be between 1 and 63 characters long, have a UTF-8 encoding of maximum 128 bytes, and must
conform to the following PCRE regular expression: [\p{Ll}\p{Lo}][\p{Ll}\p{Lo}\p{N}_-]{0,62}

Label values are optional, must be between 1 and 63 characters long, have a UTF-8 encoding of maximum 128
bytes, and must conform to the following PCRE regular expression: [\p{Ll}\p{Lo}\p{N}_-]{0,63}

No more than 64 labels can be associated with a given store.

An object containing a list of &#34;key&#34;: value pairs.
Example: { &#34;name&#34;: &#34;wrench&#34;, &#34;mass&#34;: &#34;1.3kg&#34;, &#34;count&#34;: &#34;3&#34; }. When `null`, the `labels` field will be omitted from the resulting object.
  - `name` (`string`): The resource name for the FhirStore.

** Changing this property may recreate the FHIR store (removing all data) **
  - `version` (`string`): The FHIR specification version. Possible values: [&#34;DSTU2&#34;, &#34;STU3&#34;, &#34;R4&#34;]
  - `notification_config` (`list[obj]`): A nested object resource When `null`, the `notification_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.healthcare_fhir_store.notification_config.new](#fn-notification_confignew) constructor.
  - `stream_configs` (`list[obj]`): A list of streaming configs that configure the destinations of streaming export for every resource mutation in
this FHIR store. Each store is allowed to have up to 10 streaming configs. After a new config is added, the next
resource mutation is streamed to the new location in addition to the existing ones. When a location is removed
from the list, the server stops streaming to that location. Before adding a new config, you must add the required
bigquery.dataEditor role to your project&#39;s Cloud Healthcare Service Agent service account. Some lag (typically on
the order of dozens of seconds) is expected before the results show up in the streaming destination. When `null`, the `stream_configs` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.healthcare_fhir_store.stream_configs.new](#fn-stream_configsnew) constructor.
  - `timeouts` (`obj`): Set the `timeouts` field on the resulting resource block. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.healthcare_fhir_store.timeouts.new](#fn-timeoutsnew) constructor.

**Returns**:
- A mixin object that injects the new resource into the root Terraform configuration.


### fn newAttrs

```ts
newAttrs()
```


`google.healthcare_fhir_store.newAttrs` constructs a new object with attributes and blocks configured for the `healthcare_fhir_store`
Terraform resource.

Unlike [google.healthcare_fhir_store.new](#fn-new), this function will not inject the `resource`
block into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the
[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.

This is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to
injecting into a complete block.

**Args**:
  - `complex_data_type_reference_parsing` (`string`): Enable parsing of references within complex FHIR data types such as Extensions. If this value is set to ENABLED, then features like referential integrity and Bundle reference rewriting apply to all references. If this flag has not been specified the behavior of the FHIR store will not change, references in complex data types will not be parsed. New stores will have this value set to ENABLED by default after a notification period. Warning: turning on this flag causes processing existing resources to fail if they contain references to non-existent resources. Possible values: [&#34;COMPLEX_DATA_TYPE_REFERENCE_PARSING_UNSPECIFIED&#34;, &#34;DISABLED&#34;, &#34;ENABLED&#34;] When `null`, the `complex_data_type_reference_parsing` field will be omitted from the resulting object.
  - `dataset` (`string`): Identifies the dataset addressed by this request. Must be in the format
&#39;projects/{project}/locations/{location}/datasets/{dataset}&#39;
  - `disable_referential_integrity` (`bool`): Whether to disable referential integrity in this FHIR store. This field is immutable after FHIR store
creation. The default value is false, meaning that the API will enforce referential integrity and fail the
requests that will result in inconsistent state in the FHIR store. When this field is set to true, the API
will skip referential integrity check. Consequently, operations that rely on references, such as
Patient.get$everything, will not return all the results if broken references exist.

** Changing this property may recreate the FHIR store (removing all data) ** When `null`, the `disable_referential_integrity` field will be omitted from the resulting object.
  - `disable_resource_versioning` (`bool`): Whether to disable resource versioning for this FHIR store. This field can not be changed after the creation
of FHIR store. If set to false, which is the default behavior, all write operations will cause historical
versions to be recorded automatically. The historical versions can be fetched through the history APIs, but
cannot be updated. If set to true, no historical versions will be kept. The server will send back errors for
attempts to read the historical versions.

** Changing this property may recreate the FHIR store (removing all data) ** When `null`, the `disable_resource_versioning` field will be omitted from the resulting object.
  - `enable_history_import` (`bool`): Whether to allow the bulk import API to accept history bundles and directly insert historical resource
versions into the FHIR store. Importing resource histories creates resource interactions that appear to have
occurred in the past, which clients may not want to allow. If set to false, history bundles within an import
will fail with an error.

** Changing this property may recreate the FHIR store (removing all data) **

** This property can be changed manually in the Google Cloud Healthcare admin console without recreating the FHIR store ** When `null`, the `enable_history_import` field will be omitted from the resulting object.
  - `enable_update_create` (`bool`): Whether this FHIR store has the updateCreate capability. This determines if the client can use an Update
operation to create a new resource with a client-specified ID. If false, all IDs are server-assigned through
the Create operation and attempts to Update a non-existent resource will return errors. Please treat the audit
logs with appropriate levels of care if client-specified resource IDs contain sensitive data such as patient
identifiers, those IDs will be part of the FHIR resource path recorded in Cloud audit logs and Cloud Pub/Sub
notifications. When `null`, the `enable_update_create` field will be omitted from the resulting object.
  - `labels` (`obj`): User-supplied key-value pairs used to organize FHIR stores.

Label keys must be between 1 and 63 characters long, have a UTF-8 encoding of maximum 128 bytes, and must
conform to the following PCRE regular expression: [\p{Ll}\p{Lo}][\p{Ll}\p{Lo}\p{N}_-]{0,62}

Label values are optional, must be between 1 and 63 characters long, have a UTF-8 encoding of maximum 128
bytes, and must conform to the following PCRE regular expression: [\p{Ll}\p{Lo}\p{N}_-]{0,63}

No more than 64 labels can be associated with a given store.

An object containing a list of &#34;key&#34;: value pairs.
Example: { &#34;name&#34;: &#34;wrench&#34;, &#34;mass&#34;: &#34;1.3kg&#34;, &#34;count&#34;: &#34;3&#34; }. When `null`, the `labels` field will be omitted from the resulting object.
  - `name` (`string`): The resource name for the FhirStore.

** Changing this property may recreate the FHIR store (removing all data) **
  - `version` (`string`): The FHIR specification version. Possible values: [&#34;DSTU2&#34;, &#34;STU3&#34;, &#34;R4&#34;]
  - `notification_config` (`list[obj]`): A nested object resource When `null`, the `notification_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.healthcare_fhir_store.notification_config.new](#fn-notification_confignew) constructor.
  - `stream_configs` (`list[obj]`): A list of streaming configs that configure the destinations of streaming export for every resource mutation in
this FHIR store. Each store is allowed to have up to 10 streaming configs. After a new config is added, the next
resource mutation is streamed to the new location in addition to the existing ones. When a location is removed
from the list, the server stops streaming to that location. Before adding a new config, you must add the required
bigquery.dataEditor role to your project&#39;s Cloud Healthcare Service Agent service account. Some lag (typically on
the order of dozens of seconds) is expected before the results show up in the streaming destination. When `null`, the `stream_configs` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.healthcare_fhir_store.stream_configs.new](#fn-stream_configsnew) constructor.
  - `timeouts` (`obj`): Set the `timeouts` field on the resulting object. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.healthcare_fhir_store.timeouts.new](#fn-timeoutsnew) constructor.

**Returns**:
  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `healthcare_fhir_store` resource into the root Terraform configuration.


### fn withComplexDataTypeReferenceParsing

```ts
withComplexDataTypeReferenceParsing()
```

`google.string.withComplexDataTypeReferenceParsing` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the complex_data_type_reference_parsing field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `complex_data_type_reference_parsing` field.


### fn withDataset

```ts
withDataset()
```

`google.string.withDataset` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the dataset field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `dataset` field.


### fn withDisableReferentialIntegrity

```ts
withDisableReferentialIntegrity()
```

`google.bool.withDisableReferentialIntegrity` constructs a mixin object that can be merged into the `bool`
Terraform resource block to set or update the disable_referential_integrity field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`bool`): The value to set for the `disable_referential_integrity` field.


### fn withDisableResourceVersioning

```ts
withDisableResourceVersioning()
```

`google.bool.withDisableResourceVersioning` constructs a mixin object that can be merged into the `bool`
Terraform resource block to set or update the disable_resource_versioning field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`bool`): The value to set for the `disable_resource_versioning` field.


### fn withEnableHistoryImport

```ts
withEnableHistoryImport()
```

`google.bool.withEnableHistoryImport` constructs a mixin object that can be merged into the `bool`
Terraform resource block to set or update the enable_history_import field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`bool`): The value to set for the `enable_history_import` field.


### fn withEnableUpdateCreate

```ts
withEnableUpdateCreate()
```

`google.bool.withEnableUpdateCreate` constructs a mixin object that can be merged into the `bool`
Terraform resource block to set or update the enable_update_create field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`bool`): The value to set for the `enable_update_create` field.


### fn withLabels

```ts
withLabels()
```

`google.obj.withLabels` constructs a mixin object that can be merged into the `obj`
Terraform resource block to set or update the labels field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`obj`): The value to set for the `labels` field.


### fn withName

```ts
withName()
```

`google.string.withName` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the name field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `name` field.


### fn withNotificationConfig

```ts
withNotificationConfig()
```

`google.list[obj].withNotificationConfig` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the notification_config field.

This function will replace the array with the passed in `value`. If you wish to instead append the
passed in value to the existing array, use the [google.list[obj].withNotificationConfigMixin](TODO) function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `notification_config` field.


### fn withNotificationConfigMixin

```ts
withNotificationConfigMixin()
```

`google.list[obj].withNotificationConfigMixin` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the notification_config field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google.list[obj].withNotificationConfig](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `notification_config` field.


### fn withStreamConfigs

```ts
withStreamConfigs()
```

`google.list[obj].withStreamConfigs` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the stream_configs field.

This function will replace the array with the passed in `value`. If you wish to instead append the
passed in value to the existing array, use the [google.list[obj].withStreamConfigsMixin](TODO) function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `stream_configs` field.


### fn withStreamConfigsMixin

```ts
withStreamConfigsMixin()
```

`google.list[obj].withStreamConfigsMixin` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the stream_configs field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google.list[obj].withStreamConfigs](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `stream_configs` field.


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


### fn withVersion

```ts
withVersion()
```

`google.string.withVersion` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the version field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `version` field.


## obj notification_config



### fn notification_config.new

```ts
new()
```


`google.healthcare_fhir_store.notification_config.new` constructs a new object with attributes and blocks configured for the `notification_config`
Terraform sub block.



**Args**:
  - `pubsub_topic` (`string`): The Cloud Pub/Sub topic that notifications of changes are published on. Supplied by the client.
PubsubMessage.Data will contain the resource name. PubsubMessage.MessageId is the ID of this message.
It is guaranteed to be unique within the topic. PubsubMessage.PublishTime is the time at which the message
was published. Notifications are only sent if the topic is non-empty. Topic names must be scoped to a
project. service-PROJECT_NUMBER@gcp-sa-healthcare.iam.gserviceaccount.com must have publisher permissions on the given
Cloud Pub/Sub topic. Not having adequate permissions will cause the calls that send notifications to fail.

**Returns**:
  - An attribute object that represents the `notification_config` sub block.


## obj stream_configs



### fn stream_configs.new

```ts
new()
```


`google.healthcare_fhir_store.stream_configs.new` constructs a new object with attributes and blocks configured for the `stream_configs`
Terraform sub block.



**Args**:
  - `resource_types` (`list`): Supply a FHIR resource type (such as &#34;Patient&#34; or &#34;Observation&#34;). See
https://www.hl7.org/fhir/valueset-resource-types.html for a list of all FHIR resource types. The server treats
an empty list as an intent to stream all the supported resource types in this FHIR store. When `null`, the `resource_types` field will be omitted from the resulting object.
  - `bigquery_destination` (`list[obj]`): The destination BigQuery structure that contains both the dataset location and corresponding schema config.
The output is organized in one table per resource type. The server reuses the existing tables (if any) that
are named after the resource types, e.g. &#34;Patient&#34;, &#34;Observation&#34;. When there is no existing table for a given
resource type, the server attempts to create one.
See the [streaming config reference](https://cloud.google.com/healthcare/docs/reference/rest/v1beta1/projects.locations.datasets.fhirStores#streamconfig) for more details. When `null`, the `bigquery_destination` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.healthcare_fhir_store.stream_configs.bigquery_destination.new](#fn-stream_configsbigquery_destinationnew) constructor.

**Returns**:
  - An attribute object that represents the `stream_configs` sub block.


## obj stream_configs.bigquery_destination



### fn stream_configs.bigquery_destination.new

```ts
new()
```


`google.healthcare_fhir_store.stream_configs.bigquery_destination.new` constructs a new object with attributes and blocks configured for the `bigquery_destination`
Terraform sub block.



**Args**:
  - `dataset_uri` (`string`): BigQuery URI to a dataset, up to 2000 characters long, in the format bq://projectId.bqDatasetId
  - `schema_config` (`list[obj]`): The configuration for the exported BigQuery schema. When `null`, the `schema_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.healthcare_fhir_store.stream_configs.bigquery_destination.schema_config.new](#fn-stream_configsstream_configsschema_confignew) constructor.

**Returns**:
  - An attribute object that represents the `bigquery_destination` sub block.


## obj stream_configs.bigquery_destination.schema_config



### fn stream_configs.bigquery_destination.schema_config.new

```ts
new()
```


`google.healthcare_fhir_store.stream_configs.bigquery_destination.schema_config.new` constructs a new object with attributes and blocks configured for the `schema_config`
Terraform sub block.



**Args**:
  - `recursive_structure_depth` (`number`): The depth for all recursive structures in the output analytics schema. For example, concept in the CodeSystem
resource is a recursive structure; when the depth is 2, the CodeSystem table will have a column called
concept.concept but not concept.concept.concept. If not specified or set to 0, the server will use the default
value 2. The maximum depth allowed is 5.
  - `schema_type` (`string`): Specifies the output schema type.
 * ANALYTICS: Analytics schema defined by the FHIR community.
  See https://github.com/FHIR/sql-on-fhir/blob/master/sql-on-fhir.md.
 * ANALYTICS_V2: Analytics V2, similar to schema defined by the FHIR community, with added support for extensions with one or more occurrences and contained resources in stringified JSON.
 * LOSSLESS: A data-driven schema generated from the fields present in the FHIR data being exported, with no additional simplification. Default value: &#34;ANALYTICS&#34; Possible values: [&#34;ANALYTICS&#34;, &#34;ANALYTICS_V2&#34;, &#34;LOSSLESS&#34;] When `null`, the `schema_type` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `schema_config` sub block.


## obj timeouts



### fn timeouts.new

```ts
new()
```


`google.healthcare_fhir_store.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`
Terraform sub block.



**Args**:
  - `create` (`string`): Set the `create` field on the resulting object. When `null`, the `create` field will be omitted from the resulting object.
  - `delete` (`string`): Set the `delete` field on the resulting object. When `null`, the `delete` field will be omitted from the resulting object.
  - `update` (`string`): Set the `update` field on the resulting object. When `null`, the `update` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `timeouts` sub block.
