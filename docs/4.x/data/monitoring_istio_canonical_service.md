---
permalink: /data/monitoring_istio_canonical_service/
---

# data.monitoring_istio_canonical_service

`monitoring_istio_canonical_service` represents the `google_monitoring_istio_canonical_service` Terraform data source.



This package contains functions and utilities for setting up the data source using Jsonnet code.


## Index

* [`fn new()`](#fn-new)
* [`fn newAttrs()`](#fn-newattrs)
* [`fn withCanonicalService()`](#fn-withcanonicalservice)
* [`fn withCanonicalServiceNamespace()`](#fn-withcanonicalservicenamespace)
* [`fn withMeshUid()`](#fn-withmeshuid)
* [`fn withProject()`](#fn-withproject)

## Fields

### fn new

```ts
new()
```


`google.data.monitoring_istio_canonical_service.new` injects a new `data_google_monitoring_istio_canonical_service` Terraform `data source`
block into the root module document.

Additionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the
resource. For example, if you added a new instance to the root using:

    # arguments omitted for brevity
    google.data.monitoring_istio_canonical_service.new('some_id')

You can get the reference to the `id` field of the created `google.data.monitoring_istio_canonical_service` using the reference:

    $._ref.data_google_monitoring_istio_canonical_service.some_id.get('id')

This is the same as directly entering `"${ data_google_monitoring_istio_canonical_service.some_id.id }"` as the value.

NOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,
or `$` to refer to the root object. Instead, make an explicit outer object using `local`.

**Args**:
  - `dataSrcLabel` (`string`): The name label of the block.
  - `canonical_service` (`string`): The name of the canonical service underlying this service.. 
                        Corresponds to the destination_service_name metric label in Istio metrics.
  - `canonical_service_namespace` (`string`): The namespace of the canonical service underlying this service.
                        Corresponds to the destination_service_namespace metric label in Istio metrics.
  - `mesh_uid` (`string`): Identifier for the Istio mesh in which this canonical service is defined.
                        Corresponds to the meshUid metric label in Istio metrics.
  - `project` (`string`):  When `null`, the `project` field will be omitted from the resulting object.

**Returns**:
- A mixin object that injects the new data source into the root Terraform configuration.


### fn newAttrs

```ts
newAttrs()
```


`google.data.monitoring_istio_canonical_service.newAttrs` constructs a new object with attributes and blocks configured for the `monitoring_istio_canonical_service`
Terraform data source.

Unlike [google.data.monitoring_istio_canonical_service.new](#fn-monitoringistiocanonicalservicenew), this function will not inject the `data source`
block into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the
[tf.withData](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withdata) function to build a complete block.

This is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to
injecting into a complete block.

**Args**:
  - `canonical_service` (`string`): The name of the canonical service underlying this service.. 
                        Corresponds to the destination_service_name metric label in Istio metrics.
  - `canonical_service_namespace` (`string`): The namespace of the canonical service underlying this service.
                        Corresponds to the destination_service_namespace metric label in Istio metrics.
  - `mesh_uid` (`string`): Identifier for the Istio mesh in which this canonical service is defined.
                        Corresponds to the meshUid metric label in Istio metrics.
  - `project` (`string`):  When `null`, the `project` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that can be used with [tf.withData](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withdata) to construct a new `monitoring_istio_canonical_service` data source into the root Terraform configuration.


### fn withCanonicalService

```ts
withCanonicalService()
```

`google.string.withCanonicalService` constructs a mixin object that can be merged into the `string`
Terraform data source block to set or update the canonical_service field.



**Args**:
  - `dataSrcLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `canonical_service` field.


### fn withCanonicalServiceNamespace

```ts
withCanonicalServiceNamespace()
```

`google.string.withCanonicalServiceNamespace` constructs a mixin object that can be merged into the `string`
Terraform data source block to set or update the canonical_service_namespace field.



**Args**:
  - `dataSrcLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `canonical_service_namespace` field.


### fn withMeshUid

```ts
withMeshUid()
```

`google.string.withMeshUid` constructs a mixin object that can be merged into the `string`
Terraform data source block to set or update the mesh_uid field.



**Args**:
  - `dataSrcLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `mesh_uid` field.


### fn withProject

```ts
withProject()
```

`google.string.withProject` constructs a mixin object that can be merged into the `string`
Terraform data source block to set or update the project field.



**Args**:
  - `dataSrcLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `project` field.
