---
permalink: /dataplex_task/
---

# dataplex_task

`dataplex_task` represents the `google_dataplex_task` Terraform resource.



This package contains functions and utilities for setting up the resource using Jsonnet code.


## Index

* [`fn new()`](#fn-new)
* [`fn newAttrs()`](#fn-newattrs)
* [`fn withDescription()`](#fn-withdescription)
* [`fn withDisplayName()`](#fn-withdisplayname)
* [`fn withExecutionSpec()`](#fn-withexecutionspec)
* [`fn withExecutionSpecMixin()`](#fn-withexecutionspecmixin)
* [`fn withLabels()`](#fn-withlabels)
* [`fn withLake()`](#fn-withlake)
* [`fn withLocation()`](#fn-withlocation)
* [`fn withNotebook()`](#fn-withnotebook)
* [`fn withNotebookMixin()`](#fn-withnotebookmixin)
* [`fn withProject()`](#fn-withproject)
* [`fn withSpark()`](#fn-withspark)
* [`fn withSparkMixin()`](#fn-withsparkmixin)
* [`fn withTaskId()`](#fn-withtaskid)
* [`fn withTimeouts()`](#fn-withtimeouts)
* [`fn withTimeoutsMixin()`](#fn-withtimeoutsmixin)
* [`fn withTriggerSpec()`](#fn-withtriggerspec)
* [`fn withTriggerSpecMixin()`](#fn-withtriggerspecmixin)
* [`obj execution_spec`](#obj-execution_spec)
  * [`fn new()`](#fn-execution_specnew)
* [`obj notebook`](#obj-notebook)
  * [`fn new()`](#fn-notebooknew)
  * [`obj notebook.infrastructure_spec`](#obj-notebookinfrastructure_spec)
    * [`fn new()`](#fn-notebookinfrastructure_specnew)
    * [`obj notebook.infrastructure_spec.batch`](#obj-notebookinfrastructure_specbatch)
      * [`fn new()`](#fn-notebookinfrastructure_specbatchnew)
    * [`obj notebook.infrastructure_spec.container_image`](#obj-notebookinfrastructure_speccontainer_image)
      * [`fn new()`](#fn-notebookinfrastructure_speccontainer_imagenew)
    * [`obj notebook.infrastructure_spec.vpc_network`](#obj-notebookinfrastructure_specvpc_network)
      * [`fn new()`](#fn-notebookinfrastructure_specvpc_networknew)
* [`obj spark`](#obj-spark)
  * [`fn new()`](#fn-sparknew)
  * [`obj spark.infrastructure_spec`](#obj-sparkinfrastructure_spec)
    * [`fn new()`](#fn-sparkinfrastructure_specnew)
    * [`obj spark.infrastructure_spec.batch`](#obj-sparkinfrastructure_specbatch)
      * [`fn new()`](#fn-sparkinfrastructure_specbatchnew)
    * [`obj spark.infrastructure_spec.container_image`](#obj-sparkinfrastructure_speccontainer_image)
      * [`fn new()`](#fn-sparkinfrastructure_speccontainer_imagenew)
    * [`obj spark.infrastructure_spec.vpc_network`](#obj-sparkinfrastructure_specvpc_network)
      * [`fn new()`](#fn-sparkinfrastructure_specvpc_networknew)
* [`obj timeouts`](#obj-timeouts)
  * [`fn new()`](#fn-timeoutsnew)
* [`obj trigger_spec`](#obj-trigger_spec)
  * [`fn new()`](#fn-trigger_specnew)

## Fields

### fn new

```ts
new()
```


`google.dataplex_task.new` injects a new `google_dataplex_task` Terraform `resource`
block into the root module document.

Additionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the
resource. For example, if you added a new instance to the root using:

    # arguments omitted for brevity
    google.dataplex_task.new('some_id')

You can get the reference to the `id` field of the created `google.dataplex_task` using the reference:

    $._ref.google_dataplex_task.some_id.get('id')

This is the same as directly entering `"${ google_dataplex_task.some_id.id }"` as the value.

NOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,
or `$` to refer to the root object. Instead, make an explicit outer object using `local`.

**Args**:
  - `resourceLabel` (`string`): The name label of the block.
  - `description` (`string`): User-provided description of the task. When `null`, the `description` field will be omitted from the resulting object.
  - `display_name` (`string`): User friendly display name. When `null`, the `display_name` field will be omitted from the resulting object.
  - `labels` (`obj`): User-defined labels for the task. When `null`, the `labels` field will be omitted from the resulting object.
  - `lake` (`string`): The lake in which the task will be created in. When `null`, the `lake` field will be omitted from the resulting object.
  - `location` (`string`): The location in which the task will be created in. When `null`, the `location` field will be omitted from the resulting object.
  - `project` (`string`): Set the `project` field on the resulting resource block. When `null`, the `project` field will be omitted from the resulting object.
  - `task_id` (`string`): The task Id of the task. When `null`, the `task_id` field will be omitted from the resulting object.
  - `execution_spec` (`list[obj]`): Configuration for the cluster When `null`, the `execution_spec` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dataplex_task.execution_spec.new](#fn-execution_specnew) constructor.
  - `notebook` (`list[obj]`): A service with manual scaling runs continuously, allowing you to perform complex initialization and rely on the state of its memory over time. When `null`, the `notebook` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dataplex_task.notebook.new](#fn-notebooknew) constructor.
  - `spark` (`list[obj]`): A service with manual scaling runs continuously, allowing you to perform complex initialization and rely on the state of its memory over time. When `null`, the `spark` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dataplex_task.spark.new](#fn-sparknew) constructor.
  - `timeouts` (`obj`): Set the `timeouts` field on the resulting resource block. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dataplex_task.timeouts.new](#fn-timeoutsnew) constructor.
  - `trigger_spec` (`list[obj]`): Configuration for the cluster When `null`, the `trigger_spec` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dataplex_task.trigger_spec.new](#fn-trigger_specnew) constructor.

**Returns**:
- A mixin object that injects the new resource into the root Terraform configuration.


### fn newAttrs

```ts
newAttrs()
```


`google.dataplex_task.newAttrs` constructs a new object with attributes and blocks configured for the `dataplex_task`
Terraform resource.

Unlike [google.dataplex_task.new](#fn-new), this function will not inject the `resource`
block into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the
[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.

This is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to
injecting into a complete block.

**Args**:
  - `description` (`string`): User-provided description of the task. When `null`, the `description` field will be omitted from the resulting object.
  - `display_name` (`string`): User friendly display name. When `null`, the `display_name` field will be omitted from the resulting object.
  - `labels` (`obj`): User-defined labels for the task. When `null`, the `labels` field will be omitted from the resulting object.
  - `lake` (`string`): The lake in which the task will be created in. When `null`, the `lake` field will be omitted from the resulting object.
  - `location` (`string`): The location in which the task will be created in. When `null`, the `location` field will be omitted from the resulting object.
  - `project` (`string`): Set the `project` field on the resulting object. When `null`, the `project` field will be omitted from the resulting object.
  - `task_id` (`string`): The task Id of the task. When `null`, the `task_id` field will be omitted from the resulting object.
  - `execution_spec` (`list[obj]`): Configuration for the cluster When `null`, the `execution_spec` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dataplex_task.execution_spec.new](#fn-execution_specnew) constructor.
  - `notebook` (`list[obj]`): A service with manual scaling runs continuously, allowing you to perform complex initialization and rely on the state of its memory over time. When `null`, the `notebook` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dataplex_task.notebook.new](#fn-notebooknew) constructor.
  - `spark` (`list[obj]`): A service with manual scaling runs continuously, allowing you to perform complex initialization and rely on the state of its memory over time. When `null`, the `spark` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dataplex_task.spark.new](#fn-sparknew) constructor.
  - `timeouts` (`obj`): Set the `timeouts` field on the resulting object. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dataplex_task.timeouts.new](#fn-timeoutsnew) constructor.
  - `trigger_spec` (`list[obj]`): Configuration for the cluster When `null`, the `trigger_spec` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dataplex_task.trigger_spec.new](#fn-trigger_specnew) constructor.

**Returns**:
  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `dataplex_task` resource into the root Terraform configuration.


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


### fn withExecutionSpec

```ts
withExecutionSpec()
```

`google.list[obj].withExecutionSpec` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the execution_spec field.

This function will replace the array with the passed in `value`. If you wish to instead append the
passed in value to the existing array, use the [google.list[obj].withExecutionSpecMixin](TODO) function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `execution_spec` field.


### fn withExecutionSpecMixin

```ts
withExecutionSpecMixin()
```

`google.list[obj].withExecutionSpecMixin` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the execution_spec field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google.list[obj].withExecutionSpec](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `execution_spec` field.


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


### fn withNotebook

```ts
withNotebook()
```

`google.list[obj].withNotebook` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the notebook field.

This function will replace the array with the passed in `value`. If you wish to instead append the
passed in value to the existing array, use the [google.list[obj].withNotebookMixin](TODO) function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `notebook` field.


### fn withNotebookMixin

```ts
withNotebookMixin()
```

`google.list[obj].withNotebookMixin` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the notebook field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google.list[obj].withNotebook](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `notebook` field.


### fn withProject

```ts
withProject()
```

`google.string.withProject` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the project field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `project` field.


### fn withSpark

```ts
withSpark()
```

`google.list[obj].withSpark` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the spark field.

This function will replace the array with the passed in `value`. If you wish to instead append the
passed in value to the existing array, use the [google.list[obj].withSparkMixin](TODO) function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `spark` field.


### fn withSparkMixin

```ts
withSparkMixin()
```

`google.list[obj].withSparkMixin` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the spark field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google.list[obj].withSpark](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `spark` field.


### fn withTaskId

```ts
withTaskId()
```

`google.string.withTaskId` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the task_id field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `task_id` field.


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


### fn withTriggerSpec

```ts
withTriggerSpec()
```

`google.list[obj].withTriggerSpec` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the trigger_spec field.

This function will replace the array with the passed in `value`. If you wish to instead append the
passed in value to the existing array, use the [google.list[obj].withTriggerSpecMixin](TODO) function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `trigger_spec` field.


### fn withTriggerSpecMixin

```ts
withTriggerSpecMixin()
```

`google.list[obj].withTriggerSpecMixin` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the trigger_spec field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google.list[obj].withTriggerSpec](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `trigger_spec` field.


## obj execution_spec



### fn execution_spec.new

```ts
new()
```


`google.dataplex_task.execution_spec.new` constructs a new object with attributes and blocks configured for the `execution_spec`
Terraform sub block.



**Args**:
  - `args` (`obj`): The arguments to pass to the task. The args can use placeholders of the format ${placeholder} as part of key/value string. These will be interpolated before passing the args to the driver. Currently supported placeholders: - ${taskId} - ${job_time} To pass positional args, set the key as TASK_ARGS. The value should be a comma-separated string of all the positional arguments. To use a delimiter other than comma, refer to https://cloud.google.com/sdk/gcloud/reference/topic/escaping. In case of other keys being present in the args, then TASK_ARGS will be passed as the last argument. An object containing a list of &#39;key&#39;: value pairs. Example: { &#39;name&#39;: &#39;wrench&#39;, &#39;mass&#39;: &#39;1.3kg&#39;, &#39;count&#39;: &#39;3&#39; }. When `null`, the `args` field will be omitted from the resulting object.
  - `kms_key` (`string`): The Cloud KMS key to use for encryption, of the form: projects/{project_number}/locations/{locationId}/keyRings/{key-ring-name}/cryptoKeys/{key-name}. When `null`, the `kms_key` field will be omitted from the resulting object.
  - `max_job_execution_lifetime` (`string`): The maximum duration after which the job execution is expired. A duration in seconds with up to nine fractional digits, ending with &#39;s&#39;. Example: &#39;3.5s&#39;. When `null`, the `max_job_execution_lifetime` field will be omitted from the resulting object.
  - `project` (`string`): The project in which jobs are run. By default, the project containing the Lake is used. If a project is provided, the ExecutionSpec.service_account must belong to this project. When `null`, the `project` field will be omitted from the resulting object.
  - `service_account` (`string`): Service account to use to execute a task. If not provided, the default Compute service account for the project is used.

**Returns**:
  - An attribute object that represents the `execution_spec` sub block.


## obj notebook



### fn notebook.new

```ts
new()
```


`google.dataplex_task.notebook.new` constructs a new object with attributes and blocks configured for the `notebook`
Terraform sub block.



**Args**:
  - `archive_uris` (`list`): Cloud Storage URIs of archives to be extracted into the working directory of each executor. Supported file types: .jar, .tar, .tar.gz, .tgz, and .zip. When `null`, the `archive_uris` field will be omitted from the resulting object.
  - `file_uris` (`list`): Cloud Storage URIs of files to be placed in the working directory of each executor. When `null`, the `file_uris` field will be omitted from the resulting object.
  - `notebook` (`string`): Path to input notebook. This can be the Cloud Storage URI of the notebook file or the path to a Notebook Content. The execution args are accessible as environment variables (TASK_key=value).
  - `infrastructure_spec` (`list[obj]`): Infrastructure specification for the execution. When `null`, the `infrastructure_spec` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dataplex_task.notebook.infrastructure_spec.new](#fn-notebookinfrastructure_specnew) constructor.

**Returns**:
  - An attribute object that represents the `notebook` sub block.


## obj notebook.infrastructure_spec



### fn notebook.infrastructure_spec.new

```ts
new()
```


`google.dataplex_task.notebook.infrastructure_spec.new` constructs a new object with attributes and blocks configured for the `infrastructure_spec`
Terraform sub block.



**Args**:
  - `batch` (`list[obj]`): Compute resources needed for a Task when using Dataproc Serverless. When `null`, the `batch` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dataplex_task.notebook.infrastructure_spec.batch.new](#fn-notebooknotebookbatchnew) constructor.
  - `container_image` (`list[obj]`): Container Image Runtime Configuration. When `null`, the `container_image` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dataplex_task.notebook.infrastructure_spec.container_image.new](#fn-notebooknotebookcontainer_imagenew) constructor.
  - `vpc_network` (`list[obj]`): Vpc network. When `null`, the `vpc_network` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dataplex_task.notebook.infrastructure_spec.vpc_network.new](#fn-notebooknotebookvpc_networknew) constructor.

**Returns**:
  - An attribute object that represents the `infrastructure_spec` sub block.


## obj notebook.infrastructure_spec.batch



### fn notebook.infrastructure_spec.batch.new

```ts
new()
```


`google.dataplex_task.notebook.infrastructure_spec.batch.new` constructs a new object with attributes and blocks configured for the `batch`
Terraform sub block.



**Args**:
  - `executors_count` (`number`): Total number of job executors. Executor Count should be between 2 and 100. [Default=2] When `null`, the `executors_count` field will be omitted from the resulting object.
  - `max_executors_count` (`number`): Max configurable executors. If maxExecutorsCount &gt; executorsCount, then auto-scaling is enabled. Max Executor Count should be between 2 and 1000. [Default=1000] When `null`, the `max_executors_count` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `batch` sub block.


## obj notebook.infrastructure_spec.container_image



### fn notebook.infrastructure_spec.container_image.new

```ts
new()
```


`google.dataplex_task.notebook.infrastructure_spec.container_image.new` constructs a new object with attributes and blocks configured for the `container_image`
Terraform sub block.



**Args**:
  - `image` (`string`): Container image to use. When `null`, the `image` field will be omitted from the resulting object.
  - `java_jars` (`list`): A list of Java JARS to add to the classpath. Valid input includes Cloud Storage URIs to Jar binaries. For example, gs://bucket-name/my/path/to/file.jar When `null`, the `java_jars` field will be omitted from the resulting object.
  - `properties` (`obj`): Override to common configuration of open source components installed on the Dataproc cluster. The properties to set on daemon config files. Property keys are specified in prefix:property format, for example core:hadoop.tmp.dir. For more information, see Cluster properties. When `null`, the `properties` field will be omitted from the resulting object.
  - `python_packages` (`list`): A list of python packages to be installed. Valid formats include Cloud Storage URI to a PIP installable library. For example, gs://bucket-name/my/path/to/lib.tar.gz When `null`, the `python_packages` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `container_image` sub block.


## obj notebook.infrastructure_spec.vpc_network



### fn notebook.infrastructure_spec.vpc_network.new

```ts
new()
```


`google.dataplex_task.notebook.infrastructure_spec.vpc_network.new` constructs a new object with attributes and blocks configured for the `vpc_network`
Terraform sub block.



**Args**:
  - `network` (`string`): The Cloud VPC network in which the job is run. By default, the Cloud VPC network named Default within the project is used. When `null`, the `network` field will be omitted from the resulting object.
  - `network_tags` (`list`): List of network tags to apply to the job. When `null`, the `network_tags` field will be omitted from the resulting object.
  - `sub_network` (`string`): The Cloud VPC sub-network in which the job is run. When `null`, the `sub_network` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `vpc_network` sub block.


## obj spark



### fn spark.new

```ts
new()
```


`google.dataplex_task.spark.new` constructs a new object with attributes and blocks configured for the `spark`
Terraform sub block.



**Args**:
  - `archive_uris` (`list`): Cloud Storage URIs of archives to be extracted into the working directory of each executor. Supported file types: .jar, .tar, .tar.gz, .tgz, and .zip. When `null`, the `archive_uris` field will be omitted from the resulting object.
  - `file_uris` (`list`): Cloud Storage URIs of files to be placed in the working directory of each executor. When `null`, the `file_uris` field will be omitted from the resulting object.
  - `main_class` (`string`): The name of the driver&#39;s main class. The jar file that contains the class must be in the default CLASSPATH or specified in jar_file_uris. The execution args are passed in as a sequence of named process arguments (--key=value). When `null`, the `main_class` field will be omitted from the resulting object.
  - `main_jar_file_uri` (`string`): The Cloud Storage URI of the jar file that contains the main class. The execution args are passed in as a sequence of named process arguments (--key=value). When `null`, the `main_jar_file_uri` field will be omitted from the resulting object.
  - `python_script_file` (`string`): The Gcloud Storage URI of the main Python file to use as the driver. Must be a .py file. The execution args are passed in as a sequence of named process arguments (--key=value). When `null`, the `python_script_file` field will be omitted from the resulting object.
  - `sql_script` (`string`): The query text. The execution args are used to declare a set of script variables (set key=&#39;value&#39;;). When `null`, the `sql_script` field will be omitted from the resulting object.
  - `sql_script_file` (`string`): A reference to a query file. This can be the Cloud Storage URI of the query file or it can the path to a SqlScript Content. The execution args are used to declare a set of script variables (set key=&#39;value&#39;;). When `null`, the `sql_script_file` field will be omitted from the resulting object.
  - `infrastructure_spec` (`list[obj]`): Infrastructure specification for the execution. When `null`, the `infrastructure_spec` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dataplex_task.spark.infrastructure_spec.new](#fn-sparkinfrastructure_specnew) constructor.

**Returns**:
  - An attribute object that represents the `spark` sub block.


## obj spark.infrastructure_spec



### fn spark.infrastructure_spec.new

```ts
new()
```


`google.dataplex_task.spark.infrastructure_spec.new` constructs a new object with attributes and blocks configured for the `infrastructure_spec`
Terraform sub block.



**Args**:
  - `batch` (`list[obj]`): Compute resources needed for a Task when using Dataproc Serverless. When `null`, the `batch` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dataplex_task.spark.infrastructure_spec.batch.new](#fn-sparksparkbatchnew) constructor.
  - `container_image` (`list[obj]`): Container Image Runtime Configuration. When `null`, the `container_image` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dataplex_task.spark.infrastructure_spec.container_image.new](#fn-sparksparkcontainer_imagenew) constructor.
  - `vpc_network` (`list[obj]`): Vpc network. When `null`, the `vpc_network` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dataplex_task.spark.infrastructure_spec.vpc_network.new](#fn-sparksparkvpc_networknew) constructor.

**Returns**:
  - An attribute object that represents the `infrastructure_spec` sub block.


## obj spark.infrastructure_spec.batch



### fn spark.infrastructure_spec.batch.new

```ts
new()
```


`google.dataplex_task.spark.infrastructure_spec.batch.new` constructs a new object with attributes and blocks configured for the `batch`
Terraform sub block.



**Args**:
  - `executors_count` (`number`): Total number of job executors. Executor Count should be between 2 and 100. [Default=2] When `null`, the `executors_count` field will be omitted from the resulting object.
  - `max_executors_count` (`number`): Max configurable executors. If maxExecutorsCount &gt; executorsCount, then auto-scaling is enabled. Max Executor Count should be between 2 and 1000. [Default=1000] When `null`, the `max_executors_count` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `batch` sub block.


## obj spark.infrastructure_spec.container_image



### fn spark.infrastructure_spec.container_image.new

```ts
new()
```


`google.dataplex_task.spark.infrastructure_spec.container_image.new` constructs a new object with attributes and blocks configured for the `container_image`
Terraform sub block.



**Args**:
  - `image` (`string`): Container image to use. When `null`, the `image` field will be omitted from the resulting object.
  - `java_jars` (`list`): A list of Java JARS to add to the classpath. Valid input includes Cloud Storage URIs to Jar binaries. For example, gs://bucket-name/my/path/to/file.jar When `null`, the `java_jars` field will be omitted from the resulting object.
  - `properties` (`obj`): Override to common configuration of open source components installed on the Dataproc cluster. The properties to set on daemon config files. Property keys are specified in prefix:property format, for example core:hadoop.tmp.dir. For more information, see Cluster properties. When `null`, the `properties` field will be omitted from the resulting object.
  - `python_packages` (`list`): A list of python packages to be installed. Valid formats include Cloud Storage URI to a PIP installable library. For example, gs://bucket-name/my/path/to/lib.tar.gz When `null`, the `python_packages` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `container_image` sub block.


## obj spark.infrastructure_spec.vpc_network



### fn spark.infrastructure_spec.vpc_network.new

```ts
new()
```


`google.dataplex_task.spark.infrastructure_spec.vpc_network.new` constructs a new object with attributes and blocks configured for the `vpc_network`
Terraform sub block.



**Args**:
  - `network` (`string`): The Cloud VPC network in which the job is run. By default, the Cloud VPC network named Default within the project is used. When `null`, the `network` field will be omitted from the resulting object.
  - `network_tags` (`list`): List of network tags to apply to the job. When `null`, the `network_tags` field will be omitted from the resulting object.
  - `sub_network` (`string`): The Cloud VPC sub-network in which the job is run. When `null`, the `sub_network` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `vpc_network` sub block.


## obj timeouts



### fn timeouts.new

```ts
new()
```


`google.dataplex_task.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`
Terraform sub block.



**Args**:
  - `create` (`string`): Set the `create` field on the resulting object. When `null`, the `create` field will be omitted from the resulting object.
  - `delete` (`string`): Set the `delete` field on the resulting object. When `null`, the `delete` field will be omitted from the resulting object.
  - `update` (`string`): Set the `update` field on the resulting object. When `null`, the `update` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `timeouts` sub block.


## obj trigger_spec



### fn trigger_spec.new

```ts
new()
```


`google.dataplex_task.trigger_spec.new` constructs a new object with attributes and blocks configured for the `trigger_spec`
Terraform sub block.



**Args**:
  - `disabled` (`bool`): Prevent the task from executing. This does not cancel already running tasks. It is intended to temporarily disable RECURRING tasks. When `null`, the `disabled` field will be omitted from the resulting object.
  - `max_retries` (`number`): Number of retry attempts before aborting. Set to zero to never attempt to retry a failed task. When `null`, the `max_retries` field will be omitted from the resulting object.
  - `schedule` (`string`): Cron schedule (https://en.wikipedia.org/wiki/Cron) for running tasks periodically. To explicitly set a timezone to the cron tab, apply a prefix in the cron tab: &#39;CRON_TZ=${IANA_TIME_ZONE}&#39; or &#39;TZ=${IANA_TIME_ZONE}&#39;. The ${IANA_TIME_ZONE} may only be a valid string from IANA time zone database. For example, CRON_TZ=America/New_York 1 * * * *, or TZ=America/New_York 1 * * * *. This field is required for RECURRING tasks. When `null`, the `schedule` field will be omitted from the resulting object.
  - `start_time` (`string`): The first run of the task will be after this time. If not specified, the task will run shortly after being submitted if ON_DEMAND and based on the schedule if RECURRING. When `null`, the `start_time` field will be omitted from the resulting object.
  - `type` (`string`): Trigger type of the user-specified Task Possible values: [&#34;ON_DEMAND&#34;, &#34;RECURRING&#34;]

**Returns**:
  - An attribute object that represents the `trigger_spec` sub block.
