---
permalink: /dataflow_job/
---

# dataflow_job

`dataflow_job` represents the `google_dataflow_job` Terraform resource.



This package contains functions and utilities for setting up the resource using Jsonnet code.


## Index

* [`fn new()`](#fn-new)
* [`fn newAttrs()`](#fn-newattrs)
* [`fn withAdditionalExperiments()`](#fn-withadditionalexperiments)
* [`fn withEnableStreamingEngine()`](#fn-withenablestreamingengine)
* [`fn withIpConfiguration()`](#fn-withipconfiguration)
* [`fn withKmsKeyName()`](#fn-withkmskeyname)
* [`fn withLabels()`](#fn-withlabels)
* [`fn withMachineType()`](#fn-withmachinetype)
* [`fn withMaxWorkers()`](#fn-withmaxworkers)
* [`fn withName()`](#fn-withname)
* [`fn withNetwork()`](#fn-withnetwork)
* [`fn withOnDelete()`](#fn-withondelete)
* [`fn withParameters()`](#fn-withparameters)
* [`fn withProject()`](#fn-withproject)
* [`fn withRegion()`](#fn-withregion)
* [`fn withServiceAccountEmail()`](#fn-withserviceaccountemail)
* [`fn withSkipWaitOnJobTermination()`](#fn-withskipwaitonjobtermination)
* [`fn withSubnetwork()`](#fn-withsubnetwork)
* [`fn withTempGcsLocation()`](#fn-withtempgcslocation)
* [`fn withTemplateGcsPath()`](#fn-withtemplategcspath)
* [`fn withTimeouts()`](#fn-withtimeouts)
* [`fn withTimeoutsMixin()`](#fn-withtimeoutsmixin)
* [`fn withTransformNameMapping()`](#fn-withtransformnamemapping)
* [`fn withZone()`](#fn-withzone)
* [`obj timeouts`](#obj-timeouts)
  * [`fn new()`](#fn-timeoutsnew)

## Fields

### fn new

```ts
new()
```


`google.dataflow_job.new` injects a new `google_dataflow_job` Terraform `resource`
block into the root module document.

Additionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the
resource. For example, if you added a new instance to the root using:

    # arguments omitted for brevity
    google.dataflow_job.new('some_id')

You can get the reference to the `id` field of the created `google.dataflow_job` using the reference:

    $._ref.google_dataflow_job.some_id.get('id')

This is the same as directly entering `"${ google_dataflow_job.some_id.id }"` as the value.

NOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,
or `$` to refer to the root object. Instead, make an explicit outer object using `local`.

**Args**:
  - `resourceLabel` (`string`): The name label of the block.
  - `additional_experiments` (`list`): List of experiments that should be used by the job. An example value is [&#34;enable_stackdriver_agent_metrics&#34;]. When `null`, the `additional_experiments` field will be omitted from the resulting object.
  - `enable_streaming_engine` (`bool`): Indicates if the job should use the streaming engine feature. When `null`, the `enable_streaming_engine` field will be omitted from the resulting object.
  - `ip_configuration` (`string`): The configuration for VM IPs. Options are &#34;WORKER_IP_PUBLIC&#34; or &#34;WORKER_IP_PRIVATE&#34;. When `null`, the `ip_configuration` field will be omitted from the resulting object.
  - `kms_key_name` (`string`): The name for the Cloud KMS key for the job. Key format is: projects/PROJECT_ID/locations/LOCATION/keyRings/KEY_RING/cryptoKeys/KEY When `null`, the `kms_key_name` field will be omitted from the resulting object.
  - `labels` (`obj`): User labels to be specified for the job. Keys and values should follow the restrictions specified in the labeling restrictions page. NOTE: Google-provided Dataflow templates often provide default labels that begin with goog-dataflow-provided. Unless explicitly set in config, these labels will be ignored to prevent diffs on re-apply. When `null`, the `labels` field will be omitted from the resulting object.
  - `machine_type` (`string`): The machine type to use for the job. When `null`, the `machine_type` field will be omitted from the resulting object.
  - `max_workers` (`number`): The number of workers permitted to work on the job. More workers may improve processing speed at additional cost. When `null`, the `max_workers` field will be omitted from the resulting object.
  - `name` (`string`): A unique name for the resource, required by Dataflow.
  - `network` (`string`): The network to which VMs will be assigned. If it is not provided, &#34;default&#34; will be used. When `null`, the `network` field will be omitted from the resulting object.
  - `on_delete` (`string`): One of &#34;drain&#34; or &#34;cancel&#34;. Specifies behavior of deletion during terraform destroy. When `null`, the `on_delete` field will be omitted from the resulting object.
  - `parameters` (`obj`): Key/Value pairs to be passed to the Dataflow job (as used in the template). When `null`, the `parameters` field will be omitted from the resulting object.
  - `project` (`string`): The project in which the resource belongs. When `null`, the `project` field will be omitted from the resulting object.
  - `region` (`string`): The region in which the created job should run. When `null`, the `region` field will be omitted from the resulting object.
  - `service_account_email` (`string`): The Service Account email used to create the job. When `null`, the `service_account_email` field will be omitted from the resulting object.
  - `skip_wait_on_job_termination` (`bool`): If true, treat DRAINING and CANCELLING as terminal job states and do not wait for further changes before removing from terraform state and moving on. WARNING: this will lead to job name conflicts if you do not ensure that the job names are different, e.g. by embedding a release ID or by using a random_id. When `null`, the `skip_wait_on_job_termination` field will be omitted from the resulting object.
  - `subnetwork` (`string`): The subnetwork to which VMs will be assigned. Should be of the form &#34;regions/REGION/subnetworks/SUBNETWORK&#34;. When `null`, the `subnetwork` field will be omitted from the resulting object.
  - `temp_gcs_location` (`string`): A writeable location on Google Cloud Storage for the Dataflow job to dump its temporary data.
  - `template_gcs_path` (`string`): The Google Cloud Storage path to the Dataflow job template.
  - `transform_name_mapping` (`obj`): Only applicable when updating a pipeline. Map of transform name prefixes of the job to be replaced with the corresponding name prefixes of the new job. When `null`, the `transform_name_mapping` field will be omitted from the resulting object.
  - `zone` (`string`): The zone in which the created job should run. If it is not provided, the provider zone is used. When `null`, the `zone` field will be omitted from the resulting object.
  - `timeouts` (`obj`):  When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dataflow_job.timeouts.new](#fn-dataflow_jobtimeoutsnew) constructor.

**Returns**:
- A mixin object that injects the new resource into the root Terraform configuration.


### fn newAttrs

```ts
newAttrs()
```


`google.dataflow_job.newAttrs` constructs a new object with attributes and blocks configured for the `dataflow_job`
Terraform resource.

Unlike [google.dataflow_job.new](#fn-dataflow_jobnew), this function will not inject the `resource`
block into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the
[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.

This is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to
injecting into a complete block.

**Args**:
  - `additional_experiments` (`list`): List of experiments that should be used by the job. An example value is [&#34;enable_stackdriver_agent_metrics&#34;]. When `null`, the `additional_experiments` field will be omitted from the resulting object.
  - `enable_streaming_engine` (`bool`): Indicates if the job should use the streaming engine feature. When `null`, the `enable_streaming_engine` field will be omitted from the resulting object.
  - `ip_configuration` (`string`): The configuration for VM IPs. Options are &#34;WORKER_IP_PUBLIC&#34; or &#34;WORKER_IP_PRIVATE&#34;. When `null`, the `ip_configuration` field will be omitted from the resulting object.
  - `kms_key_name` (`string`): The name for the Cloud KMS key for the job. Key format is: projects/PROJECT_ID/locations/LOCATION/keyRings/KEY_RING/cryptoKeys/KEY When `null`, the `kms_key_name` field will be omitted from the resulting object.
  - `labels` (`obj`): User labels to be specified for the job. Keys and values should follow the restrictions specified in the labeling restrictions page. NOTE: Google-provided Dataflow templates often provide default labels that begin with goog-dataflow-provided. Unless explicitly set in config, these labels will be ignored to prevent diffs on re-apply. When `null`, the `labels` field will be omitted from the resulting object.
  - `machine_type` (`string`): The machine type to use for the job. When `null`, the `machine_type` field will be omitted from the resulting object.
  - `max_workers` (`number`): The number of workers permitted to work on the job. More workers may improve processing speed at additional cost. When `null`, the `max_workers` field will be omitted from the resulting object.
  - `name` (`string`): A unique name for the resource, required by Dataflow.
  - `network` (`string`): The network to which VMs will be assigned. If it is not provided, &#34;default&#34; will be used. When `null`, the `network` field will be omitted from the resulting object.
  - `on_delete` (`string`): One of &#34;drain&#34; or &#34;cancel&#34;. Specifies behavior of deletion during terraform destroy. When `null`, the `on_delete` field will be omitted from the resulting object.
  - `parameters` (`obj`): Key/Value pairs to be passed to the Dataflow job (as used in the template). When `null`, the `parameters` field will be omitted from the resulting object.
  - `project` (`string`): The project in which the resource belongs. When `null`, the `project` field will be omitted from the resulting object.
  - `region` (`string`): The region in which the created job should run. When `null`, the `region` field will be omitted from the resulting object.
  - `service_account_email` (`string`): The Service Account email used to create the job. When `null`, the `service_account_email` field will be omitted from the resulting object.
  - `skip_wait_on_job_termination` (`bool`): If true, treat DRAINING and CANCELLING as terminal job states and do not wait for further changes before removing from terraform state and moving on. WARNING: this will lead to job name conflicts if you do not ensure that the job names are different, e.g. by embedding a release ID or by using a random_id. When `null`, the `skip_wait_on_job_termination` field will be omitted from the resulting object.
  - `subnetwork` (`string`): The subnetwork to which VMs will be assigned. Should be of the form &#34;regions/REGION/subnetworks/SUBNETWORK&#34;. When `null`, the `subnetwork` field will be omitted from the resulting object.
  - `temp_gcs_location` (`string`): A writeable location on Google Cloud Storage for the Dataflow job to dump its temporary data.
  - `template_gcs_path` (`string`): The Google Cloud Storage path to the Dataflow job template.
  - `transform_name_mapping` (`obj`): Only applicable when updating a pipeline. Map of transform name prefixes of the job to be replaced with the corresponding name prefixes of the new job. When `null`, the `transform_name_mapping` field will be omitted from the resulting object.
  - `zone` (`string`): The zone in which the created job should run. If it is not provided, the provider zone is used. When `null`, the `zone` field will be omitted from the resulting object.
  - `timeouts` (`obj`):  When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dataflow_job.timeouts.new](#fn-dataflow_jobtimeoutsnew) constructor.

**Returns**:
  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `dataflow_job` resource into the root Terraform configuration.


### fn withAdditionalExperiments

```ts
withAdditionalExperiments()
```

`google.list.withAdditionalExperiments` constructs a mixin object that can be merged into the `list`
Terraform resource block to set or update the additional_experiments field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list`): The value to set for the `additional_experiments` field.


### fn withEnableStreamingEngine

```ts
withEnableStreamingEngine()
```

`google.bool.withEnableStreamingEngine` constructs a mixin object that can be merged into the `bool`
Terraform resource block to set or update the enable_streaming_engine field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`bool`): The value to set for the `enable_streaming_engine` field.


### fn withIpConfiguration

```ts
withIpConfiguration()
```

`google.string.withIpConfiguration` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the ip_configuration field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `ip_configuration` field.


### fn withKmsKeyName

```ts
withKmsKeyName()
```

`google.string.withKmsKeyName` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the kms_key_name field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `kms_key_name` field.


### fn withLabels

```ts
withLabels()
```

`google.obj.withLabels` constructs a mixin object that can be merged into the `obj`
Terraform resource block to set or update the labels field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`obj`): The value to set for the `labels` field.


### fn withMachineType

```ts
withMachineType()
```

`google.string.withMachineType` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the machine_type field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `machine_type` field.


### fn withMaxWorkers

```ts
withMaxWorkers()
```

`google.number.withMaxWorkers` constructs a mixin object that can be merged into the `number`
Terraform resource block to set or update the max_workers field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`number`): The value to set for the `max_workers` field.


### fn withName

```ts
withName()
```

`google.string.withName` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the name field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `name` field.


### fn withNetwork

```ts
withNetwork()
```

`google.string.withNetwork` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the network field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `network` field.


### fn withOnDelete

```ts
withOnDelete()
```

`google.string.withOnDelete` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the on_delete field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `on_delete` field.


### fn withParameters

```ts
withParameters()
```

`google.obj.withParameters` constructs a mixin object that can be merged into the `obj`
Terraform resource block to set or update the parameters field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`obj`): The value to set for the `parameters` field.


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


### fn withServiceAccountEmail

```ts
withServiceAccountEmail()
```

`google.string.withServiceAccountEmail` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the service_account_email field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `service_account_email` field.


### fn withSkipWaitOnJobTermination

```ts
withSkipWaitOnJobTermination()
```

`google.bool.withSkipWaitOnJobTermination` constructs a mixin object that can be merged into the `bool`
Terraform resource block to set or update the skip_wait_on_job_termination field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`bool`): The value to set for the `skip_wait_on_job_termination` field.


### fn withSubnetwork

```ts
withSubnetwork()
```

`google.string.withSubnetwork` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the subnetwork field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `subnetwork` field.


### fn withTempGcsLocation

```ts
withTempGcsLocation()
```

`google.string.withTempGcsLocation` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the temp_gcs_location field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `temp_gcs_location` field.


### fn withTemplateGcsPath

```ts
withTemplateGcsPath()
```

`google.string.withTemplateGcsPath` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the template_gcs_path field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `template_gcs_path` field.


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


### fn withTransformNameMapping

```ts
withTransformNameMapping()
```

`google.obj.withTransformNameMapping` constructs a mixin object that can be merged into the `obj`
Terraform resource block to set or update the transform_name_mapping field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`obj`): The value to set for the `transform_name_mapping` field.


### fn withZone

```ts
withZone()
```

`google.string.withZone` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the zone field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `zone` field.


## obj timeouts



### fn timeouts.new

```ts
new()
```


`google.dataflow_job.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`
Terraform sub block.



**Args**:
  - `update` (`string`):  When `null`, the `update` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `timeouts` sub block.
