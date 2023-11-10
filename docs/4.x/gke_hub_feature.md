---
permalink: /gke_hub_feature/
---

# gke_hub_feature

`gke_hub_feature` represents the `google_gke_hub_feature` Terraform resource.



This package contains functions and utilities for setting up the resource using Jsonnet code.


## Index

* [`fn new()`](#fn-new)
* [`fn newAttrs()`](#fn-newattrs)
* [`fn withLabels()`](#fn-withlabels)
* [`fn withLocation()`](#fn-withlocation)
* [`fn withName()`](#fn-withname)
* [`fn withProject()`](#fn-withproject)
* [`fn withSpec()`](#fn-withspec)
* [`fn withSpecMixin()`](#fn-withspecmixin)
* [`fn withTimeouts()`](#fn-withtimeouts)
* [`fn withTimeoutsMixin()`](#fn-withtimeoutsmixin)
* [`obj spec`](#obj-spec)
  * [`fn new()`](#fn-specnew)
  * [`obj spec.fleetobservability`](#obj-specfleetobservability)
    * [`fn new()`](#fn-specfleetobservabilitynew)
    * [`obj spec.fleetobservability.logging_config`](#obj-specfleetobservabilitylogging_config)
      * [`fn new()`](#fn-specfleetobservabilitylogging_confignew)
      * [`obj spec.fleetobservability.logging_config.default_config`](#obj-specfleetobservabilitylogging_configdefault_config)
        * [`fn new()`](#fn-specfleetobservabilitylogging_configdefault_confignew)
      * [`obj spec.fleetobservability.logging_config.fleet_scope_logs_config`](#obj-specfleetobservabilitylogging_configfleet_scope_logs_config)
        * [`fn new()`](#fn-specfleetobservabilitylogging_configfleet_scope_logs_confignew)
  * [`obj spec.multiclusteringress`](#obj-specmulticlusteringress)
    * [`fn new()`](#fn-specmulticlusteringressnew)
* [`obj timeouts`](#obj-timeouts)
  * [`fn new()`](#fn-timeoutsnew)

## Fields

### fn new

```ts
new()
```


`google.gke_hub_feature.new` injects a new `google_gke_hub_feature` Terraform `resource`
block into the root module document.

Additionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the
resource. For example, if you added a new instance to the root using:

    # arguments omitted for brevity
    google.gke_hub_feature.new('some_id')

You can get the reference to the `id` field of the created `google.gke_hub_feature` using the reference:

    $._ref.google_gke_hub_feature.some_id.get('id')

This is the same as directly entering `"${ google_gke_hub_feature.some_id.id }"` as the value.

NOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,
or `$` to refer to the root object. Instead, make an explicit outer object using `local`.

**Args**:
  - `resourceLabel` (`string`): The name label of the block.
  - `labels` (`obj`): GCP labels for this Feature.

**Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
Please refer to the field &#39;effective_labels&#39; for all of the labels present on the resource. When `null`, the `labels` field will be omitted from the resulting object.
  - `location` (`string`): The location for the resource
  - `name` (`string`): The full, unique name of this Feature resource When `null`, the `name` field will be omitted from the resulting object.
  - `project` (`string`): Set the `project` field on the resulting resource block. When `null`, the `project` field will be omitted from the resulting object.
  - `spec` (`list[obj]`): Optional. Hub-wide Feature configuration. If this Feature does not support any Hub-wide configuration, this field may be unused. When `null`, the `spec` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.gke_hub_feature.spec.new](#fn-specnew) constructor.
  - `timeouts` (`obj`): Set the `timeouts` field on the resulting resource block. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.gke_hub_feature.timeouts.new](#fn-timeoutsnew) constructor.

**Returns**:
- A mixin object that injects the new resource into the root Terraform configuration.


### fn newAttrs

```ts
newAttrs()
```


`google.gke_hub_feature.newAttrs` constructs a new object with attributes and blocks configured for the `gke_hub_feature`
Terraform resource.

Unlike [google.gke_hub_feature.new](#fn-new), this function will not inject the `resource`
block into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the
[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.

This is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to
injecting into a complete block.

**Args**:
  - `labels` (`obj`): GCP labels for this Feature.

**Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
Please refer to the field &#39;effective_labels&#39; for all of the labels present on the resource. When `null`, the `labels` field will be omitted from the resulting object.
  - `location` (`string`): The location for the resource
  - `name` (`string`): The full, unique name of this Feature resource When `null`, the `name` field will be omitted from the resulting object.
  - `project` (`string`): Set the `project` field on the resulting object. When `null`, the `project` field will be omitted from the resulting object.
  - `spec` (`list[obj]`): Optional. Hub-wide Feature configuration. If this Feature does not support any Hub-wide configuration, this field may be unused. When `null`, the `spec` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.gke_hub_feature.spec.new](#fn-specnew) constructor.
  - `timeouts` (`obj`): Set the `timeouts` field on the resulting object. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.gke_hub_feature.timeouts.new](#fn-timeoutsnew) constructor.

**Returns**:
  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `gke_hub_feature` resource into the root Terraform configuration.


### fn withLabels

```ts
withLabels()
```

`google.obj.withLabels` constructs a mixin object that can be merged into the `obj`
Terraform resource block to set or update the labels field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`obj`): The value to set for the `labels` field.


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


## obj spec



### fn spec.new

```ts
new()
```


`google.gke_hub_feature.spec.new` constructs a new object with attributes and blocks configured for the `spec`
Terraform sub block.



**Args**:
  - `fleetobservability` (`list[obj]`): Fleet Observability feature spec. When `null`, the `fleetobservability` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.gke_hub_feature.spec.fleetobservability.new](#fn-specfleetobservabilitynew) constructor.
  - `multiclusteringress` (`list[obj]`): Multicluster Ingress-specific spec. When `null`, the `multiclusteringress` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.gke_hub_feature.spec.multiclusteringress.new](#fn-specmulticlusteringressnew) constructor.

**Returns**:
  - An attribute object that represents the `spec` sub block.


## obj spec.fleetobservability



### fn spec.fleetobservability.new

```ts
new()
```


`google.gke_hub_feature.spec.fleetobservability.new` constructs a new object with attributes and blocks configured for the `fleetobservability`
Terraform sub block.



**Args**:
  - `logging_config` (`list[obj]`): Specified if fleet logging feature is enabled for the entire fleet. If UNSPECIFIED, fleet logging feature is disabled for the entire fleet. When `null`, the `logging_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.gke_hub_feature.spec.fleetobservability.logging_config.new](#fn-specspeclogging_confignew) constructor.

**Returns**:
  - An attribute object that represents the `fleetobservability` sub block.


## obj spec.fleetobservability.logging_config



### fn spec.fleetobservability.logging_config.new

```ts
new()
```


`google.gke_hub_feature.spec.fleetobservability.logging_config.new` constructs a new object with attributes and blocks configured for the `logging_config`
Terraform sub block.



**Args**:
  - `default_config` (`list[obj]`): Specified if applying the default routing config to logs not specified in other configs. When `null`, the `default_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.gke_hub_feature.spec.fleetobservability.logging_config.default_config.new](#fn-specspecfleetobservabilitydefault_confignew) constructor.
  - `fleet_scope_logs_config` (`list[obj]`): Specified if applying the routing config to all logs for all fleet scopes. When `null`, the `fleet_scope_logs_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.gke_hub_feature.spec.fleetobservability.logging_config.fleet_scope_logs_config.new](#fn-specspecfleetobservabilityfleet_scope_logs_confignew) constructor.

**Returns**:
  - An attribute object that represents the `logging_config` sub block.


## obj spec.fleetobservability.logging_config.default_config



### fn spec.fleetobservability.logging_config.default_config.new

```ts
new()
```


`google.gke_hub_feature.spec.fleetobservability.logging_config.default_config.new` constructs a new object with attributes and blocks configured for the `default_config`
Terraform sub block.



**Args**:
  - `mode` (`string`): Specified if fleet logging feature is enabled. Possible values: [&#34;MODE_UNSPECIFIED&#34;, &#34;COPY&#34;, &#34;MOVE&#34;] When `null`, the `mode` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `default_config` sub block.


## obj spec.fleetobservability.logging_config.fleet_scope_logs_config



### fn spec.fleetobservability.logging_config.fleet_scope_logs_config.new

```ts
new()
```


`google.gke_hub_feature.spec.fleetobservability.logging_config.fleet_scope_logs_config.new` constructs a new object with attributes and blocks configured for the `fleet_scope_logs_config`
Terraform sub block.



**Args**:
  - `mode` (`string`): Specified if fleet logging feature is enabled. Possible values: [&#34;MODE_UNSPECIFIED&#34;, &#34;COPY&#34;, &#34;MOVE&#34;] When `null`, the `mode` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `fleet_scope_logs_config` sub block.


## obj spec.multiclusteringress



### fn spec.multiclusteringress.new

```ts
new()
```


`google.gke_hub_feature.spec.multiclusteringress.new` constructs a new object with attributes and blocks configured for the `multiclusteringress`
Terraform sub block.



**Args**:
  - `config_membership` (`string`): Fully-qualified Membership name which hosts the MultiClusterIngress CRD. Example: &#39;projects/foo-proj/locations/global/memberships/bar&#39;

**Returns**:
  - An attribute object that represents the `multiclusteringress` sub block.


## obj timeouts



### fn timeouts.new

```ts
new()
```


`google.gke_hub_feature.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`
Terraform sub block.



**Args**:
  - `create` (`string`): Set the `create` field on the resulting object. When `null`, the `create` field will be omitted from the resulting object.
  - `delete` (`string`): Set the `delete` field on the resulting object. When `null`, the `delete` field will be omitted from the resulting object.
  - `update` (`string`): Set the `update` field on the resulting object. When `null`, the `update` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `timeouts` sub block.
