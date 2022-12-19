---
permalink: /compute_network_peering_routes_config/
---

# compute_network_peering_routes_config

`compute_network_peering_routes_config` represents the `google_compute_network_peering_routes_config` Terraform resource.



This package contains functions and utilities for setting up the resource using Jsonnet code.


## Index

* [`fn new()`](#fn-new)
* [`fn newAttrs()`](#fn-newattrs)
* [`fn withExportCustomRoutes()`](#fn-withexportcustomroutes)
* [`fn withImportCustomRoutes()`](#fn-withimportcustomroutes)
* [`fn withNetwork()`](#fn-withnetwork)
* [`fn withPeering()`](#fn-withpeering)
* [`fn withProject()`](#fn-withproject)
* [`fn withTimeouts()`](#fn-withtimeouts)
* [`fn withTimeoutsMixin()`](#fn-withtimeoutsmixin)
* [`obj timeouts`](#obj-timeouts)
  * [`fn new()`](#fn-timeoutsnew)

## Fields

### fn new

```ts
new()
```


`google.compute_network_peering_routes_config.new` injects a new `google_compute_network_peering_routes_config` Terraform `resource`
block into the root module document.

Additionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the
resource. For example, if you added a new instance to the root using:

    # arguments omitted for brevity
    google.compute_network_peering_routes_config.new('some_id')

You can get the reference to the `id` field of the created `google.compute_network_peering_routes_config` using the reference:

    $._ref.google_compute_network_peering_routes_config.some_id.get('id')

This is the same as directly entering `"${ google_compute_network_peering_routes_config.some_id.id }"` as the value.

NOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,
or `$` to refer to the root object. Instead, make an explicit outer object using `local`.

**Args**:
  - `resourceLabel` (`string`): The name label of the block.
  - `export_custom_routes` (`bool`): Whether to export the custom routes to the peer network.
  - `import_custom_routes` (`bool`): Whether to import the custom routes to the peer network.
  - `network` (`string`): The name of the primary network for the peering.
  - `peering` (`string`): Name of the peering.
  - `project` (`string`):  When `null`, the `project` field will be omitted from the resulting object.
  - `timeouts` (`obj`):  When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_network_peering_routes_config.timeouts.new](#fn-timeoutsnew) constructor.

**Returns**:
- A mixin object that injects the new resource into the root Terraform configuration.


### fn newAttrs

```ts
newAttrs()
```


`google.compute_network_peering_routes_config.newAttrs` constructs a new object with attributes and blocks configured for the `compute_network_peering_routes_config`
Terraform resource.

Unlike [google.compute_network_peering_routes_config.new](#fn-new), this function will not inject the `resource`
block into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the
[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.

This is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to
injecting into a complete block.

**Args**:
  - `export_custom_routes` (`bool`): Whether to export the custom routes to the peer network.
  - `import_custom_routes` (`bool`): Whether to import the custom routes to the peer network.
  - `network` (`string`): The name of the primary network for the peering.
  - `peering` (`string`): Name of the peering.
  - `project` (`string`):  When `null`, the `project` field will be omitted from the resulting object.
  - `timeouts` (`obj`):  When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_network_peering_routes_config.timeouts.new](#fn-timeoutsnew) constructor.

**Returns**:
  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `compute_network_peering_routes_config` resource into the root Terraform configuration.


### fn withExportCustomRoutes

```ts
withExportCustomRoutes()
```

`google.bool.withExportCustomRoutes` constructs a mixin object that can be merged into the `bool`
Terraform resource block to set or update the export_custom_routes field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`bool`): The value to set for the `export_custom_routes` field.


### fn withImportCustomRoutes

```ts
withImportCustomRoutes()
```

`google.bool.withImportCustomRoutes` constructs a mixin object that can be merged into the `bool`
Terraform resource block to set or update the import_custom_routes field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`bool`): The value to set for the `import_custom_routes` field.


### fn withNetwork

```ts
withNetwork()
```

`google.string.withNetwork` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the network field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `network` field.


### fn withPeering

```ts
withPeering()
```

`google.string.withPeering` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the peering field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `peering` field.


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


## obj timeouts



### fn timeouts.new

```ts
new()
```


`google.compute_network_peering_routes_config.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`
Terraform sub block.



**Args**:
  - `create` (`string`):  When `null`, the `create` field will be omitted from the resulting object.
  - `delete` (`string`):  When `null`, the `delete` field will be omitted from the resulting object.
  - `update` (`string`):  When `null`, the `update` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `timeouts` sub block.
