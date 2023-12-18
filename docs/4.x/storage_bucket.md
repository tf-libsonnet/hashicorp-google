---
permalink: /storage_bucket/
---

# storage_bucket

`storage_bucket` represents the `google_storage_bucket` Terraform resource.



This package contains functions and utilities for setting up the resource using Jsonnet code.


## Index

* [`fn new()`](#fn-new)
* [`fn newAttrs()`](#fn-newattrs)
* [`fn withAutoclass()`](#fn-withautoclass)
* [`fn withAutoclassMixin()`](#fn-withautoclassmixin)
* [`fn withCors()`](#fn-withcors)
* [`fn withCorsMixin()`](#fn-withcorsmixin)
* [`fn withCustomPlacementConfig()`](#fn-withcustomplacementconfig)
* [`fn withCustomPlacementConfigMixin()`](#fn-withcustomplacementconfigmixin)
* [`fn withDefaultEventBasedHold()`](#fn-withdefaulteventbasedhold)
* [`fn withEnableObjectRetention()`](#fn-withenableobjectretention)
* [`fn withEncryption()`](#fn-withencryption)
* [`fn withEncryptionMixin()`](#fn-withencryptionmixin)
* [`fn withForceDestroy()`](#fn-withforcedestroy)
* [`fn withLabels()`](#fn-withlabels)
* [`fn withLifecycleRule()`](#fn-withlifecyclerule)
* [`fn withLifecycleRuleMixin()`](#fn-withlifecyclerulemixin)
* [`fn withLocation()`](#fn-withlocation)
* [`fn withLogging()`](#fn-withlogging)
* [`fn withLoggingMixin()`](#fn-withloggingmixin)
* [`fn withName()`](#fn-withname)
* [`fn withProject()`](#fn-withproject)
* [`fn withPublicAccessPrevention()`](#fn-withpublicaccessprevention)
* [`fn withRequesterPays()`](#fn-withrequesterpays)
* [`fn withRetentionPolicy()`](#fn-withretentionpolicy)
* [`fn withRetentionPolicyMixin()`](#fn-withretentionpolicymixin)
* [`fn withRpo()`](#fn-withrpo)
* [`fn withStorageClass()`](#fn-withstorageclass)
* [`fn withTimeouts()`](#fn-withtimeouts)
* [`fn withTimeoutsMixin()`](#fn-withtimeoutsmixin)
* [`fn withUniformBucketLevelAccess()`](#fn-withuniformbucketlevelaccess)
* [`fn withVersioning()`](#fn-withversioning)
* [`fn withVersioningMixin()`](#fn-withversioningmixin)
* [`fn withWebsite()`](#fn-withwebsite)
* [`fn withWebsiteMixin()`](#fn-withwebsitemixin)
* [`obj autoclass`](#obj-autoclass)
  * [`fn new()`](#fn-autoclassnew)
* [`obj cors`](#obj-cors)
  * [`fn new()`](#fn-corsnew)
* [`obj custom_placement_config`](#obj-custom_placement_config)
  * [`fn new()`](#fn-custom_placement_confignew)
* [`obj encryption`](#obj-encryption)
  * [`fn new()`](#fn-encryptionnew)
* [`obj lifecycle_rule`](#obj-lifecycle_rule)
  * [`fn new()`](#fn-lifecycle_rulenew)
  * [`obj lifecycle_rule.action`](#obj-lifecycle_ruleaction)
    * [`fn new()`](#fn-lifecycle_ruleactionnew)
  * [`obj lifecycle_rule.condition`](#obj-lifecycle_rulecondition)
    * [`fn new()`](#fn-lifecycle_ruleconditionnew)
* [`obj logging`](#obj-logging)
  * [`fn new()`](#fn-loggingnew)
* [`obj retention_policy`](#obj-retention_policy)
  * [`fn new()`](#fn-retention_policynew)
* [`obj timeouts`](#obj-timeouts)
  * [`fn new()`](#fn-timeoutsnew)
* [`obj versioning`](#obj-versioning)
  * [`fn new()`](#fn-versioningnew)
* [`obj website`](#obj-website)
  * [`fn new()`](#fn-websitenew)

## Fields

### fn new

```ts
new()
```


`google.storage_bucket.new` injects a new `google_storage_bucket` Terraform `resource`
block into the root module document.

Additionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the
resource. For example, if you added a new instance to the root using:

    # arguments omitted for brevity
    google.storage_bucket.new('some_id')

You can get the reference to the `id` field of the created `google.storage_bucket` using the reference:

    $._ref.google_storage_bucket.some_id.get('id')

This is the same as directly entering `"${ google_storage_bucket.some_id.id }"` as the value.

NOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,
or `$` to refer to the root object. Instead, make an explicit outer object using `local`.

**Args**:
  - `resourceLabel` (`string`): The name label of the block.
  - `default_event_based_hold` (`bool`): Whether or not to automatically apply an eventBasedHold to new objects added to the bucket. When `null`, the `default_event_based_hold` field will be omitted from the resulting object.
  - `enable_object_retention` (`bool`): Enables each object in the bucket to have its own retention policy, which prevents deletion until stored for a specific length of time. When `null`, the `enable_object_retention` field will be omitted from the resulting object.
  - `force_destroy` (`bool`): When deleting a bucket, this boolean option will delete all contained objects. If you try to delete a bucket that contains objects, Terraform will fail that run. When `null`, the `force_destroy` field will be omitted from the resulting object.
  - `labels` (`obj`): A set of key/value label pairs to assign to the bucket. When `null`, the `labels` field will be omitted from the resulting object.
  - `location` (`string`): The Google Cloud Storage location
  - `name` (`string`): The name of the bucket.
  - `project` (`string`): The ID of the project in which the resource belongs. If it is not provided, the provider project is used. When `null`, the `project` field will be omitted from the resulting object.
  - `public_access_prevention` (`string`): Prevents public access to a bucket. When `null`, the `public_access_prevention` field will be omitted from the resulting object.
  - `requester_pays` (`bool`): Enables Requester Pays on a storage bucket. When `null`, the `requester_pays` field will be omitted from the resulting object.
  - `rpo` (`string`): Specifies the RPO setting of bucket. If set &#39;ASYNC_TURBO&#39;, The Turbo Replication will be enabled for the dual-region bucket. Value &#39;DEFAULT&#39; will set RPO setting to default. Turbo Replication is only for buckets in dual-regions.See the docs for more details. When `null`, the `rpo` field will be omitted from the resulting object.
  - `storage_class` (`string`): The Storage Class of the new bucket. Supported values include: STANDARD, MULTI_REGIONAL, REGIONAL, NEARLINE, COLDLINE, ARCHIVE. When `null`, the `storage_class` field will be omitted from the resulting object.
  - `uniform_bucket_level_access` (`bool`): Enables uniform bucket-level access on a bucket. When `null`, the `uniform_bucket_level_access` field will be omitted from the resulting object.
  - `autoclass` (`list[obj]`): The bucket&#39;s autoclass configuration. When `null`, the `autoclass` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.storage_bucket.autoclass.new](#fn-autoclassnew) constructor.
  - `cors` (`list[obj]`): The bucket&#39;s Cross-Origin Resource Sharing (CORS) configuration. When `null`, the `cors` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.storage_bucket.cors.new](#fn-corsnew) constructor.
  - `custom_placement_config` (`list[obj]`): The bucket&#39;s custom location configuration, which specifies the individual regions that comprise a dual-region bucket. If the bucket is designated a single or multi-region, the parameters are empty. When `null`, the `custom_placement_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.storage_bucket.custom_placement_config.new](#fn-custom_placement_confignew) constructor.
  - `encryption` (`list[obj]`): The bucket&#39;s encryption configuration. When `null`, the `encryption` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.storage_bucket.encryption.new](#fn-encryptionnew) constructor.
  - `lifecycle_rule` (`list[obj]`): The bucket&#39;s Lifecycle Rules configuration. When `null`, the `lifecycle_rule` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.storage_bucket.lifecycle_rule.new](#fn-lifecycle_rulenew) constructor.
  - `logging` (`list[obj]`): The bucket&#39;s Access &amp; Storage Logs configuration. When `null`, the `logging` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.storage_bucket.logging.new](#fn-loggingnew) constructor.
  - `retention_policy` (`list[obj]`): Configuration of the bucket&#39;s data retention policy for how long objects in the bucket should be retained. When `null`, the `retention_policy` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.storage_bucket.retention_policy.new](#fn-retention_policynew) constructor.
  - `timeouts` (`obj`): Set the `timeouts` field on the resulting resource block. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.storage_bucket.timeouts.new](#fn-timeoutsnew) constructor.
  - `versioning` (`list[obj]`): The bucket&#39;s Versioning configuration. When `null`, the `versioning` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.storage_bucket.versioning.new](#fn-versioningnew) constructor.
  - `website` (`list[obj]`): Configuration if the bucket acts as a website. When `null`, the `website` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.storage_bucket.website.new](#fn-websitenew) constructor.

**Returns**:
- A mixin object that injects the new resource into the root Terraform configuration.


### fn newAttrs

```ts
newAttrs()
```


`google.storage_bucket.newAttrs` constructs a new object with attributes and blocks configured for the `storage_bucket`
Terraform resource.

Unlike [google.storage_bucket.new](#fn-new), this function will not inject the `resource`
block into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the
[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.

This is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to
injecting into a complete block.

**Args**:
  - `default_event_based_hold` (`bool`): Whether or not to automatically apply an eventBasedHold to new objects added to the bucket. When `null`, the `default_event_based_hold` field will be omitted from the resulting object.
  - `enable_object_retention` (`bool`): Enables each object in the bucket to have its own retention policy, which prevents deletion until stored for a specific length of time. When `null`, the `enable_object_retention` field will be omitted from the resulting object.
  - `force_destroy` (`bool`): When deleting a bucket, this boolean option will delete all contained objects. If you try to delete a bucket that contains objects, Terraform will fail that run. When `null`, the `force_destroy` field will be omitted from the resulting object.
  - `labels` (`obj`): A set of key/value label pairs to assign to the bucket. When `null`, the `labels` field will be omitted from the resulting object.
  - `location` (`string`): The Google Cloud Storage location
  - `name` (`string`): The name of the bucket.
  - `project` (`string`): The ID of the project in which the resource belongs. If it is not provided, the provider project is used. When `null`, the `project` field will be omitted from the resulting object.
  - `public_access_prevention` (`string`): Prevents public access to a bucket. When `null`, the `public_access_prevention` field will be omitted from the resulting object.
  - `requester_pays` (`bool`): Enables Requester Pays on a storage bucket. When `null`, the `requester_pays` field will be omitted from the resulting object.
  - `rpo` (`string`): Specifies the RPO setting of bucket. If set &#39;ASYNC_TURBO&#39;, The Turbo Replication will be enabled for the dual-region bucket. Value &#39;DEFAULT&#39; will set RPO setting to default. Turbo Replication is only for buckets in dual-regions.See the docs for more details. When `null`, the `rpo` field will be omitted from the resulting object.
  - `storage_class` (`string`): The Storage Class of the new bucket. Supported values include: STANDARD, MULTI_REGIONAL, REGIONAL, NEARLINE, COLDLINE, ARCHIVE. When `null`, the `storage_class` field will be omitted from the resulting object.
  - `uniform_bucket_level_access` (`bool`): Enables uniform bucket-level access on a bucket. When `null`, the `uniform_bucket_level_access` field will be omitted from the resulting object.
  - `autoclass` (`list[obj]`): The bucket&#39;s autoclass configuration. When `null`, the `autoclass` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.storage_bucket.autoclass.new](#fn-autoclassnew) constructor.
  - `cors` (`list[obj]`): The bucket&#39;s Cross-Origin Resource Sharing (CORS) configuration. When `null`, the `cors` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.storage_bucket.cors.new](#fn-corsnew) constructor.
  - `custom_placement_config` (`list[obj]`): The bucket&#39;s custom location configuration, which specifies the individual regions that comprise a dual-region bucket. If the bucket is designated a single or multi-region, the parameters are empty. When `null`, the `custom_placement_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.storage_bucket.custom_placement_config.new](#fn-custom_placement_confignew) constructor.
  - `encryption` (`list[obj]`): The bucket&#39;s encryption configuration. When `null`, the `encryption` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.storage_bucket.encryption.new](#fn-encryptionnew) constructor.
  - `lifecycle_rule` (`list[obj]`): The bucket&#39;s Lifecycle Rules configuration. When `null`, the `lifecycle_rule` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.storage_bucket.lifecycle_rule.new](#fn-lifecycle_rulenew) constructor.
  - `logging` (`list[obj]`): The bucket&#39;s Access &amp; Storage Logs configuration. When `null`, the `logging` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.storage_bucket.logging.new](#fn-loggingnew) constructor.
  - `retention_policy` (`list[obj]`): Configuration of the bucket&#39;s data retention policy for how long objects in the bucket should be retained. When `null`, the `retention_policy` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.storage_bucket.retention_policy.new](#fn-retention_policynew) constructor.
  - `timeouts` (`obj`): Set the `timeouts` field on the resulting object. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.storage_bucket.timeouts.new](#fn-timeoutsnew) constructor.
  - `versioning` (`list[obj]`): The bucket&#39;s Versioning configuration. When `null`, the `versioning` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.storage_bucket.versioning.new](#fn-versioningnew) constructor.
  - `website` (`list[obj]`): Configuration if the bucket acts as a website. When `null`, the `website` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.storage_bucket.website.new](#fn-websitenew) constructor.

**Returns**:
  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `storage_bucket` resource into the root Terraform configuration.


### fn withAutoclass

```ts
withAutoclass()
```

`google.list[obj].withAutoclass` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the autoclass field.

This function will replace the array with the passed in `value`. If you wish to instead append the
passed in value to the existing array, use the [google.list[obj].withAutoclassMixin](TODO) function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `autoclass` field.


### fn withAutoclassMixin

```ts
withAutoclassMixin()
```

`google.list[obj].withAutoclassMixin` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the autoclass field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google.list[obj].withAutoclass](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `autoclass` field.


### fn withCors

```ts
withCors()
```

`google.list[obj].withCors` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the cors field.

This function will replace the array with the passed in `value`. If you wish to instead append the
passed in value to the existing array, use the [google.list[obj].withCorsMixin](TODO) function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `cors` field.


### fn withCorsMixin

```ts
withCorsMixin()
```

`google.list[obj].withCorsMixin` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the cors field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google.list[obj].withCors](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `cors` field.


### fn withCustomPlacementConfig

```ts
withCustomPlacementConfig()
```

`google.list[obj].withCustomPlacementConfig` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the custom_placement_config field.

This function will replace the array with the passed in `value`. If you wish to instead append the
passed in value to the existing array, use the [google.list[obj].withCustomPlacementConfigMixin](TODO) function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `custom_placement_config` field.


### fn withCustomPlacementConfigMixin

```ts
withCustomPlacementConfigMixin()
```

`google.list[obj].withCustomPlacementConfigMixin` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the custom_placement_config field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google.list[obj].withCustomPlacementConfig](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `custom_placement_config` field.


### fn withDefaultEventBasedHold

```ts
withDefaultEventBasedHold()
```

`google.bool.withDefaultEventBasedHold` constructs a mixin object that can be merged into the `bool`
Terraform resource block to set or update the default_event_based_hold field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`bool`): The value to set for the `default_event_based_hold` field.


### fn withEnableObjectRetention

```ts
withEnableObjectRetention()
```

`google.bool.withEnableObjectRetention` constructs a mixin object that can be merged into the `bool`
Terraform resource block to set or update the enable_object_retention field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`bool`): The value to set for the `enable_object_retention` field.


### fn withEncryption

```ts
withEncryption()
```

`google.list[obj].withEncryption` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the encryption field.

This function will replace the array with the passed in `value`. If you wish to instead append the
passed in value to the existing array, use the [google.list[obj].withEncryptionMixin](TODO) function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `encryption` field.


### fn withEncryptionMixin

```ts
withEncryptionMixin()
```

`google.list[obj].withEncryptionMixin` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the encryption field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google.list[obj].withEncryption](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `encryption` field.


### fn withForceDestroy

```ts
withForceDestroy()
```

`google.bool.withForceDestroy` constructs a mixin object that can be merged into the `bool`
Terraform resource block to set or update the force_destroy field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`bool`): The value to set for the `force_destroy` field.


### fn withLabels

```ts
withLabels()
```

`google.obj.withLabels` constructs a mixin object that can be merged into the `obj`
Terraform resource block to set or update the labels field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`obj`): The value to set for the `labels` field.


### fn withLifecycleRule

```ts
withLifecycleRule()
```

`google.list[obj].withLifecycleRule` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the lifecycle_rule field.

This function will replace the array with the passed in `value`. If you wish to instead append the
passed in value to the existing array, use the [google.list[obj].withLifecycleRuleMixin](TODO) function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `lifecycle_rule` field.


### fn withLifecycleRuleMixin

```ts
withLifecycleRuleMixin()
```

`google.list[obj].withLifecycleRuleMixin` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the lifecycle_rule field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google.list[obj].withLifecycleRule](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `lifecycle_rule` field.


### fn withLocation

```ts
withLocation()
```

`google.string.withLocation` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the location field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `location` field.


### fn withLogging

```ts
withLogging()
```

`google.list[obj].withLogging` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the logging field.

This function will replace the array with the passed in `value`. If you wish to instead append the
passed in value to the existing array, use the [google.list[obj].withLoggingMixin](TODO) function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `logging` field.


### fn withLoggingMixin

```ts
withLoggingMixin()
```

`google.list[obj].withLoggingMixin` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the logging field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google.list[obj].withLogging](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `logging` field.


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


### fn withPublicAccessPrevention

```ts
withPublicAccessPrevention()
```

`google.string.withPublicAccessPrevention` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the public_access_prevention field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `public_access_prevention` field.


### fn withRequesterPays

```ts
withRequesterPays()
```

`google.bool.withRequesterPays` constructs a mixin object that can be merged into the `bool`
Terraform resource block to set or update the requester_pays field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`bool`): The value to set for the `requester_pays` field.


### fn withRetentionPolicy

```ts
withRetentionPolicy()
```

`google.list[obj].withRetentionPolicy` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the retention_policy field.

This function will replace the array with the passed in `value`. If you wish to instead append the
passed in value to the existing array, use the [google.list[obj].withRetentionPolicyMixin](TODO) function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `retention_policy` field.


### fn withRetentionPolicyMixin

```ts
withRetentionPolicyMixin()
```

`google.list[obj].withRetentionPolicyMixin` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the retention_policy field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google.list[obj].withRetentionPolicy](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `retention_policy` field.


### fn withRpo

```ts
withRpo()
```

`google.string.withRpo` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the rpo field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `rpo` field.


### fn withStorageClass

```ts
withStorageClass()
```

`google.string.withStorageClass` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the storage_class field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `storage_class` field.


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


### fn withUniformBucketLevelAccess

```ts
withUniformBucketLevelAccess()
```

`google.bool.withUniformBucketLevelAccess` constructs a mixin object that can be merged into the `bool`
Terraform resource block to set or update the uniform_bucket_level_access field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`bool`): The value to set for the `uniform_bucket_level_access` field.


### fn withVersioning

```ts
withVersioning()
```

`google.list[obj].withVersioning` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the versioning field.

This function will replace the array with the passed in `value`. If you wish to instead append the
passed in value to the existing array, use the [google.list[obj].withVersioningMixin](TODO) function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `versioning` field.


### fn withVersioningMixin

```ts
withVersioningMixin()
```

`google.list[obj].withVersioningMixin` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the versioning field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google.list[obj].withVersioning](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `versioning` field.


### fn withWebsite

```ts
withWebsite()
```

`google.list[obj].withWebsite` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the website field.

This function will replace the array with the passed in `value`. If you wish to instead append the
passed in value to the existing array, use the [google.list[obj].withWebsiteMixin](TODO) function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `website` field.


### fn withWebsiteMixin

```ts
withWebsiteMixin()
```

`google.list[obj].withWebsiteMixin` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the website field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google.list[obj].withWebsite](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `website` field.


## obj autoclass



### fn autoclass.new

```ts
new()
```


`google.storage_bucket.autoclass.new` constructs a new object with attributes and blocks configured for the `autoclass`
Terraform sub block.



**Args**:
  - `enabled` (`bool`): While set to true, autoclass automatically transitions objects in your bucket to appropriate storage classes based on each object&#39;s access pattern.
  - `terminal_storage_class` (`string`): The storage class that objects in the bucket eventually transition to if they are not read for a certain length of time. Supported values include: NEARLINE, ARCHIVE. When `null`, the `terminal_storage_class` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `autoclass` sub block.


## obj cors



### fn cors.new

```ts
new()
```


`google.storage_bucket.cors.new` constructs a new object with attributes and blocks configured for the `cors`
Terraform sub block.



**Args**:
  - `max_age_seconds` (`number`): The value, in seconds, to return in the Access-Control-Max-Age header used in preflight responses. When `null`, the `max_age_seconds` field will be omitted from the resulting object.
  - `method` (`list`): The list of HTTP methods on which to include CORS response headers, (GET, OPTIONS, POST, etc) Note: &#34;*&#34; is permitted in the list of methods, and means &#34;any method&#34;. When `null`, the `method` field will be omitted from the resulting object.
  - `origin` (`list`): The list of Origins eligible to receive CORS response headers. Note: &#34;*&#34; is permitted in the list of origins, and means &#34;any Origin&#34;. When `null`, the `origin` field will be omitted from the resulting object.
  - `response_header` (`list`): The list of HTTP headers other than the simple response headers to give permission for the user-agent to share across domains. When `null`, the `response_header` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `cors` sub block.


## obj custom_placement_config



### fn custom_placement_config.new

```ts
new()
```


`google.storage_bucket.custom_placement_config.new` constructs a new object with attributes and blocks configured for the `custom_placement_config`
Terraform sub block.



**Args**:
  - `data_locations` (`list`): The list of individual regions that comprise a dual-region bucket. See the docs for a list of acceptable regions. Note: If any of the data_locations changes, it will recreate the bucket.

**Returns**:
  - An attribute object that represents the `custom_placement_config` sub block.


## obj encryption



### fn encryption.new

```ts
new()
```


`google.storage_bucket.encryption.new` constructs a new object with attributes and blocks configured for the `encryption`
Terraform sub block.



**Args**:
  - `default_kms_key_name` (`string`): A Cloud KMS key that will be used to encrypt objects inserted into this bucket, if no encryption method is specified. You must pay attention to whether the crypto key is available in the location that this bucket is created in. See the docs for more details.

**Returns**:
  - An attribute object that represents the `encryption` sub block.


## obj lifecycle_rule



### fn lifecycle_rule.new

```ts
new()
```


`google.storage_bucket.lifecycle_rule.new` constructs a new object with attributes and blocks configured for the `lifecycle_rule`
Terraform sub block.



**Args**:
  - `action` (`list[obj]`): The Lifecycle Rule&#39;s action configuration. A single block of this type is supported. When `null`, the `action` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.storage_bucket.lifecycle_rule.action.new](#fn-lifecycle_ruleactionnew) constructor.
  - `condition` (`list[obj]`): The Lifecycle Rule&#39;s condition configuration. When `null`, the `condition` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.storage_bucket.lifecycle_rule.condition.new](#fn-lifecycle_ruleconditionnew) constructor.

**Returns**:
  - An attribute object that represents the `lifecycle_rule` sub block.


## obj lifecycle_rule.action



### fn lifecycle_rule.action.new

```ts
new()
```


`google.storage_bucket.lifecycle_rule.action.new` constructs a new object with attributes and blocks configured for the `action`
Terraform sub block.



**Args**:
  - `storage_class` (`string`): The target Storage Class of objects affected by this Lifecycle Rule. Supported values include: MULTI_REGIONAL, REGIONAL, NEARLINE, COLDLINE, ARCHIVE. When `null`, the `storage_class` field will be omitted from the resulting object.
  - `type` (`string`): The type of the action of this Lifecycle Rule. Supported values include: Delete, SetStorageClass and AbortIncompleteMultipartUpload.

**Returns**:
  - An attribute object that represents the `action` sub block.


## obj lifecycle_rule.condition



### fn lifecycle_rule.condition.new

```ts
new()
```


`google.storage_bucket.lifecycle_rule.condition.new` constructs a new object with attributes and blocks configured for the `condition`
Terraform sub block.



**Args**:
  - `age` (`number`): Minimum age of an object in days to satisfy this condition. When `null`, the `age` field will be omitted from the resulting object.
  - `created_before` (`string`): Creation date of an object in RFC 3339 (e.g. 2017-06-13) to satisfy this condition. When `null`, the `created_before` field will be omitted from the resulting object.
  - `custom_time_before` (`string`): Creation date of an object in RFC 3339 (e.g. 2017-06-13) to satisfy this condition. When `null`, the `custom_time_before` field will be omitted from the resulting object.
  - `days_since_custom_time` (`number`): Number of days elapsed since the user-specified timestamp set on an object. When `null`, the `days_since_custom_time` field will be omitted from the resulting object.
  - `days_since_noncurrent_time` (`number`): Number of days elapsed since the noncurrent timestamp of an object. This
										condition is relevant only for versioned objects. When `null`, the `days_since_noncurrent_time` field will be omitted from the resulting object.
  - `matches_prefix` (`list`): One or more matching name prefixes to satisfy this condition. When `null`, the `matches_prefix` field will be omitted from the resulting object.
  - `matches_storage_class` (`list`): Storage Class of objects to satisfy this condition. Supported values include: MULTI_REGIONAL, REGIONAL, NEARLINE, COLDLINE, ARCHIVE, STANDARD, DURABLE_REDUCED_AVAILABILITY. When `null`, the `matches_storage_class` field will be omitted from the resulting object.
  - `matches_suffix` (`list`): One or more matching name suffixes to satisfy this condition. When `null`, the `matches_suffix` field will be omitted from the resulting object.
  - `no_age` (`bool`): While set true, age value will be omitted.Required to set true when age is unset in the config file. When `null`, the `no_age` field will be omitted from the resulting object.
  - `noncurrent_time_before` (`string`): Creation date of an object in RFC 3339 (e.g. 2017-06-13) to satisfy this condition. When `null`, the `noncurrent_time_before` field will be omitted from the resulting object.
  - `num_newer_versions` (`number`): Relevant only for versioned objects. The number of newer versions of an object to satisfy this condition. When `null`, the `num_newer_versions` field will be omitted from the resulting object.
  - `with_state` (`string`): Match to live and/or archived objects. Unversioned buckets have only live objects. Supported values include: &#34;LIVE&#34;, &#34;ARCHIVED&#34;, &#34;ANY&#34;. When `null`, the `with_state` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `condition` sub block.


## obj logging



### fn logging.new

```ts
new()
```


`google.storage_bucket.logging.new` constructs a new object with attributes and blocks configured for the `logging`
Terraform sub block.



**Args**:
  - `log_bucket` (`string`): The bucket that will receive log objects.
  - `log_object_prefix` (`string`): The object prefix for log objects. If it&#39;s not provided, by default Google Cloud Storage sets this to this bucket&#39;s name. When `null`, the `log_object_prefix` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `logging` sub block.


## obj retention_policy



### fn retention_policy.new

```ts
new()
```


`google.storage_bucket.retention_policy.new` constructs a new object with attributes and blocks configured for the `retention_policy`
Terraform sub block.



**Args**:
  - `is_locked` (`bool`): If set to true, the bucket will be locked and permanently restrict edits to the bucket&#39;s retention policy.  Caution: Locking a bucket is an irreversible action. When `null`, the `is_locked` field will be omitted from the resulting object.
  - `retention_period` (`number`): The period of time, in seconds, that objects in the bucket must be retained and cannot be deleted, overwritten, or archived. The value must be less than 3,155,760,000 seconds.

**Returns**:
  - An attribute object that represents the `retention_policy` sub block.


## obj timeouts



### fn timeouts.new

```ts
new()
```


`google.storage_bucket.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`
Terraform sub block.



**Args**:
  - `create` (`string`): Set the `create` field on the resulting object. When `null`, the `create` field will be omitted from the resulting object.
  - `read` (`string`): Set the `read` field on the resulting object. When `null`, the `read` field will be omitted from the resulting object.
  - `update` (`string`): Set the `update` field on the resulting object. When `null`, the `update` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `timeouts` sub block.


## obj versioning



### fn versioning.new

```ts
new()
```


`google.storage_bucket.versioning.new` constructs a new object with attributes and blocks configured for the `versioning`
Terraform sub block.



**Args**:
  - `enabled` (`bool`): While set to true, versioning is fully enabled for this bucket.

**Returns**:
  - An attribute object that represents the `versioning` sub block.


## obj website



### fn website.new

```ts
new()
```


`google.storage_bucket.website.new` constructs a new object with attributes and blocks configured for the `website`
Terraform sub block.



**Args**:
  - `main_page_suffix` (`string`): Behaves as the bucket&#39;s directory index where missing objects are treated as potential directories. When `null`, the `main_page_suffix` field will be omitted from the resulting object.
  - `not_found_page` (`string`): The custom object to return when a requested resource is not found. When `null`, the `not_found_page` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `website` sub block.
