---
permalink: /data_pipeline_pipeline/
---

# data_pipeline_pipeline

`data_pipeline_pipeline` represents the `google_data_pipeline_pipeline` Terraform resource.



This package contains functions and utilities for setting up the resource using Jsonnet code.


## Index

* [`fn new()`](#fn-new)
* [`fn newAttrs()`](#fn-newattrs)
* [`fn withDisplayName()`](#fn-withdisplayname)
* [`fn withName()`](#fn-withname)
* [`fn withPipelineSources()`](#fn-withpipelinesources)
* [`fn withProject()`](#fn-withproject)
* [`fn withRegion()`](#fn-withregion)
* [`fn withScheduleInfo()`](#fn-withscheduleinfo)
* [`fn withScheduleInfoMixin()`](#fn-withscheduleinfomixin)
* [`fn withSchedulerServiceAccountEmail()`](#fn-withschedulerserviceaccountemail)
* [`fn withState()`](#fn-withstate)
* [`fn withTimeouts()`](#fn-withtimeouts)
* [`fn withTimeoutsMixin()`](#fn-withtimeoutsmixin)
* [`fn withType()`](#fn-withtype)
* [`fn withWorkload()`](#fn-withworkload)
* [`fn withWorkloadMixin()`](#fn-withworkloadmixin)
* [`obj schedule_info`](#obj-schedule_info)
  * [`fn new()`](#fn-schedule_infonew)
* [`obj timeouts`](#obj-timeouts)
  * [`fn new()`](#fn-timeoutsnew)
* [`obj workload`](#obj-workload)
  * [`fn new()`](#fn-workloadnew)
  * [`obj workload.dataflow_flex_template_request`](#obj-workloaddataflow_flex_template_request)
    * [`fn new()`](#fn-workloaddataflow_flex_template_requestnew)
    * [`obj workload.dataflow_flex_template_request.launch_parameter`](#obj-workloaddataflow_flex_template_requestlaunch_parameter)
      * [`fn new()`](#fn-workloaddataflow_flex_template_requestlaunch_parameternew)
      * [`obj workload.dataflow_flex_template_request.launch_parameter.environment`](#obj-workloaddataflow_flex_template_requestlaunch_parameterenvironment)
        * [`fn new()`](#fn-workloaddataflow_flex_template_requestlaunch_parameterenvironmentnew)
  * [`obj workload.dataflow_launch_template_request`](#obj-workloaddataflow_launch_template_request)
    * [`fn new()`](#fn-workloaddataflow_launch_template_requestnew)
    * [`obj workload.dataflow_launch_template_request.launch_parameters`](#obj-workloaddataflow_launch_template_requestlaunch_parameters)
      * [`fn new()`](#fn-workloaddataflow_launch_template_requestlaunch_parametersnew)
      * [`obj workload.dataflow_launch_template_request.launch_parameters.environment`](#obj-workloaddataflow_launch_template_requestlaunch_parametersenvironment)
        * [`fn new()`](#fn-workloaddataflow_launch_template_requestlaunch_parametersenvironmentnew)

## Fields

### fn new

```ts
new()
```


`google.data_pipeline_pipeline.new` injects a new `google_data_pipeline_pipeline` Terraform `resource`
block into the root module document.

Additionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the
resource. For example, if you added a new instance to the root using:

    # arguments omitted for brevity
    google.data_pipeline_pipeline.new('some_id')

You can get the reference to the `id` field of the created `google.data_pipeline_pipeline` using the reference:

    $._ref.google_data_pipeline_pipeline.some_id.get('id')

This is the same as directly entering `"${ google_data_pipeline_pipeline.some_id.id }"` as the value.

NOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,
or `$` to refer to the root object. Instead, make an explicit outer object using `local`.

**Args**:
  - `resourceLabel` (`string`): The name label of the block.
  - `display_name` (`string`): The display name of the pipeline. It can contain only letters ([A-Za-z]), numbers ([0-9]), hyphens (-), and underscores (_). When `null`, the `display_name` field will be omitted from the resulting object.
  - `name` (`string`): &#34;The pipeline name. For example&#39;: &#39;projects/PROJECT_ID/locations/LOCATION_ID/pipelines/PIPELINE_ID.&#34;
&#34;- PROJECT_ID can contain letters ([A-Za-z]), numbers ([0-9]), hyphens (-), colons (:), and periods (.). For more information, see Identifying projects.&#34;
&#34;LOCATION_ID is the canonical ID for the pipeline&#39;s location. The list of available locations can be obtained by calling google.cloud.location.Locations.ListLocations. Note that the Data Pipelines service is not available in all regions. It depends on Cloud Scheduler, an App Engine application, so it&#39;s only available in App Engine regions.&#34;
&#34;PIPELINE_ID is the ID of the pipeline. Must be unique for the selected project and location.&#34;
  - `pipeline_sources` (`obj`): The sources of the pipeline (for example, Dataplex). The keys and values are set by the corresponding sources during pipeline creation.
An object containing a list of &#34;key&#34;: value pairs. Example: { &#34;name&#34;: &#34;wrench&#34;, &#34;mass&#34;: &#34;1.3kg&#34;, &#34;count&#34;: &#34;3&#34; }. When `null`, the `pipeline_sources` field will be omitted from the resulting object.
  - `project` (`string`): Set the `project` field on the resulting resource block. When `null`, the `project` field will be omitted from the resulting object.
  - `region` (`string`): A reference to the region When `null`, the `region` field will be omitted from the resulting object.
  - `scheduler_service_account_email` (`string`): Optional. A service account email to be used with the Cloud Scheduler job. If not specified, the default compute engine service account will be used. When `null`, the `scheduler_service_account_email` field will be omitted from the resulting object.
  - `state` (`string`): The state of the pipeline. When the pipeline is created, the state is set to &#39;PIPELINE_STATE_ACTIVE&#39; by default. State changes can be requested by setting the state to stopping, paused, or resuming. State cannot be changed through pipelines.patch requests.
https://cloud.google.com/dataflow/docs/reference/data-pipelines/rest/v1/projects.locations.pipelines#state Possible values: [&#34;STATE_UNSPECIFIED&#34;, &#34;STATE_RESUMING&#34;, &#34;STATE_ACTIVE&#34;, &#34;STATE_STOPPING&#34;, &#34;STATE_ARCHIVED&#34;, &#34;STATE_PAUSED&#34;]
  - `type` (`string`): The type of the pipeline. This field affects the scheduling of the pipeline and the type of metrics to show for the pipeline.
https://cloud.google.com/dataflow/docs/reference/data-pipelines/rest/v1/projects.locations.pipelines#pipelinetype Possible values: [&#34;PIPELINE_TYPE_UNSPECIFIED&#34;, &#34;PIPELINE_TYPE_BATCH&#34;, &#34;PIPELINE_TYPE_STREAMING&#34;]
  - `schedule_info` (`list[obj]`): Internal scheduling information for a pipeline. If this information is provided, periodic jobs will be created per the schedule. If not, users are responsible for creating jobs externally.
https://cloud.google.com/dataflow/docs/reference/data-pipelines/rest/v1/projects.locations.pipelines#schedulespec When `null`, the `schedule_info` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.data_pipeline_pipeline.schedule_info.new](#fn-schedule_infonew) constructor.
  - `timeouts` (`obj`): Set the `timeouts` field on the resulting resource block. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.data_pipeline_pipeline.timeouts.new](#fn-timeoutsnew) constructor.
  - `workload` (`list[obj]`): Workload information for creating new jobs.
https://cloud.google.com/dataflow/docs/reference/data-pipelines/rest/v1/projects.locations.pipelines#workload When `null`, the `workload` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.data_pipeline_pipeline.workload.new](#fn-workloadnew) constructor.

**Returns**:
- A mixin object that injects the new resource into the root Terraform configuration.


### fn newAttrs

```ts
newAttrs()
```


`google.data_pipeline_pipeline.newAttrs` constructs a new object with attributes and blocks configured for the `data_pipeline_pipeline`
Terraform resource.

Unlike [google.data_pipeline_pipeline.new](#fn-new), this function will not inject the `resource`
block into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the
[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.

This is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to
injecting into a complete block.

**Args**:
  - `display_name` (`string`): The display name of the pipeline. It can contain only letters ([A-Za-z]), numbers ([0-9]), hyphens (-), and underscores (_). When `null`, the `display_name` field will be omitted from the resulting object.
  - `name` (`string`): &#34;The pipeline name. For example&#39;: &#39;projects/PROJECT_ID/locations/LOCATION_ID/pipelines/PIPELINE_ID.&#34;
&#34;- PROJECT_ID can contain letters ([A-Za-z]), numbers ([0-9]), hyphens (-), colons (:), and periods (.). For more information, see Identifying projects.&#34;
&#34;LOCATION_ID is the canonical ID for the pipeline&#39;s location. The list of available locations can be obtained by calling google.cloud.location.Locations.ListLocations. Note that the Data Pipelines service is not available in all regions. It depends on Cloud Scheduler, an App Engine application, so it&#39;s only available in App Engine regions.&#34;
&#34;PIPELINE_ID is the ID of the pipeline. Must be unique for the selected project and location.&#34;
  - `pipeline_sources` (`obj`): The sources of the pipeline (for example, Dataplex). The keys and values are set by the corresponding sources during pipeline creation.
An object containing a list of &#34;key&#34;: value pairs. Example: { &#34;name&#34;: &#34;wrench&#34;, &#34;mass&#34;: &#34;1.3kg&#34;, &#34;count&#34;: &#34;3&#34; }. When `null`, the `pipeline_sources` field will be omitted from the resulting object.
  - `project` (`string`): Set the `project` field on the resulting object. When `null`, the `project` field will be omitted from the resulting object.
  - `region` (`string`): A reference to the region When `null`, the `region` field will be omitted from the resulting object.
  - `scheduler_service_account_email` (`string`): Optional. A service account email to be used with the Cloud Scheduler job. If not specified, the default compute engine service account will be used. When `null`, the `scheduler_service_account_email` field will be omitted from the resulting object.
  - `state` (`string`): The state of the pipeline. When the pipeline is created, the state is set to &#39;PIPELINE_STATE_ACTIVE&#39; by default. State changes can be requested by setting the state to stopping, paused, or resuming. State cannot be changed through pipelines.patch requests.
https://cloud.google.com/dataflow/docs/reference/data-pipelines/rest/v1/projects.locations.pipelines#state Possible values: [&#34;STATE_UNSPECIFIED&#34;, &#34;STATE_RESUMING&#34;, &#34;STATE_ACTIVE&#34;, &#34;STATE_STOPPING&#34;, &#34;STATE_ARCHIVED&#34;, &#34;STATE_PAUSED&#34;]
  - `type` (`string`): The type of the pipeline. This field affects the scheduling of the pipeline and the type of metrics to show for the pipeline.
https://cloud.google.com/dataflow/docs/reference/data-pipelines/rest/v1/projects.locations.pipelines#pipelinetype Possible values: [&#34;PIPELINE_TYPE_UNSPECIFIED&#34;, &#34;PIPELINE_TYPE_BATCH&#34;, &#34;PIPELINE_TYPE_STREAMING&#34;]
  - `schedule_info` (`list[obj]`): Internal scheduling information for a pipeline. If this information is provided, periodic jobs will be created per the schedule. If not, users are responsible for creating jobs externally.
https://cloud.google.com/dataflow/docs/reference/data-pipelines/rest/v1/projects.locations.pipelines#schedulespec When `null`, the `schedule_info` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.data_pipeline_pipeline.schedule_info.new](#fn-schedule_infonew) constructor.
  - `timeouts` (`obj`): Set the `timeouts` field on the resulting object. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.data_pipeline_pipeline.timeouts.new](#fn-timeoutsnew) constructor.
  - `workload` (`list[obj]`): Workload information for creating new jobs.
https://cloud.google.com/dataflow/docs/reference/data-pipelines/rest/v1/projects.locations.pipelines#workload When `null`, the `workload` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.data_pipeline_pipeline.workload.new](#fn-workloadnew) constructor.

**Returns**:
  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `data_pipeline_pipeline` resource into the root Terraform configuration.


### fn withDisplayName

```ts
withDisplayName()
```

`google.string.withDisplayName` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the display_name field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `display_name` field.


### fn withName

```ts
withName()
```

`google.string.withName` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the name field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `name` field.


### fn withPipelineSources

```ts
withPipelineSources()
```

`google.obj.withPipelineSources` constructs a mixin object that can be merged into the `obj`
Terraform resource block to set or update the pipeline_sources field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`obj`): The value to set for the `pipeline_sources` field.


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


### fn withScheduleInfo

```ts
withScheduleInfo()
```

`google.list[obj].withScheduleInfo` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the schedule_info field.

This function will replace the array with the passed in `value`. If you wish to instead append the
passed in value to the existing array, use the [google.list[obj].withScheduleInfoMixin](TODO) function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `schedule_info` field.


### fn withScheduleInfoMixin

```ts
withScheduleInfoMixin()
```

`google.list[obj].withScheduleInfoMixin` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the schedule_info field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google.list[obj].withScheduleInfo](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `schedule_info` field.


### fn withSchedulerServiceAccountEmail

```ts
withSchedulerServiceAccountEmail()
```

`google.string.withSchedulerServiceAccountEmail` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the scheduler_service_account_email field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `scheduler_service_account_email` field.


### fn withState

```ts
withState()
```

`google.string.withState` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the state field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `state` field.


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


### fn withWorkload

```ts
withWorkload()
```

`google.list[obj].withWorkload` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the workload field.

This function will replace the array with the passed in `value`. If you wish to instead append the
passed in value to the existing array, use the [google.list[obj].withWorkloadMixin](TODO) function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `workload` field.


### fn withWorkloadMixin

```ts
withWorkloadMixin()
```

`google.list[obj].withWorkloadMixin` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the workload field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google.list[obj].withWorkload](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `workload` field.


## obj schedule_info



### fn schedule_info.new

```ts
new()
```


`google.data_pipeline_pipeline.schedule_info.new` constructs a new object with attributes and blocks configured for the `schedule_info`
Terraform sub block.



**Args**:
  - `schedule` (`string`): Unix-cron format of the schedule. This information is retrieved from the linked Cloud Scheduler. When `null`, the `schedule` field will be omitted from the resulting object.
  - `time_zone` (`string`): Timezone ID. This matches the timezone IDs used by the Cloud Scheduler API. If empty, UTC time is assumed. When `null`, the `time_zone` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `schedule_info` sub block.


## obj timeouts



### fn timeouts.new

```ts
new()
```


`google.data_pipeline_pipeline.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`
Terraform sub block.



**Args**:
  - `create` (`string`): Set the `create` field on the resulting object. When `null`, the `create` field will be omitted from the resulting object.
  - `delete` (`string`): Set the `delete` field on the resulting object. When `null`, the `delete` field will be omitted from the resulting object.
  - `update` (`string`): Set the `update` field on the resulting object. When `null`, the `update` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `timeouts` sub block.


## obj workload



### fn workload.new

```ts
new()
```


`google.data_pipeline_pipeline.workload.new` constructs a new object with attributes and blocks configured for the `workload`
Terraform sub block.



**Args**:
  - `dataflow_flex_template_request` (`list[obj]`): Template information and additional parameters needed to launch a Dataflow job using the flex launch API.
https://cloud.google.com/dataflow/docs/reference/data-pipelines/rest/v1/projects.locations.pipelines#launchflextemplaterequest When `null`, the `dataflow_flex_template_request` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.data_pipeline_pipeline.workload.dataflow_flex_template_request.new](#fn-workloaddataflow_flex_template_requestnew) constructor.
  - `dataflow_launch_template_request` (`list[obj]`): Template information and additional parameters needed to launch a Dataflow job using the standard launch API.
https://cloud.google.com/dataflow/docs/reference/data-pipelines/rest/v1/projects.locations.pipelines#launchtemplaterequest When `null`, the `dataflow_launch_template_request` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.data_pipeline_pipeline.workload.dataflow_launch_template_request.new](#fn-workloaddataflow_launch_template_requestnew) constructor.

**Returns**:
  - An attribute object that represents the `workload` sub block.


## obj workload.dataflow_flex_template_request



### fn workload.dataflow_flex_template_request.new

```ts
new()
```


`google.data_pipeline_pipeline.workload.dataflow_flex_template_request.new` constructs a new object with attributes and blocks configured for the `dataflow_flex_template_request`
Terraform sub block.



**Args**:
  - `location` (`string`): The regional endpoint to which to direct the request. For example, us-central1, us-west1.
  - `project_id` (`string`): The ID of the Cloud Platform project that the job belongs to.
  - `validate_only` (`bool`): If true, the request is validated but not actually executed. Defaults to false. When `null`, the `validate_only` field will be omitted from the resulting object.
  - `launch_parameter` (`list[obj]`): Parameter to launch a job from a Flex Template.
https://cloud.google.com/dataflow/docs/reference/data-pipelines/rest/v1/projects.locations.pipelines#launchflextemplateparameter When `null`, the `launch_parameter` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.data_pipeline_pipeline.workload.dataflow_flex_template_request.launch_parameter.new](#fn-workloadworkloadlaunch_parameternew) constructor.

**Returns**:
  - An attribute object that represents the `dataflow_flex_template_request` sub block.


## obj workload.dataflow_flex_template_request.launch_parameter



### fn workload.dataflow_flex_template_request.launch_parameter.new

```ts
new()
```


`google.data_pipeline_pipeline.workload.dataflow_flex_template_request.launch_parameter.new` constructs a new object with attributes and blocks configured for the `launch_parameter`
Terraform sub block.



**Args**:
  - `container_spec_gcs_path` (`string`): Cloud Storage path to a file with a JSON-serialized ContainerSpec as content. When `null`, the `container_spec_gcs_path` field will be omitted from the resulting object.
  - `job_name` (`string`): The job name to use for the created job. For an update job request, the job name should be the same as the existing running job.
  - `launch_options` (`obj`): Launch options for this Flex Template job. This is a common set of options across languages and templates. This should not be used to pass job parameters.
&#39;An object containing a list of &#34;key&#34;: value pairs. Example: { &#34;name&#34;: &#34;wrench&#34;, &#34;mass&#34;: &#34;1.3kg&#34;, &#34;count&#34;: &#34;3&#34; }.&#39; When `null`, the `launch_options` field will be omitted from the resulting object.
  - `parameters` (`obj`): &#39;The parameters for the Flex Template. Example: {&#34;numWorkers&#34;:&#34;5&#34;}&#39;
&#39;An object containing a list of &#34;key&#34;: value pairs. Example: { &#34;name&#34;: &#34;wrench&#34;, &#34;mass&#34;: &#34;1.3kg&#34;, &#34;count&#34;: &#34;3&#34; }.&#39; When `null`, the `parameters` field will be omitted from the resulting object.
  - `transform_name_mappings` (`obj`): &#39;Use this to pass transform name mappings for streaming update jobs. Example: {&#34;oldTransformName&#34;:&#34;newTransformName&#34;,...}&#39;
&#39;An object containing a list of &#34;key&#34;: value pairs. Example: { &#34;name&#34;: &#34;wrench&#34;, &#34;mass&#34;: &#34;1.3kg&#34;, &#34;count&#34;: &#34;3&#34; }.&#39; When `null`, the `transform_name_mappings` field will be omitted from the resulting object.
  - `update` (`bool`): Set this to true if you are sending a request to update a running streaming job. When set, the job name should be the same as the running job. When `null`, the `update` field will be omitted from the resulting object.
  - `environment` (`list[obj]`): The runtime environment for the Flex Template job.
https://cloud.google.com/dataflow/docs/reference/data-pipelines/rest/v1/projects.locations.pipelines#FlexTemplateRuntimeEnvironment When `null`, the `environment` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.data_pipeline_pipeline.workload.dataflow_flex_template_request.launch_parameter.environment.new](#fn-workloadworkloaddataflow_flex_template_requestenvironmentnew) constructor.

**Returns**:
  - An attribute object that represents the `launch_parameter` sub block.


## obj workload.dataflow_flex_template_request.launch_parameter.environment



### fn workload.dataflow_flex_template_request.launch_parameter.environment.new

```ts
new()
```


`google.data_pipeline_pipeline.workload.dataflow_flex_template_request.launch_parameter.environment.new` constructs a new object with attributes and blocks configured for the `environment`
Terraform sub block.



**Args**:
  - `additional_experiments` (`list`): Additional experiment flags for the job. When `null`, the `additional_experiments` field will be omitted from the resulting object.
  - `additional_user_labels` (`obj`): Additional user labels to be specified for the job. Keys and values should follow the restrictions specified in the labeling restrictions page. An object containing a list of key/value pairs.
&#39;Example: { &#34;name&#34;: &#34;wrench&#34;, &#34;mass&#34;: &#34;1kg&#34;, &#34;count&#34;: &#34;3&#34; }.&#39;
&#39;An object containing a list of &#34;key&#34;: value pairs. Example: { &#34;name&#34;: &#34;wrench&#34;, &#34;mass&#34;: &#34;1.3kg&#34;, &#34;count&#34;: &#34;3&#34; }.&#39; When `null`, the `additional_user_labels` field will be omitted from the resulting object.
  - `enable_streaming_engine` (`bool`): Whether to enable Streaming Engine for the job. When `null`, the `enable_streaming_engine` field will be omitted from the resulting object.
  - `flexrs_goal` (`string`): Set FlexRS goal for the job. https://cloud.google.com/dataflow/docs/guides/flexrs
https://cloud.google.com/dataflow/docs/reference/data-pipelines/rest/v1/projects.locations.pipelines#FlexResourceSchedulingGoal Possible values: [&#34;FLEXRS_UNSPECIFIED&#34;, &#34;FLEXRS_SPEED_OPTIMIZED&#34;, &#34;FLEXRS_COST_OPTIMIZED&#34;] When `null`, the `flexrs_goal` field will be omitted from the resulting object.
  - `ip_configuration` (`string`): Configuration for VM IPs.
https://cloud.google.com/dataflow/docs/reference/data-pipelines/rest/v1/projects.locations.pipelines#WorkerIPAddressConfiguration Possible values: [&#34;WORKER_IP_UNSPECIFIED&#34;, &#34;WORKER_IP_PUBLIC&#34;, &#34;WORKER_IP_PRIVATE&#34;] When `null`, the `ip_configuration` field will be omitted from the resulting object.
  - `kms_key_name` (`string`): &#39;Name for the Cloud KMS key for the job. The key format is: projects//locations//keyRings//cryptoKeys/&#39; When `null`, the `kms_key_name` field will be omitted from the resulting object.
  - `machine_type` (`string`): The machine type to use for the job. Defaults to the value from the template if not specified. When `null`, the `machine_type` field will be omitted from the resulting object.
  - `max_workers` (`number`): The maximum number of Compute Engine instances to be made available to your pipeline during execution, from 1 to 1000. When `null`, the `max_workers` field will be omitted from the resulting object.
  - `network` (`string`): Network to which VMs will be assigned. If empty or unspecified, the service will use the network &#34;default&#34;. When `null`, the `network` field will be omitted from the resulting object.
  - `num_workers` (`number`): The initial number of Compute Engine instances for the job. When `null`, the `num_workers` field will be omitted from the resulting object.
  - `service_account_email` (`string`): The email address of the service account to run the job as. When `null`, the `service_account_email` field will be omitted from the resulting object.
  - `subnetwork` (`string`): Subnetwork to which VMs will be assigned, if desired. You can specify a subnetwork using either a complete URL or an abbreviated path. Expected to be of the form &#34;https://www.googleapis.com/compute/v1/projects/HOST_PROJECT_ID/regions/REGION/subnetworks/SUBNETWORK&#34; or &#34;regions/REGION/subnetworks/SUBNETWORK&#34;. If the subnetwork is located in a Shared VPC network, you must use the complete URL. When `null`, the `subnetwork` field will be omitted from the resulting object.
  - `temp_location` (`string`): The Cloud Storage path to use for temporary files. Must be a valid Cloud Storage URL, beginning with gs://. When `null`, the `temp_location` field will be omitted from the resulting object.
  - `worker_region` (`string`): The Compute Engine region (https://cloud.google.com/compute/docs/regions-zones/regions-zones) in which worker processing should occur, e.g. &#34;us-west1&#34;. Mutually exclusive with workerZone. If neither workerRegion nor workerZone is specified, default to the control plane&#39;s region. When `null`, the `worker_region` field will be omitted from the resulting object.
  - `worker_zone` (`string`): The Compute Engine zone (https://cloud.google.com/compute/docs/regions-zones/regions-zones) in which worker processing should occur, e.g. &#34;us-west1-a&#34;. Mutually exclusive with workerRegion. If neither workerRegion nor workerZone is specified, a zone in the control plane&#39;s region is chosen based on available capacity. If both workerZone and zone are set, workerZone takes precedence. When `null`, the `worker_zone` field will be omitted from the resulting object.
  - `zone` (`string`): The Compute Engine availability zone for launching worker instances to run your pipeline. In the future, workerZone will take precedence. When `null`, the `zone` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `environment` sub block.


## obj workload.dataflow_launch_template_request



### fn workload.dataflow_launch_template_request.new

```ts
new()
```


`google.data_pipeline_pipeline.workload.dataflow_launch_template_request.new` constructs a new object with attributes and blocks configured for the `dataflow_launch_template_request`
Terraform sub block.



**Args**:
  - `gcs_path` (`string`): A Cloud Storage path to the template from which to create the job. Must be a valid Cloud Storage URL, beginning with &#39;gs://&#39;. When `null`, the `gcs_path` field will be omitted from the resulting object.
  - `location` (`string`): The regional endpoint to which to direct the request. When `null`, the `location` field will be omitted from the resulting object.
  - `project_id` (`string`): The ID of the Cloud Platform project that the job belongs to.
  - `validate_only` (`bool`): Set the `validate_only` field on the resulting object. When `null`, the `validate_only` field will be omitted from the resulting object.
  - `launch_parameters` (`list[obj]`): The parameters of the template to launch. This should be part of the body of the POST request.
https://cloud.google.com/dataflow/docs/reference/data-pipelines/rest/v1/projects.locations.pipelines#launchtemplateparameters When `null`, the `launch_parameters` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.data_pipeline_pipeline.workload.dataflow_launch_template_request.launch_parameters.new](#fn-workloadworkloadlaunch_parametersnew) constructor.

**Returns**:
  - An attribute object that represents the `dataflow_launch_template_request` sub block.


## obj workload.dataflow_launch_template_request.launch_parameters



### fn workload.dataflow_launch_template_request.launch_parameters.new

```ts
new()
```


`google.data_pipeline_pipeline.workload.dataflow_launch_template_request.launch_parameters.new` constructs a new object with attributes and blocks configured for the `launch_parameters`
Terraform sub block.



**Args**:
  - `job_name` (`string`): The job name to use for the created job.
  - `parameters` (`obj`): The runtime parameters to pass to the job.
&#39;An object containing a list of &#34;key&#34;: value pairs. Example: { &#34;name&#34;: &#34;wrench&#34;, &#34;mass&#34;: &#34;1.3kg&#34;, &#34;count&#34;: &#34;3&#34; }.&#39; When `null`, the `parameters` field will be omitted from the resulting object.
  - `transform_name_mapping` (`obj`): Map of transform name prefixes of the job to be replaced to the corresponding name prefixes of the new job. Only applicable when updating a pipeline.
&#39;An object containing a list of &#34;key&#34;: value pairs. Example: { &#34;name&#34;: &#34;wrench&#34;, &#34;mass&#34;: &#34;1.3kg&#34;, &#34;count&#34;: &#34;3&#34; }.&#39; When `null`, the `transform_name_mapping` field will be omitted from the resulting object.
  - `update` (`bool`): If set, replace the existing pipeline with the name specified by jobName with this pipeline, preserving state. When `null`, the `update` field will be omitted from the resulting object.
  - `environment` (`list[obj]`): The runtime environment for the job.
https://cloud.google.com/dataflow/docs/reference/data-pipelines/rest/v1/projects.locations.pipelines#RuntimeEnvironment When `null`, the `environment` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.data_pipeline_pipeline.workload.dataflow_launch_template_request.launch_parameters.environment.new](#fn-workloadworkloaddataflow_launch_template_requestenvironmentnew) constructor.

**Returns**:
  - An attribute object that represents the `launch_parameters` sub block.


## obj workload.dataflow_launch_template_request.launch_parameters.environment



### fn workload.dataflow_launch_template_request.launch_parameters.environment.new

```ts
new()
```


`google.data_pipeline_pipeline.workload.dataflow_launch_template_request.launch_parameters.environment.new` constructs a new object with attributes and blocks configured for the `environment`
Terraform sub block.



**Args**:
  - `additional_experiments` (`list`): Additional experiment flags for the job. When `null`, the `additional_experiments` field will be omitted from the resulting object.
  - `additional_user_labels` (`obj`): Additional user labels to be specified for the job. Keys and values should follow the restrictions specified in the labeling restrictions page. An object containing a list of key/value pairs.
&#39;Example: { &#34;name&#34;: &#34;wrench&#34;, &#34;mass&#34;: &#34;1kg&#34;, &#34;count&#34;: &#34;3&#34; }.&#39;
&#39;An object containing a list of &#34;key&#34;: value pairs. Example: { &#34;name&#34;: &#34;wrench&#34;, &#34;mass&#34;: &#34;1.3kg&#34;, &#34;count&#34;: &#34;3&#34; }.&#39; When `null`, the `additional_user_labels` field will be omitted from the resulting object.
  - `bypass_temp_dir_validation` (`bool`): Whether to bypass the safety checks for the job&#39;s temporary directory. Use with caution. When `null`, the `bypass_temp_dir_validation` field will be omitted from the resulting object.
  - `enable_streaming_engine` (`bool`): Whether to enable Streaming Engine for the job. When `null`, the `enable_streaming_engine` field will be omitted from the resulting object.
  - `ip_configuration` (`string`): Configuration for VM IPs.
https://cloud.google.com/dataflow/docs/reference/data-pipelines/rest/v1/projects.locations.pipelines#WorkerIPAddressConfiguration Possible values: [&#34;WORKER_IP_UNSPECIFIED&#34;, &#34;WORKER_IP_PUBLIC&#34;, &#34;WORKER_IP_PRIVATE&#34;] When `null`, the `ip_configuration` field will be omitted from the resulting object.
  - `kms_key_name` (`string`): &#39;Name for the Cloud KMS key for the job. The key format is: projects//locations//keyRings//cryptoKeys/&#39; When `null`, the `kms_key_name` field will be omitted from the resulting object.
  - `machine_type` (`string`): The machine type to use for the job. Defaults to the value from the template if not specified. When `null`, the `machine_type` field will be omitted from the resulting object.
  - `max_workers` (`number`): The maximum number of Compute Engine instances to be made available to your pipeline during execution, from 1 to 1000. When `null`, the `max_workers` field will be omitted from the resulting object.
  - `network` (`string`): Network to which VMs will be assigned. If empty or unspecified, the service will use the network &#34;default&#34;. When `null`, the `network` field will be omitted from the resulting object.
  - `num_workers` (`number`): The initial number of Compute Engine instances for the job. When `null`, the `num_workers` field will be omitted from the resulting object.
  - `service_account_email` (`string`): The email address of the service account to run the job as. When `null`, the `service_account_email` field will be omitted from the resulting object.
  - `subnetwork` (`string`): Subnetwork to which VMs will be assigned, if desired. You can specify a subnetwork using either a complete URL or an abbreviated path. Expected to be of the form &#34;https://www.googleapis.com/compute/v1/projects/HOST_PROJECT_ID/regions/REGION/subnetworks/SUBNETWORK&#34; or &#34;regions/REGION/subnetworks/SUBNETWORK&#34;. If the subnetwork is located in a Shared VPC network, you must use the complete URL. When `null`, the `subnetwork` field will be omitted from the resulting object.
  - `temp_location` (`string`): The Cloud Storage path to use for temporary files. Must be a valid Cloud Storage URL, beginning with gs://. When `null`, the `temp_location` field will be omitted from the resulting object.
  - `worker_region` (`string`): The Compute Engine region (https://cloud.google.com/compute/docs/regions-zones/regions-zones) in which worker processing should occur, e.g. &#34;us-west1&#34;. Mutually exclusive with workerZone. If neither workerRegion nor workerZone is specified, default to the control plane&#39;s region. When `null`, the `worker_region` field will be omitted from the resulting object.
  - `worker_zone` (`string`): The Compute Engine zone (https://cloud.google.com/compute/docs/regions-zones/regions-zones) in which worker processing should occur, e.g. &#34;us-west1-a&#34;. Mutually exclusive with workerRegion. If neither workerRegion nor workerZone is specified, a zone in the control plane&#39;s region is chosen based on available capacity. If both workerZone and zone are set, workerZone takes precedence. When `null`, the `worker_zone` field will be omitted from the resulting object.
  - `zone` (`string`): The Compute Engine availability zone for launching worker instances to run your pipeline. In the future, workerZone will take precedence. When `null`, the `zone` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `environment` sub block.
