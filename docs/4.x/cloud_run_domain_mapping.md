---
permalink: /cloud_run_domain_mapping/
---

# cloud_run_domain_mapping

`cloud_run_domain_mapping` represents the `google_cloud_run_domain_mapping` Terraform resource.



This package contains functions and utilities for setting up the resource using Jsonnet code.


## Index

* [`fn new()`](#fn-new)
* [`fn newAttrs()`](#fn-newattrs)
* [`fn withLocation()`](#fn-withlocation)
* [`fn withMetadata()`](#fn-withmetadata)
* [`fn withMetadataMixin()`](#fn-withmetadatamixin)
* [`fn withName()`](#fn-withname)
* [`fn withProject()`](#fn-withproject)
* [`fn withSpec()`](#fn-withspec)
* [`fn withSpecMixin()`](#fn-withspecmixin)
* [`fn withTimeouts()`](#fn-withtimeouts)
* [`fn withTimeoutsMixin()`](#fn-withtimeoutsmixin)
* [`obj metadata`](#obj-metadata)
  * [`fn new()`](#fn-metadatanew)
* [`obj spec`](#obj-spec)
  * [`fn new()`](#fn-specnew)
* [`obj timeouts`](#obj-timeouts)
  * [`fn new()`](#fn-timeoutsnew)

## Fields

### fn new

```ts
new()
```


`google.cloud_run_domain_mapping.new` injects a new `google_cloud_run_domain_mapping` Terraform `resource`
block into the root module document.

Additionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the
resource. For example, if you added a new instance to the root using:

    # arguments omitted for brevity
    google.cloud_run_domain_mapping.new('some_id')

You can get the reference to the `id` field of the created `google.cloud_run_domain_mapping` using the reference:

    $._ref.google_cloud_run_domain_mapping.some_id.get('id')

This is the same as directly entering `"${ google_cloud_run_domain_mapping.some_id.id }"` as the value.

NOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,
or `$` to refer to the root object. Instead, make an explicit outer object using `local`.

**Args**:
  - `resourceLabel` (`string`): The name label of the block.
  - `location` (`string`): The location of the cloud run instance. eg us-central1
  - `name` (`string`): Name should be a [verified](https://support.google.com/webmasters/answer/9008080) domain
  - `project` (`string`): Set the `project` field on the resulting resource block. When `null`, the `project` field will be omitted from the resulting object.
  - `metadata` (`list[obj]`): Metadata associated with this DomainMapping. When `null`, the `metadata` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.cloud_run_domain_mapping.metadata.new](#fn-metadatanew) constructor.
  - `spec` (`list[obj]`): The spec for this DomainMapping. When `null`, the `spec` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.cloud_run_domain_mapping.spec.new](#fn-specnew) constructor.
  - `timeouts` (`obj`): Set the `timeouts` field on the resulting resource block. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.cloud_run_domain_mapping.timeouts.new](#fn-timeoutsnew) constructor.

**Returns**:
- A mixin object that injects the new resource into the root Terraform configuration.


### fn newAttrs

```ts
newAttrs()
```


`google.cloud_run_domain_mapping.newAttrs` constructs a new object with attributes and blocks configured for the `cloud_run_domain_mapping`
Terraform resource.

Unlike [google.cloud_run_domain_mapping.new](#fn-new), this function will not inject the `resource`
block into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the
[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.

This is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to
injecting into a complete block.

**Args**:
  - `location` (`string`): The location of the cloud run instance. eg us-central1
  - `name` (`string`): Name should be a [verified](https://support.google.com/webmasters/answer/9008080) domain
  - `project` (`string`): Set the `project` field on the resulting object. When `null`, the `project` field will be omitted from the resulting object.
  - `metadata` (`list[obj]`): Metadata associated with this DomainMapping. When `null`, the `metadata` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.cloud_run_domain_mapping.metadata.new](#fn-metadatanew) constructor.
  - `spec` (`list[obj]`): The spec for this DomainMapping. When `null`, the `spec` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.cloud_run_domain_mapping.spec.new](#fn-specnew) constructor.
  - `timeouts` (`obj`): Set the `timeouts` field on the resulting object. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.cloud_run_domain_mapping.timeouts.new](#fn-timeoutsnew) constructor.

**Returns**:
  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `cloud_run_domain_mapping` resource into the root Terraform configuration.


### fn withLocation

```ts
withLocation()
```

`google.string.withLocation` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the location field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `location` field.


### fn withMetadata

```ts
withMetadata()
```

`google.list[obj].withMetadata` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the metadata field.

This function will replace the array with the passed in `value`. If you wish to instead append the
passed in value to the existing array, use the [google.list[obj].withMetadataMixin](TODO) function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `metadata` field.


### fn withMetadataMixin

```ts
withMetadataMixin()
```

`google.list[obj].withMetadataMixin` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the metadata field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google.list[obj].withMetadata](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `metadata` field.


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


### fn withSpec

```ts
withSpec()
```

`google.list[obj].withSpec` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the spec field.

This function will replace the array with the passed in `value`. If you wish to instead append the
passed in value to the existing array, use the [google.list[obj].withSpecMixin](TODO) function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `spec` field.


### fn withSpecMixin

```ts
withSpecMixin()
```

`google.list[obj].withSpecMixin` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the spec field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google.list[obj].withSpec](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `spec` field.


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


## obj metadata



### fn metadata.new

```ts
new()
```


`google.cloud_run_domain_mapping.metadata.new` constructs a new object with attributes and blocks configured for the `metadata`
Terraform sub block.



**Args**:
  - `annotations` (`obj`): Annotations is a key value map stored with a resource that
may be set by external tools to store and retrieve arbitrary metadata. More
info: https://kubernetes.io/docs/concepts/overview/working-with-objects/annotations

**Note**: The Cloud Run API may add additional annotations that were not provided in your config.
If terraform plan shows a diff where a server-side annotation is added, you can add it to your config
or apply the lifecycle.ignore_changes rule to the metadata.0.annotations field. When `null`, the `annotations` field will be omitted from the resulting object.
  - `labels` (`obj`): Map of string keys and values that can be used to organize and categorize
(scope and select) objects. May match selectors of replication controllers
and routes.
More info: https://kubernetes.io/docs/concepts/overview/working-with-objects/labels When `null`, the `labels` field will be omitted from the resulting object.
  - `namespace` (`string`): In Cloud Run the namespace must be equal to either the
project ID or project number.

**Returns**:
  - An attribute object that represents the `metadata` sub block.


## obj spec



### fn spec.new

```ts
new()
```


`google.cloud_run_domain_mapping.spec.new` constructs a new object with attributes and blocks configured for the `spec`
Terraform sub block.



**Args**:
  - `certificate_mode` (`string`): The mode of the certificate. Default value: &#34;AUTOMATIC&#34; Possible values: [&#34;NONE&#34;, &#34;AUTOMATIC&#34;] When `null`, the `certificate_mode` field will be omitted from the resulting object.
  - `force_override` (`bool`): If set, the mapping will override any mapping set before this spec was set.
It is recommended that the user leaves this empty to receive an error
warning about a potential conflict and only set it once the respective UI
has given such a warning. When `null`, the `force_override` field will be omitted from the resulting object.
  - `route_name` (`string`): The name of the Cloud Run Service that this DomainMapping applies to.
The route must exist.

**Returns**:
  - An attribute object that represents the `spec` sub block.


## obj timeouts



### fn timeouts.new

```ts
new()
```


`google.cloud_run_domain_mapping.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`
Terraform sub block.



**Args**:
  - `create` (`string`): Set the `create` field on the resulting object. When `null`, the `create` field will be omitted from the resulting object.
  - `delete` (`string`): Set the `delete` field on the resulting object. When `null`, the `delete` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `timeouts` sub block.
