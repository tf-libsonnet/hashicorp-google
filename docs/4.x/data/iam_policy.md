---
permalink: /data/iam_policy/
---

# data.iam_policy

`iam_policy` represents the `google_iam_policy` Terraform data source.



This package contains functions and utilities for setting up the data source using Jsonnet code.


## Index

* [`fn new()`](#fn-new)
* [`fn newAttrs()`](#fn-newattrs)
* [`fn withAuditConfig()`](#fn-withauditconfig)
* [`fn withAuditConfigMixin()`](#fn-withauditconfigmixin)
* [`fn withBinding()`](#fn-withbinding)
* [`fn withBindingMixin()`](#fn-withbindingmixin)
* [`obj audit_config`](#obj-audit_config)
  * [`fn new()`](#fn-audit_confignew)
  * [`obj audit_config.audit_log_configs`](#obj-audit_configaudit_log_configs)
    * [`fn new()`](#fn-audit_configaudit_log_configsnew)
* [`obj binding`](#obj-binding)
  * [`fn new()`](#fn-bindingnew)
  * [`obj binding.condition`](#obj-bindingcondition)
    * [`fn new()`](#fn-bindingconditionnew)

## Fields

### fn new

```ts
new()
```


`google.data.iam_policy.new` injects a new `data_google_iam_policy` Terraform `data source`
block into the root module document.

Additionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the
resource. For example, if you added a new instance to the root using:

    # arguments omitted for brevity
    google.data.iam_policy.new('some_id')

You can get the reference to the `id` field of the created `google.data.iam_policy` using the reference:

    $._ref.data_google_iam_policy.some_id.get('id')

This is the same as directly entering `"${ data_google_iam_policy.some_id.id }"` as the value.

NOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,
or `$` to refer to the root object. Instead, make an explicit outer object using `local`.

**Args**:
  - `dataSrcLabel` (`string`): The name label of the block.
  - `audit_config` (`list[obj]`): Set the `audit_config` field on the resulting data source block. When `null`, the `audit_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.data.iam_policy.audit_config.new](#fn-audit_confignew) constructor.
  - `binding` (`list[obj]`): Set the `binding` field on the resulting data source block. When `null`, the `binding` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.data.iam_policy.binding.new](#fn-bindingnew) constructor.

**Returns**:
- A mixin object that injects the new data source into the root Terraform configuration.


### fn newAttrs

```ts
newAttrs()
```


`google.data.iam_policy.newAttrs` constructs a new object with attributes and blocks configured for the `iam_policy`
Terraform data source.

Unlike [google.data.iam_policy.new](#fn-new), this function will not inject the `data source`
block into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the
[tf.withData](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withdata) function to build a complete block.

This is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to
injecting into a complete block.

**Args**:
  - `audit_config` (`list[obj]`): Set the `audit_config` field on the resulting object. When `null`, the `audit_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.data.iam_policy.audit_config.new](#fn-audit_confignew) constructor.
  - `binding` (`list[obj]`): Set the `binding` field on the resulting object. When `null`, the `binding` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.data.iam_policy.binding.new](#fn-bindingnew) constructor.

**Returns**:
  - An attribute object that can be used with [tf.withData](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withdata) to construct a new `iam_policy` data source into the root Terraform configuration.


### fn withAuditConfig

```ts
withAuditConfig()
```

`google.list[obj].withAuditConfig` constructs a mixin object that can be merged into the `list[obj]`
Terraform data source block to set or update the audit_config field.

This function will replace the array with the passed in `value`. If you wish to instead append the
passed in value to the existing array, use the [google.list[obj].withAuditConfigMixin](TODO) function.


**Args**:
  - `dataSrcLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `audit_config` field.


### fn withAuditConfigMixin

```ts
withAuditConfigMixin()
```

`google.list[obj].withAuditConfigMixin` constructs a mixin object that can be merged into the `list[obj]`
Terraform data source block to set or update the audit_config field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google.list[obj].withAuditConfig](TODO)
function.


**Args**:
  - `dataSrcLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `audit_config` field.


### fn withBinding

```ts
withBinding()
```

`google.list[obj].withBinding` constructs a mixin object that can be merged into the `list[obj]`
Terraform data source block to set or update the binding field.

This function will replace the array with the passed in `value`. If you wish to instead append the
passed in value to the existing array, use the [google.list[obj].withBindingMixin](TODO) function.


**Args**:
  - `dataSrcLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `binding` field.


### fn withBindingMixin

```ts
withBindingMixin()
```

`google.list[obj].withBindingMixin` constructs a mixin object that can be merged into the `list[obj]`
Terraform data source block to set or update the binding field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google.list[obj].withBinding](TODO)
function.


**Args**:
  - `dataSrcLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `binding` field.


## obj audit_config



### fn audit_config.new

```ts
new()
```


`google.iam_policy.audit_config.new` constructs a new object with attributes and blocks configured for the `audit_config`
Terraform sub block.



**Args**:
  - `service` (`string`): Set the `service` field on the resulting object.
  - `audit_log_configs` (`list[obj]`): Set the `audit_log_configs` field on the resulting object. When `null`, the `audit_log_configs` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.iam_policy.audit_config.audit_log_configs.new](#fn-audit_configaudit_log_configsnew) constructor.

**Returns**:
  - An attribute object that represents the `audit_config` sub block.


## obj audit_config.audit_log_configs



### fn audit_config.audit_log_configs.new

```ts
new()
```


`google.iam_policy.audit_config.audit_log_configs.new` constructs a new object with attributes and blocks configured for the `audit_log_configs`
Terraform sub block.



**Args**:
  - `exempted_members` (`list`): Set the `exempted_members` field on the resulting object. When `null`, the `exempted_members` field will be omitted from the resulting object.
  - `log_type` (`string`): Set the `log_type` field on the resulting object.

**Returns**:
  - An attribute object that represents the `audit_log_configs` sub block.


## obj binding



### fn binding.new

```ts
new()
```


`google.iam_policy.binding.new` constructs a new object with attributes and blocks configured for the `binding`
Terraform sub block.



**Args**:
  - `members` (`list`): Set the `members` field on the resulting object.
  - `role` (`string`): Set the `role` field on the resulting object.
  - `condition` (`list[obj]`): Set the `condition` field on the resulting object. When `null`, the `condition` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.iam_policy.binding.condition.new](#fn-bindingconditionnew) constructor.

**Returns**:
  - An attribute object that represents the `binding` sub block.


## obj binding.condition



### fn binding.condition.new

```ts
new()
```


`google.iam_policy.binding.condition.new` constructs a new object with attributes and blocks configured for the `condition`
Terraform sub block.



**Args**:
  - `description` (`string`): Set the `description` field on the resulting object. When `null`, the `description` field will be omitted from the resulting object.
  - `expression` (`string`): Set the `expression` field on the resulting object.
  - `title` (`string`): Set the `title` field on the resulting object.

**Returns**:
  - An attribute object that represents the `condition` sub block.
