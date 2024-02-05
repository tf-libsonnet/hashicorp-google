---
permalink: /gke_hub_fleet/
---

# gke_hub_fleet

`gke_hub_fleet` represents the `google_gke_hub_fleet` Terraform resource.



This package contains functions and utilities for setting up the resource using Jsonnet code.


## Index

* [`fn new()`](#fn-new)
* [`fn newAttrs()`](#fn-newattrs)
* [`fn withDefaultClusterConfig()`](#fn-withdefaultclusterconfig)
* [`fn withDefaultClusterConfigMixin()`](#fn-withdefaultclusterconfigmixin)
* [`fn withDisplayName()`](#fn-withdisplayname)
* [`fn withProject()`](#fn-withproject)
* [`fn withTimeouts()`](#fn-withtimeouts)
* [`fn withTimeoutsMixin()`](#fn-withtimeoutsmixin)
* [`obj default_cluster_config`](#obj-default_cluster_config)
  * [`fn new()`](#fn-default_cluster_confignew)
  * [`obj default_cluster_config.binary_authorization_config`](#obj-default_cluster_configbinary_authorization_config)
    * [`fn new()`](#fn-default_cluster_configbinary_authorization_confignew)
    * [`obj default_cluster_config.binary_authorization_config.policy_bindings`](#obj-default_cluster_configbinary_authorization_configpolicy_bindings)
      * [`fn new()`](#fn-default_cluster_configbinary_authorization_configpolicy_bindingsnew)
  * [`obj default_cluster_config.security_posture_config`](#obj-default_cluster_configsecurity_posture_config)
    * [`fn new()`](#fn-default_cluster_configsecurity_posture_confignew)
* [`obj timeouts`](#obj-timeouts)
  * [`fn new()`](#fn-timeoutsnew)

## Fields

### fn new

```ts
new()
```


`google.gke_hub_fleet.new` injects a new `google_gke_hub_fleet` Terraform `resource`
block into the root module document.

Additionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the
resource. For example, if you added a new instance to the root using:

    # arguments omitted for brevity
    google.gke_hub_fleet.new('some_id')

You can get the reference to the `id` field of the created `google.gke_hub_fleet` using the reference:

    $._ref.google_gke_hub_fleet.some_id.get('id')

This is the same as directly entering `"${ google_gke_hub_fleet.some_id.id }"` as the value.

NOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,
or `$` to refer to the root object. Instead, make an explicit outer object using `local`.

**Args**:
  - `resourceLabel` (`string`): The name label of the block.
  - `display_name` (`string`): A user-assigned display name of the Fleet. When present, it must be between 4 to 30 characters.
Allowed characters are: lowercase and uppercase letters, numbers, hyphen, single-quote, double-quote, space, and exclamation point. When `null`, the `display_name` field will be omitted from the resulting object.
  - `project` (`string`): Set the `project` field on the resulting resource block. When `null`, the `project` field will be omitted from the resulting object.
  - `default_cluster_config` (`list[obj]`): The default cluster configurations to apply across the fleet. When `null`, the `default_cluster_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.gke_hub_fleet.default_cluster_config.new](#fn-default_cluster_confignew) constructor.
  - `timeouts` (`obj`): Set the `timeouts` field on the resulting resource block. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.gke_hub_fleet.timeouts.new](#fn-timeoutsnew) constructor.

**Returns**:
- A mixin object that injects the new resource into the root Terraform configuration.


### fn newAttrs

```ts
newAttrs()
```


`google.gke_hub_fleet.newAttrs` constructs a new object with attributes and blocks configured for the `gke_hub_fleet`
Terraform resource.

Unlike [google.gke_hub_fleet.new](#fn-new), this function will not inject the `resource`
block into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the
[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.

This is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to
injecting into a complete block.

**Args**:
  - `display_name` (`string`): A user-assigned display name of the Fleet. When present, it must be between 4 to 30 characters.
Allowed characters are: lowercase and uppercase letters, numbers, hyphen, single-quote, double-quote, space, and exclamation point. When `null`, the `display_name` field will be omitted from the resulting object.
  - `project` (`string`): Set the `project` field on the resulting object. When `null`, the `project` field will be omitted from the resulting object.
  - `default_cluster_config` (`list[obj]`): The default cluster configurations to apply across the fleet. When `null`, the `default_cluster_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.gke_hub_fleet.default_cluster_config.new](#fn-default_cluster_confignew) constructor.
  - `timeouts` (`obj`): Set the `timeouts` field on the resulting object. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.gke_hub_fleet.timeouts.new](#fn-timeoutsnew) constructor.

**Returns**:
  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `gke_hub_fleet` resource into the root Terraform configuration.


### fn withDefaultClusterConfig

```ts
withDefaultClusterConfig()
```

`google.list[obj].withDefaultClusterConfig` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the default_cluster_config field.

This function will replace the array with the passed in `value`. If you wish to instead append the
passed in value to the existing array, use the [google.list[obj].withDefaultClusterConfigMixin](TODO) function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `default_cluster_config` field.


### fn withDefaultClusterConfigMixin

```ts
withDefaultClusterConfigMixin()
```

`google.list[obj].withDefaultClusterConfigMixin` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the default_cluster_config field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google.list[obj].withDefaultClusterConfig](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `default_cluster_config` field.


### fn withDisplayName

```ts
withDisplayName()
```

`google.string.withDisplayName` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the display_name field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `display_name` field.


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


## obj default_cluster_config



### fn default_cluster_config.new

```ts
new()
```


`google.gke_hub_fleet.default_cluster_config.new` constructs a new object with attributes and blocks configured for the `default_cluster_config`
Terraform sub block.



**Args**:
  - `binary_authorization_config` (`list[obj]`): Enable/Disable binary authorization features for the cluster. When `null`, the `binary_authorization_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.gke_hub_fleet.default_cluster_config.binary_authorization_config.new](#fn-default_cluster_configbinary_authorization_confignew) constructor.
  - `security_posture_config` (`list[obj]`): Enable/Disable Security Posture features for the cluster. When `null`, the `security_posture_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.gke_hub_fleet.default_cluster_config.security_posture_config.new](#fn-default_cluster_configsecurity_posture_confignew) constructor.

**Returns**:
  - An attribute object that represents the `default_cluster_config` sub block.


## obj default_cluster_config.binary_authorization_config



### fn default_cluster_config.binary_authorization_config.new

```ts
new()
```


`google.gke_hub_fleet.default_cluster_config.binary_authorization_config.new` constructs a new object with attributes and blocks configured for the `binary_authorization_config`
Terraform sub block.



**Args**:
  - `evaluation_mode` (`string`): Mode of operation for binauthz policy evaluation. Possible values: [&#34;DISABLED&#34;, &#34;POLICY_BINDINGS&#34;] When `null`, the `evaluation_mode` field will be omitted from the resulting object.
  - `policy_bindings` (`list[obj]`): Binauthz policies that apply to this cluster. When `null`, the `policy_bindings` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.gke_hub_fleet.default_cluster_config.binary_authorization_config.policy_bindings.new](#fn-default_cluster_configdefault_cluster_configpolicy_bindingsnew) constructor.

**Returns**:
  - An attribute object that represents the `binary_authorization_config` sub block.


## obj default_cluster_config.binary_authorization_config.policy_bindings



### fn default_cluster_config.binary_authorization_config.policy_bindings.new

```ts
new()
```


`google.gke_hub_fleet.default_cluster_config.binary_authorization_config.policy_bindings.new` constructs a new object with attributes and blocks configured for the `policy_bindings`
Terraform sub block.



**Args**:
  - `name` (`string`): The relative resource name of the binauthz platform policy to audit. GKE
platform policies have the following format:
&#39;projects/{project_number}/platforms/gke/policies/{policy_id}&#39;. When `null`, the `name` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `policy_bindings` sub block.


## obj default_cluster_config.security_posture_config



### fn default_cluster_config.security_posture_config.new

```ts
new()
```


`google.gke_hub_fleet.default_cluster_config.security_posture_config.new` constructs a new object with attributes and blocks configured for the `security_posture_config`
Terraform sub block.



**Args**:
  - `mode` (`string`): Sets which mode to use for Security Posture features. Possible values: [&#34;DISABLED&#34;, &#34;BASIC&#34;] When `null`, the `mode` field will be omitted from the resulting object.
  - `vulnerability_mode` (`string`): Sets which mode to use for vulnerability scanning. Possible values: [&#34;VULNERABILITY_DISABLED&#34;, &#34;VULNERABILITY_BASIC&#34;, &#34;VULNERABILITY_ENTERPRISE&#34;] When `null`, the `vulnerability_mode` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `security_posture_config` sub block.


## obj timeouts



### fn timeouts.new

```ts
new()
```


`google.gke_hub_fleet.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`
Terraform sub block.



**Args**:
  - `create` (`string`): Set the `create` field on the resulting object. When `null`, the `create` field will be omitted from the resulting object.
  - `delete` (`string`): Set the `delete` field on the resulting object. When `null`, the `delete` field will be omitted from the resulting object.
  - `update` (`string`): Set the `update` field on the resulting object. When `null`, the `update` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `timeouts` sub block.
