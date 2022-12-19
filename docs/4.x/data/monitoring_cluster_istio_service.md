---
permalink: /data/monitoring_cluster_istio_service/
---

# data.monitoring_cluster_istio_service

`monitoring_cluster_istio_service` represents the `google_monitoring_cluster_istio_service` Terraform data source.



This package contains functions and utilities for setting up the data source using Jsonnet code.


## Index

* [`fn new()`](#fn-new)
* [`fn newAttrs()`](#fn-newattrs)
* [`fn withClusterName()`](#fn-withclustername)
* [`fn withLocation()`](#fn-withlocation)
* [`fn withProject()`](#fn-withproject)
* [`fn withServiceName()`](#fn-withservicename)
* [`fn withServiceNamespace()`](#fn-withservicenamespace)

## Fields

### fn new

```ts
new()
```


`google.data.monitoring_cluster_istio_service.new` injects a new `data_google_monitoring_cluster_istio_service` Terraform `data source`
block into the root module document.

Additionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the
resource. For example, if you added a new instance to the root using:

    # arguments omitted for brevity
    google.data.monitoring_cluster_istio_service.new('some_id')

You can get the reference to the `id` field of the created `google.data.monitoring_cluster_istio_service` using the reference:

    $._ref.data_google_monitoring_cluster_istio_service.some_id.get('id')

This is the same as directly entering `"${ data_google_monitoring_cluster_istio_service.some_id.id }"` as the value.

NOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,
or `$` to refer to the root object. Instead, make an explicit outer object using `local`.

**Args**:
  - `dataSrcLabel` (`string`): The name label of the block.
  - `cluster_name` (`string`): The name of the Kubernetes cluster in which this Istio service is defined. 
                        Corresponds to the clusterName resource label in k8s_cluster resources.
  - `location` (`string`): The location of the Kubernetes cluster in which this Istio service is defined. 
                        Corresponds to the location resource label in k8s_cluster resources.
  - `project` (`string`): Set the `project` field on the resulting data source block. When `null`, the `project` field will be omitted from the resulting object.
  - `service_name` (`string`): The name of the Istio service underlying this service. 
                        Corresponds to the destination_service_name metric label in Istio metrics.
  - `service_namespace` (`string`): The namespace of the Istio service underlying this service. 
                        Corresponds to the destination_service_namespace metric label in Istio metrics.

**Returns**:
- A mixin object that injects the new data source into the root Terraform configuration.


### fn newAttrs

```ts
newAttrs()
```


`google.data.monitoring_cluster_istio_service.newAttrs` constructs a new object with attributes and blocks configured for the `monitoring_cluster_istio_service`
Terraform data source.

Unlike [google.data.monitoring_cluster_istio_service.new](#fn-new), this function will not inject the `data source`
block into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the
[tf.withData](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withdata) function to build a complete block.

This is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to
injecting into a complete block.

**Args**:
  - `cluster_name` (`string`): The name of the Kubernetes cluster in which this Istio service is defined. 
                        Corresponds to the clusterName resource label in k8s_cluster resources.
  - `location` (`string`): The location of the Kubernetes cluster in which this Istio service is defined. 
                        Corresponds to the location resource label in k8s_cluster resources.
  - `project` (`string`): Set the `project` field on the resulting object. When `null`, the `project` field will be omitted from the resulting object.
  - `service_name` (`string`): The name of the Istio service underlying this service. 
                        Corresponds to the destination_service_name metric label in Istio metrics.
  - `service_namespace` (`string`): The namespace of the Istio service underlying this service. 
                        Corresponds to the destination_service_namespace metric label in Istio metrics.

**Returns**:
  - An attribute object that can be used with [tf.withData](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withdata) to construct a new `monitoring_cluster_istio_service` data source into the root Terraform configuration.


### fn withClusterName

```ts
withClusterName()
```

`google.string.withClusterName` constructs a mixin object that can be merged into the `string`
Terraform data source block to set or update the cluster_name field.



**Args**:
  - `dataSrcLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `cluster_name` field.


### fn withLocation

```ts
withLocation()
```

`google.string.withLocation` constructs a mixin object that can be merged into the `string`
Terraform data source block to set or update the location field.



**Args**:
  - `dataSrcLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `location` field.


### fn withProject

```ts
withProject()
```

`google.string.withProject` constructs a mixin object that can be merged into the `string`
Terraform data source block to set or update the project field.



**Args**:
  - `dataSrcLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `project` field.


### fn withServiceName

```ts
withServiceName()
```

`google.string.withServiceName` constructs a mixin object that can be merged into the `string`
Terraform data source block to set or update the service_name field.



**Args**:
  - `dataSrcLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `service_name` field.


### fn withServiceNamespace

```ts
withServiceNamespace()
```

`google.string.withServiceNamespace` constructs a mixin object that can be merged into the `string`
Terraform data source block to set or update the service_namespace field.



**Args**:
  - `dataSrcLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `service_namespace` field.
