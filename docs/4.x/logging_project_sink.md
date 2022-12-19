---
permalink: /logging_project_sink/
---

# logging_project_sink

`logging_project_sink` represents the `google_logging_project_sink` Terraform resource.



This package contains functions and utilities for setting up the resource using Jsonnet code.


## Index

* [`fn new()`](#fn-new)
* [`fn newAttrs()`](#fn-newattrs)
* [`fn withBigqueryOptions()`](#fn-withbigqueryoptions)
* [`fn withBigqueryOptionsMixin()`](#fn-withbigqueryoptionsmixin)
* [`fn withDescription()`](#fn-withdescription)
* [`fn withDestination()`](#fn-withdestination)
* [`fn withDisabled()`](#fn-withdisabled)
* [`fn withExclusions()`](#fn-withexclusions)
* [`fn withExclusionsMixin()`](#fn-withexclusionsmixin)
* [`fn withFilter()`](#fn-withfilter)
* [`fn withName()`](#fn-withname)
* [`fn withProject()`](#fn-withproject)
* [`fn withUniqueWriterIdentity()`](#fn-withuniquewriteridentity)
* [`obj bigquery_options`](#obj-bigquery_options)
  * [`fn new()`](#fn-bigquery_optionsnew)
* [`obj exclusions`](#obj-exclusions)
  * [`fn new()`](#fn-exclusionsnew)

## Fields

### fn new

```ts
new()
```


`google.logging_project_sink.new` injects a new `google_logging_project_sink` Terraform `resource`
block into the root module document.

Additionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the
resource. For example, if you added a new instance to the root using:

    # arguments omitted for brevity
    google.logging_project_sink.new('some_id')

You can get the reference to the `id` field of the created `google.logging_project_sink` using the reference:

    $._ref.google_logging_project_sink.some_id.get('id')

This is the same as directly entering `"${ google_logging_project_sink.some_id.id }"` as the value.

NOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,
or `$` to refer to the root object. Instead, make an explicit outer object using `local`.

**Args**:
  - `resourceLabel` (`string`): The name label of the block.
  - `description` (`string`): A description of this sink. The maximum length of the description is 8000 characters. When `null`, the `description` field will be omitted from the resulting object.
  - `destination` (`string`): The destination of the sink (or, in other words, where logs are written to). Can be a Cloud Storage bucket, a PubSub topic, or a BigQuery dataset. Examples: &#34;storage.googleapis.com/[GCS_BUCKET]&#34; &#34;bigquery.googleapis.com/projects/[PROJECT_ID]/datasets/[DATASET]&#34; &#34;pubsub.googleapis.com/projects/[PROJECT_ID]/topics/[TOPIC_ID]&#34; The writer associated with the sink must have access to write to the above resource.
  - `disabled` (`bool`): If set to True, then this sink is disabled and it does not export any log entries. When `null`, the `disabled` field will be omitted from the resulting object.
  - `filter` (`string`): The filter to apply when exporting logs. Only log entries that match the filter are exported. When `null`, the `filter` field will be omitted from the resulting object.
  - `name` (`string`): The name of the logging sink.
  - `project` (`string`): The ID of the project to create the sink in. If omitted, the project associated with the provider is used. When `null`, the `project` field will be omitted from the resulting object.
  - `unique_writer_identity` (`bool`): Whether or not to create a unique identity associated with this sink. If false (the default), then the writer_identity used is serviceAccount:cloud-logs@system.gserviceaccount.com. If true, then a unique service account is created and used for this sink. If you wish to publish logs across projects, you must set unique_writer_identity to true. When `null`, the `unique_writer_identity` field will be omitted from the resulting object.
  - `bigquery_options` (`list[obj]`): Options that affect sinks exporting data to BigQuery. When `null`, the `bigquery_options` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.logging_project_sink.bigquery_options.new](#fn-loggingprojectsinkbigqueryoptionsnew) constructor.
  - `exclusions` (`list[obj]`): Log entries that match any of the exclusion filters will not be exported. If a log entry is matched by both filter and one of exclusion&#39;s filters, it will not be exported. When `null`, the `exclusions` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.logging_project_sink.exclusions.new](#fn-loggingprojectsinkexclusionsnew) constructor.

**Returns**:
- A mixin object that injects the new resource into the root Terraform configuration.


### fn newAttrs

```ts
newAttrs()
```


`google.logging_project_sink.newAttrs` constructs a new object with attributes and blocks configured for the `logging_project_sink`
Terraform resource.

Unlike [google.logging_project_sink.new](#fn-loggingprojectsinknew), this function will not inject the `resource`
block into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the
[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.

This is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to
injecting into a complete block.

**Args**:
  - `description` (`string`): A description of this sink. The maximum length of the description is 8000 characters. When `null`, the `description` field will be omitted from the resulting object.
  - `destination` (`string`): The destination of the sink (or, in other words, where logs are written to). Can be a Cloud Storage bucket, a PubSub topic, or a BigQuery dataset. Examples: &#34;storage.googleapis.com/[GCS_BUCKET]&#34; &#34;bigquery.googleapis.com/projects/[PROJECT_ID]/datasets/[DATASET]&#34; &#34;pubsub.googleapis.com/projects/[PROJECT_ID]/topics/[TOPIC_ID]&#34; The writer associated with the sink must have access to write to the above resource.
  - `disabled` (`bool`): If set to True, then this sink is disabled and it does not export any log entries. When `null`, the `disabled` field will be omitted from the resulting object.
  - `filter` (`string`): The filter to apply when exporting logs. Only log entries that match the filter are exported. When `null`, the `filter` field will be omitted from the resulting object.
  - `name` (`string`): The name of the logging sink.
  - `project` (`string`): The ID of the project to create the sink in. If omitted, the project associated with the provider is used. When `null`, the `project` field will be omitted from the resulting object.
  - `unique_writer_identity` (`bool`): Whether or not to create a unique identity associated with this sink. If false (the default), then the writer_identity used is serviceAccount:cloud-logs@system.gserviceaccount.com. If true, then a unique service account is created and used for this sink. If you wish to publish logs across projects, you must set unique_writer_identity to true. When `null`, the `unique_writer_identity` field will be omitted from the resulting object.
  - `bigquery_options` (`list[obj]`): Options that affect sinks exporting data to BigQuery. When `null`, the `bigquery_options` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.logging_project_sink.bigquery_options.new](#fn-loggingprojectsinkbigqueryoptionsnew) constructor.
  - `exclusions` (`list[obj]`): Log entries that match any of the exclusion filters will not be exported. If a log entry is matched by both filter and one of exclusion&#39;s filters, it will not be exported. When `null`, the `exclusions` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.logging_project_sink.exclusions.new](#fn-loggingprojectsinkexclusionsnew) constructor.

**Returns**:
  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `logging_project_sink` resource into the root Terraform configuration.


### fn withBigqueryOptions

```ts
withBigqueryOptions()
```

`google.logging_project_sink.withBigqueryOptions` constructs a mixin object that can be merged into the `logging_project_sink`
Terraform resource block to set or update the bigquery_options field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`TODO`): The value to set for the `bigquery_options` field.


### fn withBigqueryOptionsMixin

```ts
withBigqueryOptionsMixin()
```

`google.logging_project_sink.withBigqueryOptionsMixin` constructs a mixin object that can be merged into the `logging_project_sink`
Terraform resource block to set or update the bigquery_options field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google.logging_project_sink.withBigqueryOptions](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`TODO`): The value to set for the `bigquery_options` field.


### fn withDescription

```ts
withDescription()
```

`google.logging_project_sink.withDescription` constructs a mixin object that can be merged into the `logging_project_sink`
Terraform resource block to set or update the description field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`TODO`): The value to set for the `description` field.


### fn withDestination

```ts
withDestination()
```

`google.logging_project_sink.withDestination` constructs a mixin object that can be merged into the `logging_project_sink`
Terraform resource block to set or update the destination field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`TODO`): The value to set for the `destination` field.


### fn withDisabled

```ts
withDisabled()
```

`google.logging_project_sink.withDisabled` constructs a mixin object that can be merged into the `logging_project_sink`
Terraform resource block to set or update the disabled field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`TODO`): The value to set for the `disabled` field.


### fn withExclusions

```ts
withExclusions()
```

`google.logging_project_sink.withExclusions` constructs a mixin object that can be merged into the `logging_project_sink`
Terraform resource block to set or update the exclusions field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`TODO`): The value to set for the `exclusions` field.


### fn withExclusionsMixin

```ts
withExclusionsMixin()
```

`google.logging_project_sink.withExclusionsMixin` constructs a mixin object that can be merged into the `logging_project_sink`
Terraform resource block to set or update the exclusions field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google.logging_project_sink.withExclusions](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`TODO`): The value to set for the `exclusions` field.


### fn withFilter

```ts
withFilter()
```

`google.logging_project_sink.withFilter` constructs a mixin object that can be merged into the `logging_project_sink`
Terraform resource block to set or update the filter field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`TODO`): The value to set for the `filter` field.


### fn withName

```ts
withName()
```

`google.logging_project_sink.withName` constructs a mixin object that can be merged into the `logging_project_sink`
Terraform resource block to set or update the name field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`TODO`): The value to set for the `name` field.


### fn withProject

```ts
withProject()
```

`google.logging_project_sink.withProject` constructs a mixin object that can be merged into the `logging_project_sink`
Terraform resource block to set or update the project field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`TODO`): The value to set for the `project` field.


### fn withUniqueWriterIdentity

```ts
withUniqueWriterIdentity()
```

`google.logging_project_sink.withUniqueWriterIdentity` constructs a mixin object that can be merged into the `logging_project_sink`
Terraform resource block to set or update the unique_writer_identity field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`TODO`): The value to set for the `unique_writer_identity` field.


## obj bigquery_options



### fn bigquery_options.new

```ts
new()
```


`google.logging_project_sink.bigquery_options.new` constructs a new object with attributes and blocks configured for the `bigquery_options`
Terraform sub block.



**Args**:
  - `use_partitioned_tables` (`bool`): Whether to use BigQuery&#39;s partition tables. By default, Logging creates dated tables based on the log entries&#39; timestamps, e.g. syslog_20170523. With partitioned tables the date suffix is no longer present and special query syntax has to be used instead. In both cases, tables are sharded based on UTC timezone.

**Returns**:
  - An attribute object that represents the `bigquery_options` sub block.


## obj exclusions



### fn exclusions.new

```ts
new()
```


`google.logging_project_sink.exclusions.new` constructs a new object with attributes and blocks configured for the `exclusions`
Terraform sub block.



**Args**:
  - `description` (`string`): A description of this exclusion. When `null`, the `description` field will be omitted from the resulting object.
  - `disabled` (`bool`): If set to True, then this exclusion is disabled and it does not exclude any log entries When `null`, the `disabled` field will be omitted from the resulting object.
  - `filter` (`string`): An advanced logs filter that matches the log entries to be excluded. By using the sample function, you can exclude less than 100% of the matching log entries
  - `name` (`string`): A client-assigned identifier, such as &#34;load-balancer-exclusion&#34;. Identifiers are limited to 100 characters and can include only letters, digits, underscores, hyphens, and periods. First character has to be alphanumeric.

**Returns**:
  - An attribute object that represents the `exclusions` sub block.
