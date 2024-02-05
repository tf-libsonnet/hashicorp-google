---
permalink: /scc_event_threat_detection_custom_module/
---

# scc_event_threat_detection_custom_module

`scc_event_threat_detection_custom_module` represents the `google_scc_event_threat_detection_custom_module` Terraform resource.



This package contains functions and utilities for setting up the resource using Jsonnet code.


## Index

* [`fn new()`](#fn-new)
* [`fn newAttrs()`](#fn-newattrs)
* [`fn withConfig()`](#fn-withconfig)
* [`fn withDisplayName()`](#fn-withdisplayname)
* [`fn withEnablementState()`](#fn-withenablementstate)
* [`fn withOrganization()`](#fn-withorganization)
* [`fn withTimeouts()`](#fn-withtimeouts)
* [`fn withTimeoutsMixin()`](#fn-withtimeoutsmixin)
* [`fn withType()`](#fn-withtype)
* [`obj timeouts`](#obj-timeouts)
  * [`fn new()`](#fn-timeoutsnew)

## Fields

### fn new

```ts
new()
```


`google.scc_event_threat_detection_custom_module.new` injects a new `google_scc_event_threat_detection_custom_module` Terraform `resource`
block into the root module document.

Additionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the
resource. For example, if you added a new instance to the root using:

    # arguments omitted for brevity
    google.scc_event_threat_detection_custom_module.new('some_id')

You can get the reference to the `id` field of the created `google.scc_event_threat_detection_custom_module` using the reference:

    $._ref.google_scc_event_threat_detection_custom_module.some_id.get('id')

This is the same as directly entering `"${ google_scc_event_threat_detection_custom_module.some_id.id }"` as the value.

NOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,
or `$` to refer to the root object. Instead, make an explicit outer object using `local`.

**Args**:
  - `resourceLabel` (`string`): The name label of the block.
  - `config` (`string`): Config for the module. For the resident module, its config value is defined at this level.
For the inherited module, its config value is inherited from the ancestor module.
  - `display_name` (`string`): The human readable name to be displayed for the module. When `null`, the `display_name` field will be omitted from the resulting object.
  - `enablement_state` (`string`): The state of enablement for the module at the given level of the hierarchy. Possible values: [&#34;ENABLED&#34;, &#34;DISABLED&#34;]
  - `organization` (`string`): Numerical ID of the parent organization.
  - `type` (`string`): Immutable. Type for the module. e.g. CONFIGURABLE_BAD_IP.
  - `timeouts` (`obj`): Set the `timeouts` field on the resulting resource block. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.scc_event_threat_detection_custom_module.timeouts.new](#fn-timeoutsnew) constructor.

**Returns**:
- A mixin object that injects the new resource into the root Terraform configuration.


### fn newAttrs

```ts
newAttrs()
```


`google.scc_event_threat_detection_custom_module.newAttrs` constructs a new object with attributes and blocks configured for the `scc_event_threat_detection_custom_module`
Terraform resource.

Unlike [google.scc_event_threat_detection_custom_module.new](#fn-new), this function will not inject the `resource`
block into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the
[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.

This is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to
injecting into a complete block.

**Args**:
  - `config` (`string`): Config for the module. For the resident module, its config value is defined at this level.
For the inherited module, its config value is inherited from the ancestor module.
  - `display_name` (`string`): The human readable name to be displayed for the module. When `null`, the `display_name` field will be omitted from the resulting object.
  - `enablement_state` (`string`): The state of enablement for the module at the given level of the hierarchy. Possible values: [&#34;ENABLED&#34;, &#34;DISABLED&#34;]
  - `organization` (`string`): Numerical ID of the parent organization.
  - `type` (`string`): Immutable. Type for the module. e.g. CONFIGURABLE_BAD_IP.
  - `timeouts` (`obj`): Set the `timeouts` field on the resulting object. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.scc_event_threat_detection_custom_module.timeouts.new](#fn-timeoutsnew) constructor.

**Returns**:
  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `scc_event_threat_detection_custom_module` resource into the root Terraform configuration.


### fn withConfig

```ts
withConfig()
```

`google.string.withConfig` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the config field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `config` field.


### fn withDisplayName

```ts
withDisplayName()
```

`google.string.withDisplayName` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the display_name field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `display_name` field.


### fn withEnablementState

```ts
withEnablementState()
```

`google.string.withEnablementState` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the enablement_state field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `enablement_state` field.


### fn withOrganization

```ts
withOrganization()
```

`google.string.withOrganization` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the organization field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `organization` field.


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


## obj timeouts



### fn timeouts.new

```ts
new()
```


`google.scc_event_threat_detection_custom_module.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`
Terraform sub block.



**Args**:
  - `create` (`string`): Set the `create` field on the resulting object. When `null`, the `create` field will be omitted from the resulting object.
  - `delete` (`string`): Set the `delete` field on the resulting object. When `null`, the `delete` field will be omitted from the resulting object.
  - `update` (`string`): Set the `update` field on the resulting object. When `null`, the `update` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `timeouts` sub block.
