---
permalink: /bigquery_routine/
---

# bigquery_routine

`bigquery_routine` represents the `google_bigquery_routine` Terraform resource.



This package contains functions and utilities for setting up the resource using Jsonnet code.


## Index

* [`fn new()`](#fn-new)
* [`fn newAttrs()`](#fn-newattrs)
* [`fn withArguments()`](#fn-witharguments)
* [`fn withArgumentsMixin()`](#fn-withargumentsmixin)
* [`fn withDatasetId()`](#fn-withdatasetid)
* [`fn withDefinitionBody()`](#fn-withdefinitionbody)
* [`fn withDescription()`](#fn-withdescription)
* [`fn withDeterminismLevel()`](#fn-withdeterminismlevel)
* [`fn withImportedLibraries()`](#fn-withimportedlibraries)
* [`fn withLanguage()`](#fn-withlanguage)
* [`fn withProject()`](#fn-withproject)
* [`fn withReturnTableType()`](#fn-withreturntabletype)
* [`fn withReturnType()`](#fn-withreturntype)
* [`fn withRoutineId()`](#fn-withroutineid)
* [`fn withRoutineType()`](#fn-withroutinetype)
* [`fn withSparkOptions()`](#fn-withsparkoptions)
* [`fn withSparkOptionsMixin()`](#fn-withsparkoptionsmixin)
* [`fn withTimeouts()`](#fn-withtimeouts)
* [`fn withTimeoutsMixin()`](#fn-withtimeoutsmixin)
* [`obj arguments`](#obj-arguments)
  * [`fn new()`](#fn-argumentsnew)
* [`obj spark_options`](#obj-spark_options)
  * [`fn new()`](#fn-spark_optionsnew)
* [`obj timeouts`](#obj-timeouts)
  * [`fn new()`](#fn-timeoutsnew)

## Fields

### fn new

```ts
new()
```


`google.bigquery_routine.new` injects a new `google_bigquery_routine` Terraform `resource`
block into the root module document.

Additionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the
resource. For example, if you added a new instance to the root using:

    # arguments omitted for brevity
    google.bigquery_routine.new('some_id')

You can get the reference to the `id` field of the created `google.bigquery_routine` using the reference:

    $._ref.google_bigquery_routine.some_id.get('id')

This is the same as directly entering `"${ google_bigquery_routine.some_id.id }"` as the value.

NOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,
or `$` to refer to the root object. Instead, make an explicit outer object using `local`.

**Args**:
  - `resourceLabel` (`string`): The name label of the block.
  - `dataset_id` (`string`): The ID of the dataset containing this routine
  - `definition_body` (`string`): The body of the routine. For functions, this is the expression in the AS clause.
If language=SQL, it is the substring inside (but excluding) the parentheses.
  - `description` (`string`): The description of the routine if defined. When `null`, the `description` field will be omitted from the resulting object.
  - `determinism_level` (`string`): The determinism level of the JavaScript UDF if defined. Possible values: [&#34;DETERMINISM_LEVEL_UNSPECIFIED&#34;, &#34;DETERMINISTIC&#34;, &#34;NOT_DETERMINISTIC&#34;] When `null`, the `determinism_level` field will be omitted from the resulting object.
  - `imported_libraries` (`list`): Optional. If language = &#34;JAVASCRIPT&#34;, this field stores the path of the
imported JAVASCRIPT libraries. When `null`, the `imported_libraries` field will be omitted from the resulting object.
  - `language` (`string`): The language of the routine. Possible values: [&#34;SQL&#34;, &#34;JAVASCRIPT&#34;, &#34;PYTHON&#34;, &#34;JAVA&#34;, &#34;SCALA&#34;] When `null`, the `language` field will be omitted from the resulting object.
  - `project` (`string`): Set the `project` field on the resulting resource block. When `null`, the `project` field will be omitted from the resulting object.
  - `return_table_type` (`string`): Optional. Can be set only if routineType = &#34;TABLE_VALUED_FUNCTION&#34;.

If absent, the return table type is inferred from definitionBody at query time in each query
that references this routine. If present, then the columns in the evaluated table result will
be cast to match the column types specificed in return table type, at query time. When `null`, the `return_table_type` field will be omitted from the resulting object.
  - `return_type` (`string`): A JSON schema for the return type. Optional if language = &#34;SQL&#34;; required otherwise.
If absent, the return type is inferred from definitionBody at query time in each query
that references this routine. If present, then the evaluated result will be cast to
the specified returned type at query time. ~&gt;**NOTE**: Because this field expects a JSON
string, any changes to the string will create a diff, even if the JSON itself hasn&#39;t
changed. If the API returns a different value for the same schema, e.g. it switche
d the order of values or replaced STRUCT field type with RECORD field type, we currently
cannot suppress the recurring diff this causes. As a workaround, we recommend using
the schema as returned by the API. When `null`, the `return_type` field will be omitted from the resulting object.
  - `routine_id` (`string`): The ID of the the routine. The ID must contain only letters (a-z, A-Z), numbers (0-9), or underscores (_). The maximum length is 256 characters.
  - `routine_type` (`string`): The type of routine. Possible values: [&#34;SCALAR_FUNCTION&#34;, &#34;PROCEDURE&#34;, &#34;TABLE_VALUED_FUNCTION&#34;]
  - `arguments` (`list[obj]`): Input/output argument of a function or a stored procedure. When `null`, the `arguments` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.bigquery_routine.arguments.new](#fn-argumentsnew) constructor.
  - `spark_options` (`list[obj]`): Optional. If language is one of &#34;PYTHON&#34;, &#34;JAVA&#34;, &#34;SCALA&#34;, this field stores the options for spark stored procedure. When `null`, the `spark_options` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.bigquery_routine.spark_options.new](#fn-spark_optionsnew) constructor.
  - `timeouts` (`obj`): Set the `timeouts` field on the resulting resource block. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.bigquery_routine.timeouts.new](#fn-timeoutsnew) constructor.

**Returns**:
- A mixin object that injects the new resource into the root Terraform configuration.


### fn newAttrs

```ts
newAttrs()
```


`google.bigquery_routine.newAttrs` constructs a new object with attributes and blocks configured for the `bigquery_routine`
Terraform resource.

Unlike [google.bigquery_routine.new](#fn-new), this function will not inject the `resource`
block into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the
[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.

This is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to
injecting into a complete block.

**Args**:
  - `dataset_id` (`string`): The ID of the dataset containing this routine
  - `definition_body` (`string`): The body of the routine. For functions, this is the expression in the AS clause.
If language=SQL, it is the substring inside (but excluding) the parentheses.
  - `description` (`string`): The description of the routine if defined. When `null`, the `description` field will be omitted from the resulting object.
  - `determinism_level` (`string`): The determinism level of the JavaScript UDF if defined. Possible values: [&#34;DETERMINISM_LEVEL_UNSPECIFIED&#34;, &#34;DETERMINISTIC&#34;, &#34;NOT_DETERMINISTIC&#34;] When `null`, the `determinism_level` field will be omitted from the resulting object.
  - `imported_libraries` (`list`): Optional. If language = &#34;JAVASCRIPT&#34;, this field stores the path of the
imported JAVASCRIPT libraries. When `null`, the `imported_libraries` field will be omitted from the resulting object.
  - `language` (`string`): The language of the routine. Possible values: [&#34;SQL&#34;, &#34;JAVASCRIPT&#34;, &#34;PYTHON&#34;, &#34;JAVA&#34;, &#34;SCALA&#34;] When `null`, the `language` field will be omitted from the resulting object.
  - `project` (`string`): Set the `project` field on the resulting object. When `null`, the `project` field will be omitted from the resulting object.
  - `return_table_type` (`string`): Optional. Can be set only if routineType = &#34;TABLE_VALUED_FUNCTION&#34;.

If absent, the return table type is inferred from definitionBody at query time in each query
that references this routine. If present, then the columns in the evaluated table result will
be cast to match the column types specificed in return table type, at query time. When `null`, the `return_table_type` field will be omitted from the resulting object.
  - `return_type` (`string`): A JSON schema for the return type. Optional if language = &#34;SQL&#34;; required otherwise.
If absent, the return type is inferred from definitionBody at query time in each query
that references this routine. If present, then the evaluated result will be cast to
the specified returned type at query time. ~&gt;**NOTE**: Because this field expects a JSON
string, any changes to the string will create a diff, even if the JSON itself hasn&#39;t
changed. If the API returns a different value for the same schema, e.g. it switche
d the order of values or replaced STRUCT field type with RECORD field type, we currently
cannot suppress the recurring diff this causes. As a workaround, we recommend using
the schema as returned by the API. When `null`, the `return_type` field will be omitted from the resulting object.
  - `routine_id` (`string`): The ID of the the routine. The ID must contain only letters (a-z, A-Z), numbers (0-9), or underscores (_). The maximum length is 256 characters.
  - `routine_type` (`string`): The type of routine. Possible values: [&#34;SCALAR_FUNCTION&#34;, &#34;PROCEDURE&#34;, &#34;TABLE_VALUED_FUNCTION&#34;]
  - `arguments` (`list[obj]`): Input/output argument of a function or a stored procedure. When `null`, the `arguments` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.bigquery_routine.arguments.new](#fn-argumentsnew) constructor.
  - `spark_options` (`list[obj]`): Optional. If language is one of &#34;PYTHON&#34;, &#34;JAVA&#34;, &#34;SCALA&#34;, this field stores the options for spark stored procedure. When `null`, the `spark_options` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.bigquery_routine.spark_options.new](#fn-spark_optionsnew) constructor.
  - `timeouts` (`obj`): Set the `timeouts` field on the resulting object. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.bigquery_routine.timeouts.new](#fn-timeoutsnew) constructor.

**Returns**:
  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `bigquery_routine` resource into the root Terraform configuration.


### fn withArguments

```ts
withArguments()
```

`google.list[obj].withArguments` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the arguments field.

This function will replace the array with the passed in `value`. If you wish to instead append the
passed in value to the existing array, use the [google.list[obj].withArgumentsMixin](TODO) function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `arguments` field.


### fn withArgumentsMixin

```ts
withArgumentsMixin()
```

`google.list[obj].withArgumentsMixin` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the arguments field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google.list[obj].withArguments](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `arguments` field.


### fn withDatasetId

```ts
withDatasetId()
```

`google.string.withDatasetId` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the dataset_id field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `dataset_id` field.


### fn withDefinitionBody

```ts
withDefinitionBody()
```

`google.string.withDefinitionBody` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the definition_body field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `definition_body` field.


### fn withDescription

```ts
withDescription()
```

`google.string.withDescription` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the description field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `description` field.


### fn withDeterminismLevel

```ts
withDeterminismLevel()
```

`google.string.withDeterminismLevel` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the determinism_level field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `determinism_level` field.


### fn withImportedLibraries

```ts
withImportedLibraries()
```

`google.list.withImportedLibraries` constructs a mixin object that can be merged into the `list`
Terraform resource block to set or update the imported_libraries field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list`): The value to set for the `imported_libraries` field.


### fn withLanguage

```ts
withLanguage()
```

`google.string.withLanguage` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the language field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `language` field.


### fn withProject

```ts
withProject()
```

`google.string.withProject` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the project field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `project` field.


### fn withReturnTableType

```ts
withReturnTableType()
```

`google.string.withReturnTableType` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the return_table_type field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `return_table_type` field.


### fn withReturnType

```ts
withReturnType()
```

`google.string.withReturnType` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the return_type field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `return_type` field.


### fn withRoutineId

```ts
withRoutineId()
```

`google.string.withRoutineId` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the routine_id field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `routine_id` field.


### fn withRoutineType

```ts
withRoutineType()
```

`google.string.withRoutineType` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the routine_type field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `routine_type` field.


### fn withSparkOptions

```ts
withSparkOptions()
```

`google.list[obj].withSparkOptions` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the spark_options field.

This function will replace the array with the passed in `value`. If you wish to instead append the
passed in value to the existing array, use the [google.list[obj].withSparkOptionsMixin](TODO) function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `spark_options` field.


### fn withSparkOptionsMixin

```ts
withSparkOptionsMixin()
```

`google.list[obj].withSparkOptionsMixin` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the spark_options field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google.list[obj].withSparkOptions](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `spark_options` field.


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


## obj arguments



### fn arguments.new

```ts
new()
```


`google.bigquery_routine.arguments.new` constructs a new object with attributes and blocks configured for the `arguments`
Terraform sub block.



**Args**:
  - `argument_kind` (`string`): Defaults to FIXED_TYPE. Default value: &#34;FIXED_TYPE&#34; Possible values: [&#34;FIXED_TYPE&#34;, &#34;ANY_TYPE&#34;] When `null`, the `argument_kind` field will be omitted from the resulting object.
  - `data_type` (`string`): A JSON schema for the data type. Required unless argumentKind = ANY_TYPE.
~&gt;**NOTE**: Because this field expects a JSON string, any changes to the string
will create a diff, even if the JSON itself hasn&#39;t changed. If the API returns
a different value for the same schema, e.g. it switched the order of values
or replaced STRUCT field type with RECORD field type, we currently cannot
suppress the recurring diff this causes. As a workaround, we recommend using
the schema as returned by the API. When `null`, the `data_type` field will be omitted from the resulting object.
  - `mode` (`string`): Specifies whether the argument is input or output. Can be set for procedures only. Possible values: [&#34;IN&#34;, &#34;OUT&#34;, &#34;INOUT&#34;] When `null`, the `mode` field will be omitted from the resulting object.
  - `name` (`string`): The name of this argument. Can be absent for function return argument. When `null`, the `name` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `arguments` sub block.


## obj spark_options



### fn spark_options.new

```ts
new()
```


`google.bigquery_routine.spark_options.new` constructs a new object with attributes and blocks configured for the `spark_options`
Terraform sub block.



**Args**:
  - `archive_uris` (`list`): Archive files to be extracted into the working directory of each executor. For more information about Apache Spark, see Apache Spark. When `null`, the `archive_uris` field will be omitted from the resulting object.
  - `connection` (`string`): Fully qualified name of the user-provided Spark connection object.
Format: &#34;projects/{projectId}/locations/{locationId}/connections/{connectionId}&#34; When `null`, the `connection` field will be omitted from the resulting object.
  - `container_image` (`string`): Custom container image for the runtime environment. When `null`, the `container_image` field will be omitted from the resulting object.
  - `file_uris` (`list`): Files to be placed in the working directory of each executor. For more information about Apache Spark, see Apache Spark. When `null`, the `file_uris` field will be omitted from the resulting object.
  - `jar_uris` (`list`): JARs to include on the driver and executor CLASSPATH. For more information about Apache Spark, see Apache Spark. When `null`, the `jar_uris` field will be omitted from the resulting object.
  - `main_class` (`string`): The fully qualified name of a class in jarUris, for example, com.example.wordcount.
Exactly one of mainClass and main_jar_uri field should be set for Java/Scala language type. When `null`, the `main_class` field will be omitted from the resulting object.
  - `main_file_uri` (`string`): The main file/jar URI of the Spark application.
Exactly one of the definitionBody field and the mainFileUri field must be set for Python.
Exactly one of mainClass and mainFileUri field should be set for Java/Scala language type. When `null`, the `main_file_uri` field will be omitted from the resulting object.
  - `properties` (`obj`): Configuration properties as a set of key/value pairs, which will be passed on to the Spark application.
For more information, see Apache Spark and the procedure option list.
An object containing a list of &#34;key&#34;: value pairs. Example: { &#34;name&#34;: &#34;wrench&#34;, &#34;mass&#34;: &#34;1.3kg&#34;, &#34;count&#34;: &#34;3&#34; }. When `null`, the `properties` field will be omitted from the resulting object.
  - `py_file_uris` (`list`): Python files to be placed on the PYTHONPATH for PySpark application. Supported file types: .py, .egg, and .zip. For more information about Apache Spark, see Apache Spark. When `null`, the `py_file_uris` field will be omitted from the resulting object.
  - `runtime_version` (`string`): Runtime version. If not specified, the default runtime version is used. When `null`, the `runtime_version` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `spark_options` sub block.


## obj timeouts



### fn timeouts.new

```ts
new()
```


`google.bigquery_routine.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`
Terraform sub block.



**Args**:
  - `create` (`string`): Set the `create` field on the resulting object. When `null`, the `create` field will be omitted from the resulting object.
  - `delete` (`string`): Set the `delete` field on the resulting object. When `null`, the `delete` field will be omitted from the resulting object.
  - `update` (`string`): Set the `update` field on the resulting object. When `null`, the `update` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `timeouts` sub block.
