---
permalink: /cloudbuild_worker_pool/
---

# cloudbuild_worker_pool

`cloudbuild_worker_pool` represents the `google_cloudbuild_worker_pool` Terraform resource.



This package contains functions and utilities for setting up the resource using Jsonnet code.


## Index

* [`fn new()`](#fn-new)
* [`fn newAttrs()`](#fn-newattrs)
* [`fn withAnnotations()`](#fn-withannotations)
* [`fn withDisplayName()`](#fn-withdisplayname)
* [`fn withLocation()`](#fn-withlocation)
* [`fn withName()`](#fn-withname)
* [`fn withNetworkConfig()`](#fn-withnetworkconfig)
* [`fn withNetworkConfigMixin()`](#fn-withnetworkconfigmixin)
* [`fn withProject()`](#fn-withproject)
* [`fn withTimeouts()`](#fn-withtimeouts)
* [`fn withTimeoutsMixin()`](#fn-withtimeoutsmixin)
* [`fn withWorkerConfig()`](#fn-withworkerconfig)
* [`fn withWorkerConfigMixin()`](#fn-withworkerconfigmixin)
* [`obj network_config`](#obj-network_config)
  * [`fn new()`](#fn-network_confignew)
* [`obj timeouts`](#obj-timeouts)
  * [`fn new()`](#fn-timeoutsnew)
* [`obj worker_config`](#obj-worker_config)
  * [`fn new()`](#fn-worker_confignew)

## Fields

### fn new

```ts
new()
```


`google.cloudbuild_worker_pool.new` injects a new `google_cloudbuild_worker_pool` Terraform `resource`
block into the root module document.

Additionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the
resource. For example, if you added a new instance to the root using:

    # arguments omitted for brevity
    google.cloudbuild_worker_pool.new('some_id')

You can get the reference to the `id` field of the created `google.cloudbuild_worker_pool` using the reference:

    $._ref.google_cloudbuild_worker_pool.some_id.get('id')

This is the same as directly entering `"${ google_cloudbuild_worker_pool.some_id.id }"` as the value.

NOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,
or `$` to refer to the root object. Instead, make an explicit outer object using `local`.

**Args**:
  - `resourceLabel` (`string`): The name label of the block.
  - `annotations` (`obj`): User specified annotations. See https://google.aip.dev/128#annotations for more details such as format and size limitations.

**Note**: This field is non-authoritative, and will only manage the annotations present in your configuration.
Please refer to the field `effective_annotations` for all of the annotations present on the resource. When `null`, the `annotations` field will be omitted from the resulting object.
  - `display_name` (`string`): A user-specified, human-readable name for the `WorkerPool`. If provided, this value must be 1-63 characters. When `null`, the `display_name` field will be omitted from the resulting object.
  - `location` (`string`): The location for the resource
  - `name` (`string`): User-defined name of the `WorkerPool`.
  - `project` (`string`): The project for the resource When `null`, the `project` field will be omitted from the resulting object.
  - `network_config` (`list[obj]`): Network configuration for the `WorkerPool`. When `null`, the `network_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.cloudbuild_worker_pool.network_config.new](#fn-network_confignew) constructor.
  - `timeouts` (`obj`): Set the `timeouts` field on the resulting resource block. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.cloudbuild_worker_pool.timeouts.new](#fn-timeoutsnew) constructor.
  - `worker_config` (`list[obj]`): Configuration to be used for a creating workers in the `WorkerPool`. When `null`, the `worker_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.cloudbuild_worker_pool.worker_config.new](#fn-worker_confignew) constructor.

**Returns**:
- A mixin object that injects the new resource into the root Terraform configuration.


### fn newAttrs

```ts
newAttrs()
```


`google.cloudbuild_worker_pool.newAttrs` constructs a new object with attributes and blocks configured for the `cloudbuild_worker_pool`
Terraform resource.

Unlike [google.cloudbuild_worker_pool.new](#fn-new), this function will not inject the `resource`
block into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the
[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.

This is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to
injecting into a complete block.

**Args**:
  - `annotations` (`obj`): User specified annotations. See https://google.aip.dev/128#annotations for more details such as format and size limitations.

**Note**: This field is non-authoritative, and will only manage the annotations present in your configuration.
Please refer to the field `effective_annotations` for all of the annotations present on the resource. When `null`, the `annotations` field will be omitted from the resulting object.
  - `display_name` (`string`): A user-specified, human-readable name for the `WorkerPool`. If provided, this value must be 1-63 characters. When `null`, the `display_name` field will be omitted from the resulting object.
  - `location` (`string`): The location for the resource
  - `name` (`string`): User-defined name of the `WorkerPool`.
  - `project` (`string`): The project for the resource When `null`, the `project` field will be omitted from the resulting object.
  - `network_config` (`list[obj]`): Network configuration for the `WorkerPool`. When `null`, the `network_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.cloudbuild_worker_pool.network_config.new](#fn-network_confignew) constructor.
  - `timeouts` (`obj`): Set the `timeouts` field on the resulting object. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.cloudbuild_worker_pool.timeouts.new](#fn-timeoutsnew) constructor.
  - `worker_config` (`list[obj]`): Configuration to be used for a creating workers in the `WorkerPool`. When `null`, the `worker_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.cloudbuild_worker_pool.worker_config.new](#fn-worker_confignew) constructor.

**Returns**:
  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `cloudbuild_worker_pool` resource into the root Terraform configuration.


### fn withAnnotations

```ts
withAnnotations()
```

`google.obj.withAnnotations` constructs a mixin object that can be merged into the `obj`
Terraform resource block to set or update the annotations field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`obj`): The value to set for the `annotations` field.


### fn withDisplayName

```ts
withDisplayName()
```

`google.string.withDisplayName` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the display_name field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `display_name` field.


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


### fn withNetworkConfig

```ts
withNetworkConfig()
```

`google.list[obj].withNetworkConfig` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the network_config field.

This function will replace the array with the passed in `value`. If you wish to instead append the
passed in value to the existing array, use the [google.list[obj].withNetworkConfigMixin](TODO) function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `network_config` field.


### fn withNetworkConfigMixin

```ts
withNetworkConfigMixin()
```

`google.list[obj].withNetworkConfigMixin` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the network_config field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google.list[obj].withNetworkConfig](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `network_config` field.


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


### fn withWorkerConfig

```ts
withWorkerConfig()
```

`google.list[obj].withWorkerConfig` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the worker_config field.

This function will replace the array with the passed in `value`. If you wish to instead append the
passed in value to the existing array, use the [google.list[obj].withWorkerConfigMixin](TODO) function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `worker_config` field.


### fn withWorkerConfigMixin

```ts
withWorkerConfigMixin()
```

`google.list[obj].withWorkerConfigMixin` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the worker_config field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google.list[obj].withWorkerConfig](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `worker_config` field.


## obj network_config



### fn network_config.new

```ts
new()
```


`google.cloudbuild_worker_pool.network_config.new` constructs a new object with attributes and blocks configured for the `network_config`
Terraform sub block.



**Args**:
  - `peered_network` (`string`): Required. Immutable. The network definition that the workers are peered to. If this section is left empty, the workers will be peered to `WorkerPool.project_id` on the service producer network. Must be in the format `projects/{project}/global/networks/{network}`, where `{project}` is a project number, such as `12345`, and `{network}` is the name of a VPC network in the project. See [Understanding network configuration options](https://cloud.google.com/cloud-build/docs/custom-workers/set-up-custom-worker-pool-environment#understanding_the_network_configuration_options)
  - `peered_network_ip_range` (`string`): Optional. Immutable. Subnet IP range within the peered network. This is specified in CIDR notation with a slash and the subnet prefix size. You can optionally specify an IP address before the subnet prefix value. e.g. `192.168.0.0/29` would specify an IP range starting at 192.168.0.0 with a prefix size of 29 bits. `/16` would specify a prefix size of 16 bits, with an automatically determined IP within the peered VPC. If unspecified, a value of `/24` will be used. When `null`, the `peered_network_ip_range` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `network_config` sub block.


## obj timeouts



### fn timeouts.new

```ts
new()
```


`google.cloudbuild_worker_pool.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`
Terraform sub block.



**Args**:
  - `create` (`string`): Set the `create` field on the resulting object. When `null`, the `create` field will be omitted from the resulting object.
  - `delete` (`string`): Set the `delete` field on the resulting object. When `null`, the `delete` field will be omitted from the resulting object.
  - `update` (`string`): Set the `update` field on the resulting object. When `null`, the `update` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `timeouts` sub block.


## obj worker_config



### fn worker_config.new

```ts
new()
```


`google.cloudbuild_worker_pool.worker_config.new` constructs a new object with attributes and blocks configured for the `worker_config`
Terraform sub block.



**Args**:
  - `disk_size_gb` (`number`): Size of the disk attached to the worker, in GB. See [Worker pool config file](https://cloud.google.com/cloud-build/docs/custom-workers/worker-pool-config-file). Specify a value of up to 1000. If `0` is specified, Cloud Build will use a standard disk size. When `null`, the `disk_size_gb` field will be omitted from the resulting object.
  - `machine_type` (`string`): Machine type of a worker, such as `n1-standard-1`. See [Worker pool config file](https://cloud.google.com/cloud-build/docs/custom-workers/worker-pool-config-file). If left blank, Cloud Build will use `n1-standard-1`. When `null`, the `machine_type` field will be omitted from the resulting object.
  - `no_external_ip` (`bool`): If true, workers are created without any public address, which prevents network egress to public IPs. When `null`, the `no_external_ip` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `worker_config` sub block.
