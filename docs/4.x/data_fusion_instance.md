---
permalink: /data_fusion_instance/
---

# data_fusion_instance

`data_fusion_instance` represents the `google_data_fusion_instance` Terraform resource.



This package contains functions and utilities for setting up the resource using Jsonnet code.


## Index

* [`fn new()`](#fn-new)
* [`fn newAttrs()`](#fn-newattrs)
* [`fn withAccelerators()`](#fn-withaccelerators)
* [`fn withAcceleratorsMixin()`](#fn-withacceleratorsmixin)
* [`fn withCryptoKeyConfig()`](#fn-withcryptokeyconfig)
* [`fn withCryptoKeyConfigMixin()`](#fn-withcryptokeyconfigmixin)
* [`fn withDataprocServiceAccount()`](#fn-withdataprocserviceaccount)
* [`fn withDescription()`](#fn-withdescription)
* [`fn withDisplayName()`](#fn-withdisplayname)
* [`fn withEnableRbac()`](#fn-withenablerbac)
* [`fn withEnableStackdriverLogging()`](#fn-withenablestackdriverlogging)
* [`fn withEnableStackdriverMonitoring()`](#fn-withenablestackdrivermonitoring)
* [`fn withEventPublishConfig()`](#fn-witheventpublishconfig)
* [`fn withEventPublishConfigMixin()`](#fn-witheventpublishconfigmixin)
* [`fn withLabels()`](#fn-withlabels)
* [`fn withName()`](#fn-withname)
* [`fn withNetworkConfig()`](#fn-withnetworkconfig)
* [`fn withNetworkConfigMixin()`](#fn-withnetworkconfigmixin)
* [`fn withOptions()`](#fn-withoptions)
* [`fn withPrivateInstance()`](#fn-withprivateinstance)
* [`fn withProject()`](#fn-withproject)
* [`fn withRegion()`](#fn-withregion)
* [`fn withTimeouts()`](#fn-withtimeouts)
* [`fn withTimeoutsMixin()`](#fn-withtimeoutsmixin)
* [`fn withType()`](#fn-withtype)
* [`fn withVersion()`](#fn-withversion)
* [`fn withZone()`](#fn-withzone)
* [`obj accelerators`](#obj-accelerators)
  * [`fn new()`](#fn-acceleratorsnew)
* [`obj crypto_key_config`](#obj-crypto_key_config)
  * [`fn new()`](#fn-crypto_key_confignew)
* [`obj event_publish_config`](#obj-event_publish_config)
  * [`fn new()`](#fn-event_publish_confignew)
* [`obj network_config`](#obj-network_config)
  * [`fn new()`](#fn-network_confignew)
* [`obj timeouts`](#obj-timeouts)
  * [`fn new()`](#fn-timeoutsnew)

## Fields

### fn new

```ts
new()
```


`google.data_fusion_instance.new` injects a new `google_data_fusion_instance` Terraform `resource`
block into the root module document.

Additionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the
resource. For example, if you added a new instance to the root using:

    # arguments omitted for brevity
    google.data_fusion_instance.new('some_id')

You can get the reference to the `id` field of the created `google.data_fusion_instance` using the reference:

    $._ref.google_data_fusion_instance.some_id.get('id')

This is the same as directly entering `"${ google_data_fusion_instance.some_id.id }"` as the value.

NOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,
or `$` to refer to the root object. Instead, make an explicit outer object using `local`.

**Args**:
  - `resourceLabel` (`string`): The name label of the block.
  - `dataproc_service_account` (`string`): User-managed service account to set on Dataproc when Cloud Data Fusion creates Dataproc to run data processing pipelines. When `null`, the `dataproc_service_account` field will be omitted from the resulting object.
  - `description` (`string`): An optional description of the instance. When `null`, the `description` field will be omitted from the resulting object.
  - `display_name` (`string`): Display name for an instance. When `null`, the `display_name` field will be omitted from the resulting object.
  - `enable_rbac` (`bool`): Option to enable granular role-based access control. When `null`, the `enable_rbac` field will be omitted from the resulting object.
  - `enable_stackdriver_logging` (`bool`): Option to enable Stackdriver Logging. When `null`, the `enable_stackdriver_logging` field will be omitted from the resulting object.
  - `enable_stackdriver_monitoring` (`bool`): Option to enable Stackdriver Monitoring. When `null`, the `enable_stackdriver_monitoring` field will be omitted from the resulting object.
  - `labels` (`obj`): The resource labels for instance to use to annotate any related underlying resources,
such as Compute Engine VMs. When `null`, the `labels` field will be omitted from the resulting object.
  - `name` (`string`): The ID of the instance or a fully qualified identifier for the instance.
  - `options` (`obj`): Map of additional options used to configure the behavior of Data Fusion instance. When `null`, the `options` field will be omitted from the resulting object.
  - `private_instance` (`bool`): Specifies whether the Data Fusion instance should be private. If set to
true, all Data Fusion nodes will have private IP addresses and will not be
able to access the public internet. When `null`, the `private_instance` field will be omitted from the resulting object.
  - `project` (`string`): Set the `project` field on the resulting resource block. When `null`, the `project` field will be omitted from the resulting object.
  - `region` (`string`): The region of the Data Fusion instance. When `null`, the `region` field will be omitted from the resulting object.
  - `type` (`string`): Represents the type of Data Fusion instance. Each type is configured with
the default settings for processing and memory.
- BASIC: Basic Data Fusion instance. In Basic type, the user will be able to create data pipelines
using point and click UI. However, there are certain limitations, such as fewer number
of concurrent pipelines, no support for streaming pipelines, etc.
- ENTERPRISE: Enterprise Data Fusion instance. In Enterprise type, the user will have more features
available, such as support for streaming pipelines, higher number of concurrent pipelines, etc.
- DEVELOPER: Developer Data Fusion instance. In Developer type, the user will have all features available but
with restrictive capabilities. This is to help enterprises design and develop their data ingestion and integration
pipelines at low cost. Possible values: [&#34;BASIC&#34;, &#34;ENTERPRISE&#34;, &#34;DEVELOPER&#34;]
  - `version` (`string`): Current version of the Data Fusion. When `null`, the `version` field will be omitted from the resulting object.
  - `zone` (`string`): Name of the zone in which the Data Fusion instance will be created. Only DEVELOPER instances use this field. When `null`, the `zone` field will be omitted from the resulting object.
  - `accelerators` (`list[obj]`): List of accelerators enabled for this CDF instance.

If accelerators are enabled it is possible a permadiff will be created with the Options field.
Users will need to either manually update their state file to include these diffed options, or include the field in a [lifecycle ignore changes block](https://developer.hashicorp.com/terraform/language/meta-arguments/lifecycle#ignore_changes). When `null`, the `accelerators` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.data_fusion_instance.accelerators.new](#fn-acceleratorsnew) constructor.
  - `crypto_key_config` (`list[obj]`): The crypto key configuration. This field is used by the Customer-Managed Encryption Keys (CMEK) feature. When `null`, the `crypto_key_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.data_fusion_instance.crypto_key_config.new](#fn-crypto_key_confignew) constructor.
  - `event_publish_config` (`list[obj]`): Option to enable and pass metadata for event publishing. When `null`, the `event_publish_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.data_fusion_instance.event_publish_config.new](#fn-event_publish_confignew) constructor.
  - `network_config` (`list[obj]`): Network configuration options. These are required when a private Data Fusion instance is to be created. When `null`, the `network_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.data_fusion_instance.network_config.new](#fn-network_confignew) constructor.
  - `timeouts` (`obj`): Set the `timeouts` field on the resulting resource block. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.data_fusion_instance.timeouts.new](#fn-timeoutsnew) constructor.

**Returns**:
- A mixin object that injects the new resource into the root Terraform configuration.


### fn newAttrs

```ts
newAttrs()
```


`google.data_fusion_instance.newAttrs` constructs a new object with attributes and blocks configured for the `data_fusion_instance`
Terraform resource.

Unlike [google.data_fusion_instance.new](#fn-new), this function will not inject the `resource`
block into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the
[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.

This is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to
injecting into a complete block.

**Args**:
  - `dataproc_service_account` (`string`): User-managed service account to set on Dataproc when Cloud Data Fusion creates Dataproc to run data processing pipelines. When `null`, the `dataproc_service_account` field will be omitted from the resulting object.
  - `description` (`string`): An optional description of the instance. When `null`, the `description` field will be omitted from the resulting object.
  - `display_name` (`string`): Display name for an instance. When `null`, the `display_name` field will be omitted from the resulting object.
  - `enable_rbac` (`bool`): Option to enable granular role-based access control. When `null`, the `enable_rbac` field will be omitted from the resulting object.
  - `enable_stackdriver_logging` (`bool`): Option to enable Stackdriver Logging. When `null`, the `enable_stackdriver_logging` field will be omitted from the resulting object.
  - `enable_stackdriver_monitoring` (`bool`): Option to enable Stackdriver Monitoring. When `null`, the `enable_stackdriver_monitoring` field will be omitted from the resulting object.
  - `labels` (`obj`): The resource labels for instance to use to annotate any related underlying resources,
such as Compute Engine VMs. When `null`, the `labels` field will be omitted from the resulting object.
  - `name` (`string`): The ID of the instance or a fully qualified identifier for the instance.
  - `options` (`obj`): Map of additional options used to configure the behavior of Data Fusion instance. When `null`, the `options` field will be omitted from the resulting object.
  - `private_instance` (`bool`): Specifies whether the Data Fusion instance should be private. If set to
true, all Data Fusion nodes will have private IP addresses and will not be
able to access the public internet. When `null`, the `private_instance` field will be omitted from the resulting object.
  - `project` (`string`): Set the `project` field on the resulting object. When `null`, the `project` field will be omitted from the resulting object.
  - `region` (`string`): The region of the Data Fusion instance. When `null`, the `region` field will be omitted from the resulting object.
  - `type` (`string`): Represents the type of Data Fusion instance. Each type is configured with
the default settings for processing and memory.
- BASIC: Basic Data Fusion instance. In Basic type, the user will be able to create data pipelines
using point and click UI. However, there are certain limitations, such as fewer number
of concurrent pipelines, no support for streaming pipelines, etc.
- ENTERPRISE: Enterprise Data Fusion instance. In Enterprise type, the user will have more features
available, such as support for streaming pipelines, higher number of concurrent pipelines, etc.
- DEVELOPER: Developer Data Fusion instance. In Developer type, the user will have all features available but
with restrictive capabilities. This is to help enterprises design and develop their data ingestion and integration
pipelines at low cost. Possible values: [&#34;BASIC&#34;, &#34;ENTERPRISE&#34;, &#34;DEVELOPER&#34;]
  - `version` (`string`): Current version of the Data Fusion. When `null`, the `version` field will be omitted from the resulting object.
  - `zone` (`string`): Name of the zone in which the Data Fusion instance will be created. Only DEVELOPER instances use this field. When `null`, the `zone` field will be omitted from the resulting object.
  - `accelerators` (`list[obj]`): List of accelerators enabled for this CDF instance.

If accelerators are enabled it is possible a permadiff will be created with the Options field.
Users will need to either manually update their state file to include these diffed options, or include the field in a [lifecycle ignore changes block](https://developer.hashicorp.com/terraform/language/meta-arguments/lifecycle#ignore_changes). When `null`, the `accelerators` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.data_fusion_instance.accelerators.new](#fn-acceleratorsnew) constructor.
  - `crypto_key_config` (`list[obj]`): The crypto key configuration. This field is used by the Customer-Managed Encryption Keys (CMEK) feature. When `null`, the `crypto_key_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.data_fusion_instance.crypto_key_config.new](#fn-crypto_key_confignew) constructor.
  - `event_publish_config` (`list[obj]`): Option to enable and pass metadata for event publishing. When `null`, the `event_publish_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.data_fusion_instance.event_publish_config.new](#fn-event_publish_confignew) constructor.
  - `network_config` (`list[obj]`): Network configuration options. These are required when a private Data Fusion instance is to be created. When `null`, the `network_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.data_fusion_instance.network_config.new](#fn-network_confignew) constructor.
  - `timeouts` (`obj`): Set the `timeouts` field on the resulting object. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.data_fusion_instance.timeouts.new](#fn-timeoutsnew) constructor.

**Returns**:
  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `data_fusion_instance` resource into the root Terraform configuration.


### fn withAccelerators

```ts
withAccelerators()
```

`google.list[obj].withAccelerators` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the accelerators field.

This function will replace the array with the passed in `value`. If you wish to instead append the
passed in value to the existing array, use the [google.list[obj].withAcceleratorsMixin](TODO) function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `accelerators` field.


### fn withAcceleratorsMixin

```ts
withAcceleratorsMixin()
```

`google.list[obj].withAcceleratorsMixin` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the accelerators field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google.list[obj].withAccelerators](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `accelerators` field.


### fn withCryptoKeyConfig

```ts
withCryptoKeyConfig()
```

`google.list[obj].withCryptoKeyConfig` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the crypto_key_config field.

This function will replace the array with the passed in `value`. If you wish to instead append the
passed in value to the existing array, use the [google.list[obj].withCryptoKeyConfigMixin](TODO) function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `crypto_key_config` field.


### fn withCryptoKeyConfigMixin

```ts
withCryptoKeyConfigMixin()
```

`google.list[obj].withCryptoKeyConfigMixin` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the crypto_key_config field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google.list[obj].withCryptoKeyConfig](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `crypto_key_config` field.


### fn withDataprocServiceAccount

```ts
withDataprocServiceAccount()
```

`google.string.withDataprocServiceAccount` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the dataproc_service_account field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `dataproc_service_account` field.


### fn withDescription

```ts
withDescription()
```

`google.string.withDescription` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the description field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `description` field.


### fn withDisplayName

```ts
withDisplayName()
```

`google.string.withDisplayName` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the display_name field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `display_name` field.


### fn withEnableRbac

```ts
withEnableRbac()
```

`google.bool.withEnableRbac` constructs a mixin object that can be merged into the `bool`
Terraform resource block to set or update the enable_rbac field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`bool`): The value to set for the `enable_rbac` field.


### fn withEnableStackdriverLogging

```ts
withEnableStackdriverLogging()
```

`google.bool.withEnableStackdriverLogging` constructs a mixin object that can be merged into the `bool`
Terraform resource block to set or update the enable_stackdriver_logging field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`bool`): The value to set for the `enable_stackdriver_logging` field.


### fn withEnableStackdriverMonitoring

```ts
withEnableStackdriverMonitoring()
```

`google.bool.withEnableStackdriverMonitoring` constructs a mixin object that can be merged into the `bool`
Terraform resource block to set or update the enable_stackdriver_monitoring field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`bool`): The value to set for the `enable_stackdriver_monitoring` field.


### fn withEventPublishConfig

```ts
withEventPublishConfig()
```

`google.list[obj].withEventPublishConfig` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the event_publish_config field.

This function will replace the array with the passed in `value`. If you wish to instead append the
passed in value to the existing array, use the [google.list[obj].withEventPublishConfigMixin](TODO) function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `event_publish_config` field.


### fn withEventPublishConfigMixin

```ts
withEventPublishConfigMixin()
```

`google.list[obj].withEventPublishConfigMixin` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the event_publish_config field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google.list[obj].withEventPublishConfig](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `event_publish_config` field.


### fn withLabels

```ts
withLabels()
```

`google.obj.withLabels` constructs a mixin object that can be merged into the `obj`
Terraform resource block to set or update the labels field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`obj`): The value to set for the `labels` field.


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


### fn withOptions

```ts
withOptions()
```

`google.obj.withOptions` constructs a mixin object that can be merged into the `obj`
Terraform resource block to set or update the options field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`obj`): The value to set for the `options` field.


### fn withPrivateInstance

```ts
withPrivateInstance()
```

`google.bool.withPrivateInstance` constructs a mixin object that can be merged into the `bool`
Terraform resource block to set or update the private_instance field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`bool`): The value to set for the `private_instance` field.


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


### fn withVersion

```ts
withVersion()
```

`google.string.withVersion` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the version field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `version` field.


### fn withZone

```ts
withZone()
```

`google.string.withZone` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the zone field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `zone` field.


## obj accelerators



### fn accelerators.new

```ts
new()
```


`google.data_fusion_instance.accelerators.new` constructs a new object with attributes and blocks configured for the `accelerators`
Terraform sub block.



**Args**:
  - `accelerator_type` (`string`): The type of an accelator for a CDF instance. Possible values: [&#34;CDC&#34;, &#34;HEALTHCARE&#34;, &#34;CCAI_INSIGHTS&#34;]
  - `state` (`string`): The type of an accelator for a CDF instance. Possible values: [&#34;ENABLED&#34;, &#34;DISABLED&#34;]

**Returns**:
  - An attribute object that represents the `accelerators` sub block.


## obj crypto_key_config



### fn crypto_key_config.new

```ts
new()
```


`google.data_fusion_instance.crypto_key_config.new` constructs a new object with attributes and blocks configured for the `crypto_key_config`
Terraform sub block.



**Args**:
  - `key_reference` (`string`): The name of the key which is used to encrypt/decrypt customer data. For key in Cloud KMS, the key should be in the format of projects/*/locations/*/keyRings/*/cryptoKeys/*.

**Returns**:
  - An attribute object that represents the `crypto_key_config` sub block.


## obj event_publish_config



### fn event_publish_config.new

```ts
new()
```


`google.data_fusion_instance.event_publish_config.new` constructs a new object with attributes and blocks configured for the `event_publish_config`
Terraform sub block.



**Args**:
  - `enabled` (`bool`): Option to enable Event Publishing.
  - `topic` (`string`): The resource name of the Pub/Sub topic. Format: projects/{projectId}/topics/{topic_id}

**Returns**:
  - An attribute object that represents the `event_publish_config` sub block.


## obj network_config



### fn network_config.new

```ts
new()
```


`google.data_fusion_instance.network_config.new` constructs a new object with attributes and blocks configured for the `network_config`
Terraform sub block.



**Args**:
  - `ip_allocation` (`string`): The IP range in CIDR notation to use for the managed Data Fusion instance
nodes. This range must not overlap with any other ranges used in the Data Fusion instance network.
  - `network` (`string`): Name of the network in the project with which the tenant project
will be peered for executing pipelines. In case of shared VPC where the network resides in another host
project the network should specified in the form of projects/{host-project-id}/global/networks/{network}

**Returns**:
  - An attribute object that represents the `network_config` sub block.


## obj timeouts



### fn timeouts.new

```ts
new()
```


`google.data_fusion_instance.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`
Terraform sub block.



**Args**:
  - `create` (`string`): Set the `create` field on the resulting object. When `null`, the `create` field will be omitted from the resulting object.
  - `delete` (`string`): Set the `delete` field on the resulting object. When `null`, the `delete` field will be omitted from the resulting object.
  - `update` (`string`): Set the `update` field on the resulting object. When `null`, the `update` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `timeouts` sub block.
