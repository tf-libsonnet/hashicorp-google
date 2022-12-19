---
permalink: /data_loss_prevention_deidentify_template/
---

# data_loss_prevention_deidentify_template

`data_loss_prevention_deidentify_template` represents the `google_data_loss_prevention_deidentify_template` Terraform resource.



This package contains functions and utilities for setting up the resource using Jsonnet code.


## Index

* [`fn new()`](#fn-new)
* [`fn newAttrs()`](#fn-newattrs)
* [`fn withDeidentifyConfig()`](#fn-withdeidentifyconfig)
* [`fn withDeidentifyConfigMixin()`](#fn-withdeidentifyconfigmixin)
* [`fn withDescription()`](#fn-withdescription)
* [`fn withDisplayName()`](#fn-withdisplayname)
* [`fn withParent()`](#fn-withparent)
* [`fn withTimeouts()`](#fn-withtimeouts)
* [`fn withTimeoutsMixin()`](#fn-withtimeoutsmixin)
* [`obj deidentify_config`](#obj-deidentify_config)
  * [`fn new()`](#fn-deidentify_confignew)
  * [`obj deidentify_config.info_type_transformations`](#obj-deidentify_configinfo_type_transformations)
    * [`fn new()`](#fn-deidentify_configinfo_type_transformationsnew)
    * [`obj deidentify_config.info_type_transformations.transformations`](#obj-deidentify_configinfo_type_transformationstransformations)
      * [`fn new()`](#fn-deidentify_configinfo_type_transformationstransformationsnew)
      * [`obj deidentify_config.info_type_transformations.transformations.info_types`](#obj-deidentify_configinfo_type_transformationstransformationsinfo_types)
        * [`fn new()`](#fn-deidentify_configinfo_type_transformationstransformationsinfo_typesnew)
      * [`obj deidentify_config.info_type_transformations.transformations.primitive_transformation`](#obj-deidentify_configinfo_type_transformationstransformationsprimitive_transformation)
        * [`fn new()`](#fn-deidentify_configinfo_type_transformationstransformationsprimitive_transformationnew)
        * [`obj deidentify_config.info_type_transformations.transformations.primitive_transformation.character_mask_config`](#obj-deidentify_configinfo_type_transformationstransformationsprimitive_transformationcharacter_mask_config)
          * [`fn new()`](#fn-deidentify_configinfo_type_transformationstransformationsprimitive_transformationcharacter_mask_confignew)
          * [`obj deidentify_config.info_type_transformations.transformations.primitive_transformation.character_mask_config.characters_to_ignore`](#obj-deidentify_configinfo_type_transformationstransformationsprimitive_transformationcharacter_mask_configcharacters_to_ignore)
            * [`fn new()`](#fn-deidentify_configinfo_type_transformationstransformationsprimitive_transformationcharacter_mask_configcharacters_to_ignorenew)
        * [`obj deidentify_config.info_type_transformations.transformations.primitive_transformation.crypto_deterministic_config`](#obj-deidentify_configinfo_type_transformationstransformationsprimitive_transformationcrypto_deterministic_config)
          * [`fn new()`](#fn-deidentify_configinfo_type_transformationstransformationsprimitive_transformationcrypto_deterministic_confignew)
          * [`obj deidentify_config.info_type_transformations.transformations.primitive_transformation.crypto_deterministic_config.context`](#obj-deidentify_configinfo_type_transformationstransformationsprimitive_transformationcrypto_deterministic_configcontext)
            * [`fn new()`](#fn-deidentify_configinfo_type_transformationstransformationsprimitive_transformationcrypto_deterministic_configcontextnew)
          * [`obj deidentify_config.info_type_transformations.transformations.primitive_transformation.crypto_deterministic_config.crypto_key`](#obj-deidentify_configinfo_type_transformationstransformationsprimitive_transformationcrypto_deterministic_configcrypto_key)
            * [`fn new()`](#fn-deidentify_configinfo_type_transformationstransformationsprimitive_transformationcrypto_deterministic_configcrypto_keynew)
            * [`obj deidentify_config.info_type_transformations.transformations.primitive_transformation.crypto_deterministic_config.crypto_key.kms_wrapped`](#obj-deidentify_configinfo_type_transformationstransformationsprimitive_transformationcrypto_deterministic_configcrypto_keykms_wrapped)
              * [`fn new()`](#fn-deidentify_configinfo_type_transformationstransformationsprimitive_transformationcrypto_deterministic_configcrypto_keykms_wrappednew)
            * [`obj deidentify_config.info_type_transformations.transformations.primitive_transformation.crypto_deterministic_config.crypto_key.transient`](#obj-deidentify_configinfo_type_transformationstransformationsprimitive_transformationcrypto_deterministic_configcrypto_keytransient)
              * [`fn new()`](#fn-deidentify_configinfo_type_transformationstransformationsprimitive_transformationcrypto_deterministic_configcrypto_keytransientnew)
            * [`obj deidentify_config.info_type_transformations.transformations.primitive_transformation.crypto_deterministic_config.crypto_key.unwrapped`](#obj-deidentify_configinfo_type_transformationstransformationsprimitive_transformationcrypto_deterministic_configcrypto_keyunwrapped)
              * [`fn new()`](#fn-deidentify_configinfo_type_transformationstransformationsprimitive_transformationcrypto_deterministic_configcrypto_keyunwrappednew)
          * [`obj deidentify_config.info_type_transformations.transformations.primitive_transformation.crypto_deterministic_config.surrogate_info_type`](#obj-deidentify_configinfo_type_transformationstransformationsprimitive_transformationcrypto_deterministic_configsurrogate_info_type)
            * [`fn new()`](#fn-deidentify_configinfo_type_transformationstransformationsprimitive_transformationcrypto_deterministic_configsurrogate_info_typenew)
        * [`obj deidentify_config.info_type_transformations.transformations.primitive_transformation.crypto_replace_ffx_fpe_config`](#obj-deidentify_configinfo_type_transformationstransformationsprimitive_transformationcrypto_replace_ffx_fpe_config)
          * [`fn new()`](#fn-deidentify_configinfo_type_transformationstransformationsprimitive_transformationcrypto_replace_ffx_fpe_confignew)
          * [`obj deidentify_config.info_type_transformations.transformations.primitive_transformation.crypto_replace_ffx_fpe_config.context`](#obj-deidentify_configinfo_type_transformationstransformationsprimitive_transformationcrypto_replace_ffx_fpe_configcontext)
            * [`fn new()`](#fn-deidentify_configinfo_type_transformationstransformationsprimitive_transformationcrypto_replace_ffx_fpe_configcontextnew)
          * [`obj deidentify_config.info_type_transformations.transformations.primitive_transformation.crypto_replace_ffx_fpe_config.crypto_key`](#obj-deidentify_configinfo_type_transformationstransformationsprimitive_transformationcrypto_replace_ffx_fpe_configcrypto_key)
            * [`fn new()`](#fn-deidentify_configinfo_type_transformationstransformationsprimitive_transformationcrypto_replace_ffx_fpe_configcrypto_keynew)
            * [`obj deidentify_config.info_type_transformations.transformations.primitive_transformation.crypto_replace_ffx_fpe_config.crypto_key.kms_wrapped`](#obj-deidentify_configinfo_type_transformationstransformationsprimitive_transformationcrypto_replace_ffx_fpe_configcrypto_keykms_wrapped)
              * [`fn new()`](#fn-deidentify_configinfo_type_transformationstransformationsprimitive_transformationcrypto_replace_ffx_fpe_configcrypto_keykms_wrappednew)
            * [`obj deidentify_config.info_type_transformations.transformations.primitive_transformation.crypto_replace_ffx_fpe_config.crypto_key.transient`](#obj-deidentify_configinfo_type_transformationstransformationsprimitive_transformationcrypto_replace_ffx_fpe_configcrypto_keytransient)
              * [`fn new()`](#fn-deidentify_configinfo_type_transformationstransformationsprimitive_transformationcrypto_replace_ffx_fpe_configcrypto_keytransientnew)
            * [`obj deidentify_config.info_type_transformations.transformations.primitive_transformation.crypto_replace_ffx_fpe_config.crypto_key.unwrapped`](#obj-deidentify_configinfo_type_transformationstransformationsprimitive_transformationcrypto_replace_ffx_fpe_configcrypto_keyunwrapped)
              * [`fn new()`](#fn-deidentify_configinfo_type_transformationstransformationsprimitive_transformationcrypto_replace_ffx_fpe_configcrypto_keyunwrappednew)
          * [`obj deidentify_config.info_type_transformations.transformations.primitive_transformation.crypto_replace_ffx_fpe_config.surrogate_info_type`](#obj-deidentify_configinfo_type_transformationstransformationsprimitive_transformationcrypto_replace_ffx_fpe_configsurrogate_info_type)
            * [`fn new()`](#fn-deidentify_configinfo_type_transformationstransformationsprimitive_transformationcrypto_replace_ffx_fpe_configsurrogate_info_typenew)
        * [`obj deidentify_config.info_type_transformations.transformations.primitive_transformation.replace_config`](#obj-deidentify_configinfo_type_transformationstransformationsprimitive_transformationreplace_config)
          * [`fn new()`](#fn-deidentify_configinfo_type_transformationstransformationsprimitive_transformationreplace_confignew)
          * [`obj deidentify_config.info_type_transformations.transformations.primitive_transformation.replace_config.new_value`](#obj-deidentify_configinfo_type_transformationstransformationsprimitive_transformationreplace_confignew_value)
            * [`fn new()`](#fn-deidentify_configinfo_type_transformationstransformationsprimitive_transformationreplace_confignew_valuenew)
            * [`obj deidentify_config.info_type_transformations.transformations.primitive_transformation.replace_config.new_value.date_value`](#obj-deidentify_configinfo_type_transformationstransformationsprimitive_transformationreplace_confignew_valuedate_value)
              * [`fn new()`](#fn-deidentify_configinfo_type_transformationstransformationsprimitive_transformationreplace_confignew_valuedate_valuenew)
            * [`obj deidentify_config.info_type_transformations.transformations.primitive_transformation.replace_config.new_value.time_value`](#obj-deidentify_configinfo_type_transformationstransformationsprimitive_transformationreplace_confignew_valuetime_value)
              * [`fn new()`](#fn-deidentify_configinfo_type_transformationstransformationsprimitive_transformationreplace_confignew_valuetime_valuenew)
* [`obj timeouts`](#obj-timeouts)
  * [`fn new()`](#fn-timeoutsnew)

## Fields

### fn new

```ts
new()
```


`google.data_loss_prevention_deidentify_template.new` injects a new `google_data_loss_prevention_deidentify_template` Terraform `resource`
block into the root module document.

Additionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the
resource. For example, if you added a new instance to the root using:

    # arguments omitted for brevity
    google.data_loss_prevention_deidentify_template.new('some_id')

You can get the reference to the `id` field of the created `google.data_loss_prevention_deidentify_template` using the reference:

    $._ref.google_data_loss_prevention_deidentify_template.some_id.get('id')

This is the same as directly entering `"${ google_data_loss_prevention_deidentify_template.some_id.id }"` as the value.

NOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,
or `$` to refer to the root object. Instead, make an explicit outer object using `local`.

**Args**:
  - `resourceLabel` (`string`): The name label of the block.
  - `description` (`string`): A description of the template. When `null`, the `description` field will be omitted from the resulting object.
  - `display_name` (`string`): User set display name of the template. When `null`, the `display_name` field will be omitted from the resulting object.
  - `parent` (`string`): The parent of the template in any of the following formats:

* &#39;projects/{{project}}&#39;
* &#39;projects/{{project}}/locations/{{location}}&#39;
* &#39;organizations/{{organization_id}}&#39;
* &#39;organizations/{{organization_id}}/locations/{{location}}&#39;
  - `deidentify_config` (`list[obj]`): Configuration of the deidentify template When `null`, the `deidentify_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.data_loss_prevention_deidentify_template.deidentify_config.new](#fn-datalosspreventiondeidentifytemplatedeidentifyconfignew) constructor.
  - `timeouts` (`obj`):  When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.data_loss_prevention_deidentify_template.timeouts.new](#fn-datalosspreventiondeidentifytemplatetimeoutsnew) constructor.

**Returns**:
- A mixin object that injects the new resource into the root Terraform configuration.


### fn newAttrs

```ts
newAttrs()
```


`google.data_loss_prevention_deidentify_template.newAttrs` constructs a new object with attributes and blocks configured for the `data_loss_prevention_deidentify_template`
Terraform resource.

Unlike [google.data_loss_prevention_deidentify_template.new](#fn-datalosspreventiondeidentifytemplatenew), this function will not inject the `resource`
block into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the
[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.

This is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to
injecting into a complete block.

**Args**:
  - `description` (`string`): A description of the template. When `null`, the `description` field will be omitted from the resulting object.
  - `display_name` (`string`): User set display name of the template. When `null`, the `display_name` field will be omitted from the resulting object.
  - `parent` (`string`): The parent of the template in any of the following formats:

* &#39;projects/{{project}}&#39;
* &#39;projects/{{project}}/locations/{{location}}&#39;
* &#39;organizations/{{organization_id}}&#39;
* &#39;organizations/{{organization_id}}/locations/{{location}}&#39;
  - `deidentify_config` (`list[obj]`): Configuration of the deidentify template When `null`, the `deidentify_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.data_loss_prevention_deidentify_template.deidentify_config.new](#fn-datalosspreventiondeidentifytemplatedeidentifyconfignew) constructor.
  - `timeouts` (`obj`):  When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.data_loss_prevention_deidentify_template.timeouts.new](#fn-datalosspreventiondeidentifytemplatetimeoutsnew) constructor.

**Returns**:
  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `data_loss_prevention_deidentify_template` resource into the root Terraform configuration.


### fn withDeidentifyConfig

```ts
withDeidentifyConfig()
```

`google.list[obj].withDeidentifyConfig` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the deidentify_config field.

This function will replace the array with the passed in `value`. If you wish to instead append the
passed in value to the existing array, use the [google.list[obj].withDeidentifyConfigMixin](TODO) function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `deidentify_config` field.


### fn withDeidentifyConfigMixin

```ts
withDeidentifyConfigMixin()
```

`google.list[obj].withDeidentifyConfigMixin` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the deidentify_config field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google.list[obj].withDeidentifyConfig](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `deidentify_config` field.


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


### fn withParent

```ts
withParent()
```

`google.string.withParent` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the parent field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `parent` field.


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


## obj deidentify_config



### fn deidentify_config.new

```ts
new()
```


`google.data_loss_prevention_deidentify_template.deidentify_config.new` constructs a new object with attributes and blocks configured for the `deidentify_config`
Terraform sub block.



**Args**:
  - `info_type_transformations` (`list[obj]`): Specifies free-text based transformations to be applied to the dataset. When `null`, the `info_type_transformations` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.data_loss_prevention_deidentify_template.deidentify_config.info_type_transformations.new](#fn-deidentifyconfiginfotypetransformationsnew) constructor.

**Returns**:
  - An attribute object that represents the `deidentify_config` sub block.


## obj deidentify_config.info_type_transformations



### fn deidentify_config.info_type_transformations.new

```ts
new()
```


`google.data_loss_prevention_deidentify_template.deidentify_config.info_type_transformations.new` constructs a new object with attributes and blocks configured for the `info_type_transformations`
Terraform sub block.



**Args**:
  - `transformations` (`list[obj]`): Transformation for each infoType. Cannot specify more than one for a given infoType. When `null`, the `transformations` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.data_loss_prevention_deidentify_template.deidentify_config.info_type_transformations.transformations.new](#fn-infotypetransformationstransformationsnew) constructor.

**Returns**:
  - An attribute object that represents the `info_type_transformations` sub block.


## obj deidentify_config.info_type_transformations.transformations



### fn deidentify_config.info_type_transformations.transformations.new

```ts
new()
```


`google.data_loss_prevention_deidentify_template.deidentify_config.info_type_transformations.transformations.new` constructs a new object with attributes and blocks configured for the `transformations`
Terraform sub block.



**Args**:
  - `info_types` (`list[obj]`): InfoTypes to apply the transformation to. Leaving this empty will apply the transformation to apply to
all findings that correspond to infoTypes that were requested in InspectConfig. When `null`, the `info_types` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.data_loss_prevention_deidentify_template.deidentify_config.info_type_transformations.transformations.info_types.new](#fn-transformationsinfotypesnew) constructor.
  - `primitive_transformation` (`list[obj]`): Primitive transformation to apply to the infoType. When `null`, the `primitive_transformation` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.data_loss_prevention_deidentify_template.deidentify_config.info_type_transformations.transformations.primitive_transformation.new](#fn-transformationsprimitivetransformationnew) constructor.

**Returns**:
  - An attribute object that represents the `transformations` sub block.


## obj deidentify_config.info_type_transformations.transformations.info_types



### fn deidentify_config.info_type_transformations.transformations.info_types.new

```ts
new()
```


`google.data_loss_prevention_deidentify_template.deidentify_config.info_type_transformations.transformations.info_types.new` constructs a new object with attributes and blocks configured for the `info_types`
Terraform sub block.



**Args**:
  - `name` (`string`): Name of the information type.

**Returns**:
  - An attribute object that represents the `info_types` sub block.


## obj deidentify_config.info_type_transformations.transformations.primitive_transformation



### fn deidentify_config.info_type_transformations.transformations.primitive_transformation.new

```ts
new()
```


`google.data_loss_prevention_deidentify_template.deidentify_config.info_type_transformations.transformations.primitive_transformation.new` constructs a new object with attributes and blocks configured for the `primitive_transformation`
Terraform sub block.



**Args**:
  - `replace_with_info_type_config` (`bool`): Replace each matching finding with the name of the info type. When `null`, the `replace_with_info_type_config` field will be omitted from the resulting object.
  - `character_mask_config` (`list[obj]`): Partially mask a string by replacing a given number of characters with a fixed character.
Masking can start from the beginning or end of the string. When `null`, the `character_mask_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.data_loss_prevention_deidentify_template.deidentify_config.info_type_transformations.transformations.primitive_transformation.character_mask_config.new](#fn-primitivetransformationcharactermaskconfignew) constructor.
  - `crypto_deterministic_config` (`list[obj]`): Pseudonymization method that generates deterministic encryption for the given input. Outputs a base64 encoded representation of the encrypted output. Uses AES-SIV based on the RFC [https://tools.ietf.org/html/rfc5297](https://tools.ietf.org/html/rfc5297). When `null`, the `crypto_deterministic_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.data_loss_prevention_deidentify_template.deidentify_config.info_type_transformations.transformations.primitive_transformation.crypto_deterministic_config.new](#fn-primitivetransformationcryptodeterministicconfignew) constructor.
  - `crypto_replace_ffx_fpe_config` (`list[obj]`): Replaces an identifier with a surrogate using Format Preserving Encryption (FPE) with the FFX mode of operation; however when used in the &#39;content.reidentify&#39; API method, it serves the opposite function by reversing the surrogate back into the original identifier. The identifier must be encoded as ASCII. For a given crypto key and context, the same identifier will be replaced with the same surrogate. Identifiers must be at least two characters long. In the case that the identifier is the empty string, it will be skipped. See [https://cloud.google.com/dlp/docs/pseudonymization](https://cloud.google.com/dlp/docs/pseudonymization) to learn more.

Note: We recommend using CryptoDeterministicConfig for all use cases which do not require preserving the input alphabet space and size, plus warrant referential integrity. When `null`, the `crypto_replace_ffx_fpe_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.data_loss_prevention_deidentify_template.deidentify_config.info_type_transformations.transformations.primitive_transformation.crypto_replace_ffx_fpe_config.new](#fn-primitivetransformationcryptoreplaceffxfpeconfignew) constructor.
  - `replace_config` (`list[obj]`): Replace each input value with a given value. When `null`, the `replace_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.data_loss_prevention_deidentify_template.deidentify_config.info_type_transformations.transformations.primitive_transformation.replace_config.new](#fn-primitivetransformationreplaceconfignew) constructor.

**Returns**:
  - An attribute object that represents the `primitive_transformation` sub block.


## obj deidentify_config.info_type_transformations.transformations.primitive_transformation.character_mask_config



### fn deidentify_config.info_type_transformations.transformations.primitive_transformation.character_mask_config.new

```ts
new()
```


`google.data_loss_prevention_deidentify_template.deidentify_config.info_type_transformations.transformations.primitive_transformation.character_mask_config.new` constructs a new object with attributes and blocks configured for the `character_mask_config`
Terraform sub block.



**Args**:
  - `masking_character` (`string`): Character to use to mask the sensitive values—for example, * for an alphabetic string such as a name, or 0 for a numeric string
such as ZIP code or credit card number. This string must have a length of 1. If not supplied, this value defaults to * for
strings, and 0 for digits. When `null`, the `masking_character` field will be omitted from the resulting object.
  - `number_to_mask` (`number`): Number of characters to mask. If not set, all matching chars will be masked. Skipped characters do not count towards this tally. When `null`, the `number_to_mask` field will be omitted from the resulting object.
  - `reverse_order` (`bool`): Mask characters in reverse order. For example, if masking_character is 0, number_to_mask is 14, and reverse_order is &#39;false&#39;, then the
input string &#39;1234-5678-9012-3456&#39; is masked as &#39;00000000000000-3456&#39;. When `null`, the `reverse_order` field will be omitted from the resulting object.
  - `characters_to_ignore` (`list[obj]`): Characters to skip when doing de-identification of a value. These will be left alone and skipped. When `null`, the `characters_to_ignore` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.data_loss_prevention_deidentify_template.deidentify_config.info_type_transformations.transformations.primitive_transformation.character_mask_config.characters_to_ignore.new](#fn-charactermaskconfigcharacterstoignorenew) constructor.

**Returns**:
  - An attribute object that represents the `character_mask_config` sub block.


## obj deidentify_config.info_type_transformations.transformations.primitive_transformation.character_mask_config.characters_to_ignore



### fn deidentify_config.info_type_transformations.transformations.primitive_transformation.character_mask_config.characters_to_ignore.new

```ts
new()
```


`google.data_loss_prevention_deidentify_template.deidentify_config.info_type_transformations.transformations.primitive_transformation.character_mask_config.characters_to_ignore.new` constructs a new object with attributes and blocks configured for the `characters_to_ignore`
Terraform sub block.



**Args**:
  - `characters_to_skip` (`string`): Characters to not transform when masking. When `null`, the `characters_to_skip` field will be omitted from the resulting object.
  - `common_characters_to_ignore` (`string`): Common characters to not transform when masking. Useful to avoid removing punctuation. Possible values: [&#34;NUMERIC&#34;, &#34;ALPHA_UPPER_CASE&#34;, &#34;ALPHA_LOWER_CASE&#34;, &#34;PUNCTUATION&#34;, &#34;WHITESPACE&#34;] When `null`, the `common_characters_to_ignore` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `characters_to_ignore` sub block.


## obj deidentify_config.info_type_transformations.transformations.primitive_transformation.crypto_deterministic_config



### fn deidentify_config.info_type_transformations.transformations.primitive_transformation.crypto_deterministic_config.new

```ts
new()
```


`google.data_loss_prevention_deidentify_template.deidentify_config.info_type_transformations.transformations.primitive_transformation.crypto_deterministic_config.new` constructs a new object with attributes and blocks configured for the `crypto_deterministic_config`
Terraform sub block.



**Args**:
  - `context` (`list[obj]`): A context may be used for higher security and maintaining referential integrity such that the same identifier in two different contexts will be given a distinct surrogate. The context is appended to plaintext value being encrypted. On decryption the provided context is validated against the value used during encryption. If a context was provided during encryption, same context must be provided during decryption as well.

If the context is not set, plaintext would be used as is for encryption. If the context is set but:

1.  there is no record present when transforming a given value or
2.  the field is not present when transforming a given value,

plaintext would be used as is for encryption.

Note that case (1) is expected when an &#39;InfoTypeTransformation&#39; is applied to both structured and non-structured &#39;ContentItem&#39;s. When `null`, the `context` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.data_loss_prevention_deidentify_template.deidentify_config.info_type_transformations.transformations.primitive_transformation.crypto_deterministic_config.context.new](#fn-cryptodeterministicconfigcontextnew) constructor.
  - `crypto_key` (`list[obj]`): The key used by the encryption function. When `null`, the `crypto_key` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.data_loss_prevention_deidentify_template.deidentify_config.info_type_transformations.transformations.primitive_transformation.crypto_deterministic_config.crypto_key.new](#fn-cryptodeterministicconfigcryptokeynew) constructor.
  - `surrogate_info_type` (`list[obj]`): The custom info type to annotate the surrogate with. This annotation will be applied to the surrogate by prefixing it with the name of the custom info type followed by the number of characters comprising the surrogate. The following scheme defines the format: {info type name}({surrogate character count}):{surrogate}

For example, if the name of custom info type is &#39;MY\_TOKEN\_INFO\_TYPE&#39; and the surrogate is &#39;abc&#39;, the full replacement value will be: &#39;MY\_TOKEN\_INFO\_TYPE(3):abc&#39;

This annotation identifies the surrogate when inspecting content using the custom info type &#39;Surrogate&#39;. This facilitates reversal of the surrogate when it occurs in free text.

Note: For record transformations where the entire cell in a table is being transformed, surrogates are not mandatory. Surrogates are used to denote the location of the token and are necessary for re-identification in free form text.

In order for inspection to work properly, the name of this info type must not occur naturally anywhere in your data; otherwise, inspection may either

*   reverse a surrogate that does not correspond to an actual identifier
*   be unable to parse the surrogate and result in an error

Therefore, choose your custom info type name carefully after considering what your data looks like. One way to select a name that has a high chance of yielding reliable detection is to include one or more unicode characters that are highly improbable to exist in your data. For example, assuming your data is entered from a regular ASCII keyboard, the symbol with the hex code point 29DD might be used like so: ⧝MY\_TOKEN\_TYPE. When `null`, the `surrogate_info_type` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.data_loss_prevention_deidentify_template.deidentify_config.info_type_transformations.transformations.primitive_transformation.crypto_deterministic_config.surrogate_info_type.new](#fn-cryptodeterministicconfigsurrogateinfotypenew) constructor.

**Returns**:
  - An attribute object that represents the `crypto_deterministic_config` sub block.


## obj deidentify_config.info_type_transformations.transformations.primitive_transformation.crypto_deterministic_config.context



### fn deidentify_config.info_type_transformations.transformations.primitive_transformation.crypto_deterministic_config.context.new

```ts
new()
```


`google.data_loss_prevention_deidentify_template.deidentify_config.info_type_transformations.transformations.primitive_transformation.crypto_deterministic_config.context.new` constructs a new object with attributes and blocks configured for the `context`
Terraform sub block.



**Args**:
  - `name` (`string`): Name describing the field. When `null`, the `name` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `context` sub block.


## obj deidentify_config.info_type_transformations.transformations.primitive_transformation.crypto_deterministic_config.crypto_key



### fn deidentify_config.info_type_transformations.transformations.primitive_transformation.crypto_deterministic_config.crypto_key.new

```ts
new()
```


`google.data_loss_prevention_deidentify_template.deidentify_config.info_type_transformations.transformations.primitive_transformation.crypto_deterministic_config.crypto_key.new` constructs a new object with attributes and blocks configured for the `crypto_key`
Terraform sub block.



**Args**:
  - `kms_wrapped` (`list[obj]`): Kms wrapped key When `null`, the `kms_wrapped` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.data_loss_prevention_deidentify_template.deidentify_config.info_type_transformations.transformations.primitive_transformation.crypto_deterministic_config.crypto_key.kms_wrapped.new](#fn-cryptokeykmswrappednew) constructor.
  - `transient` (`list[obj]`): Transient crypto key When `null`, the `transient` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.data_loss_prevention_deidentify_template.deidentify_config.info_type_transformations.transformations.primitive_transformation.crypto_deterministic_config.crypto_key.transient.new](#fn-cryptokeytransientnew) constructor.
  - `unwrapped` (`list[obj]`): Unwrapped crypto key When `null`, the `unwrapped` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.data_loss_prevention_deidentify_template.deidentify_config.info_type_transformations.transformations.primitive_transformation.crypto_deterministic_config.crypto_key.unwrapped.new](#fn-cryptokeyunwrappednew) constructor.

**Returns**:
  - An attribute object that represents the `crypto_key` sub block.


## obj deidentify_config.info_type_transformations.transformations.primitive_transformation.crypto_deterministic_config.crypto_key.kms_wrapped



### fn deidentify_config.info_type_transformations.transformations.primitive_transformation.crypto_deterministic_config.crypto_key.kms_wrapped.new

```ts
new()
```


`google.data_loss_prevention_deidentify_template.deidentify_config.info_type_transformations.transformations.primitive_transformation.crypto_deterministic_config.crypto_key.kms_wrapped.new` constructs a new object with attributes and blocks configured for the `kms_wrapped`
Terraform sub block.



**Args**:
  - `crypto_key_name` (`string`): The resource name of the KMS CryptoKey to use for unwrapping.
  - `wrapped_key` (`string`): The wrapped data crypto key.

A base64-encoded string.

**Returns**:
  - An attribute object that represents the `kms_wrapped` sub block.


## obj deidentify_config.info_type_transformations.transformations.primitive_transformation.crypto_deterministic_config.crypto_key.transient



### fn deidentify_config.info_type_transformations.transformations.primitive_transformation.crypto_deterministic_config.crypto_key.transient.new

```ts
new()
```


`google.data_loss_prevention_deidentify_template.deidentify_config.info_type_transformations.transformations.primitive_transformation.crypto_deterministic_config.crypto_key.transient.new` constructs a new object with attributes and blocks configured for the `transient`
Terraform sub block.



**Args**:
  - `name` (`string`): Name of the key. This is an arbitrary string used to differentiate different keys. A unique key is generated per name: two separate &#39;TransientCryptoKey&#39; protos share the same generated key if their names are the same. When the data crypto key is generated, this name is not used in any way (repeating the api call will result in a different key being generated).

**Returns**:
  - An attribute object that represents the `transient` sub block.


## obj deidentify_config.info_type_transformations.transformations.primitive_transformation.crypto_deterministic_config.crypto_key.unwrapped



### fn deidentify_config.info_type_transformations.transformations.primitive_transformation.crypto_deterministic_config.crypto_key.unwrapped.new

```ts
new()
```


`google.data_loss_prevention_deidentify_template.deidentify_config.info_type_transformations.transformations.primitive_transformation.crypto_deterministic_config.crypto_key.unwrapped.new` constructs a new object with attributes and blocks configured for the `unwrapped`
Terraform sub block.



**Args**:
  - `key` (`string`): A 128/192/256 bit key.

A base64-encoded string.

**Returns**:
  - An attribute object that represents the `unwrapped` sub block.


## obj deidentify_config.info_type_transformations.transformations.primitive_transformation.crypto_deterministic_config.surrogate_info_type



### fn deidentify_config.info_type_transformations.transformations.primitive_transformation.crypto_deterministic_config.surrogate_info_type.new

```ts
new()
```


`google.data_loss_prevention_deidentify_template.deidentify_config.info_type_transformations.transformations.primitive_transformation.crypto_deterministic_config.surrogate_info_type.new` constructs a new object with attributes and blocks configured for the `surrogate_info_type`
Terraform sub block.



**Args**:
  - `name` (`string`): Name of the information type. Either a name of your choosing when creating a CustomInfoType, or one of the names listed at [https://cloud.google.com/dlp/docs/infotypes-reference](https://cloud.google.com/dlp/docs/infotypes-reference) when specifying a built-in type. When sending Cloud DLP results to Data Catalog, infoType names should conform to the pattern &#39;[A-Za-z0-9$-_]{1,64}&#39;. When `null`, the `name` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `surrogate_info_type` sub block.


## obj deidentify_config.info_type_transformations.transformations.primitive_transformation.crypto_replace_ffx_fpe_config



### fn deidentify_config.info_type_transformations.transformations.primitive_transformation.crypto_replace_ffx_fpe_config.new

```ts
new()
```


`google.data_loss_prevention_deidentify_template.deidentify_config.info_type_transformations.transformations.primitive_transformation.crypto_replace_ffx_fpe_config.new` constructs a new object with attributes and blocks configured for the `crypto_replace_ffx_fpe_config`
Terraform sub block.



**Args**:
  - `common_alphabet` (`string`): Common alphabets. Possible values: [&#34;FFX_COMMON_NATIVE_ALPHABET_UNSPECIFIED&#34;, &#34;NUMERIC&#34;, &#34;HEXADECIMAL&#34;, &#34;UPPER_CASE_ALPHA_NUMERIC&#34;, &#34;ALPHA_NUMERIC&#34;] When `null`, the `common_alphabet` field will be omitted from the resulting object.
  - `custom_alphabet` (`string`): This is supported by mapping these to the alphanumeric characters that the FFX mode natively supports. This happens before/after encryption/decryption. Each character listed must appear only once. Number of characters must be in the range \[2, 95\]. This must be encoded as ASCII. The order of characters does not matter. The full list of allowed characters is:

&#39;&#39;0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz ~&#39;!@#$%^&amp;*()_-&#43;={[}]|:;&#34;&#39;&lt;,&gt;.?/&#39;&#39; When `null`, the `custom_alphabet` field will be omitted from the resulting object.
  - `radix` (`number`): The native way to select the alphabet. Must be in the range \[2, 95\]. When `null`, the `radix` field will be omitted from the resulting object.
  - `context` (`list[obj]`): The &#39;tweak&#39;, a context may be used for higher security since the same identifier in two different contexts won&#39;t be given the same surrogate. If the context is not set, a default tweak will be used.

If the context is set but:

1.  there is no record present when transforming a given value or
2.  the field is not present when transforming a given value,

a default tweak will be used.

Note that case (1) is expected when an &#39;InfoTypeTransformation&#39; is applied to both structured and non-structured &#39;ContentItem&#39;s. Currently, the referenced field may be of value type integer or string.

The tweak is constructed as a sequence of bytes in big endian byte order such that:

*   a 64 bit integer is encoded followed by a single byte of value 1
*   a string is encoded in UTF-8 format followed by a single byte of value 2 When `null`, the `context` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.data_loss_prevention_deidentify_template.deidentify_config.info_type_transformations.transformations.primitive_transformation.crypto_replace_ffx_fpe_config.context.new](#fn-cryptoreplaceffxfpeconfigcontextnew) constructor.
  - `crypto_key` (`list[obj]`): The key used by the encryption algorithm. When `null`, the `crypto_key` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.data_loss_prevention_deidentify_template.deidentify_config.info_type_transformations.transformations.primitive_transformation.crypto_replace_ffx_fpe_config.crypto_key.new](#fn-cryptoreplaceffxfpeconfigcryptokeynew) constructor.
  - `surrogate_info_type` (`list[obj]`): The custom infoType to annotate the surrogate with. This annotation will be applied to the surrogate by prefixing it with the name of the custom infoType followed by the number of characters comprising the surrogate. The following scheme defines the format: info\_type\_name(surrogate\_character\_count):surrogate

For example, if the name of custom infoType is &#39;MY\_TOKEN\_INFO\_TYPE&#39; and the surrogate is &#39;abc&#39;, the full replacement value will be: &#39;MY\_TOKEN\_INFO\_TYPE(3):abc&#39;

This annotation identifies the surrogate when inspecting content using the custom infoType [&#39;SurrogateType&#39;](https://cloud.google.com/dlp/docs/reference/rest/v2/InspectConfig#surrogatetype). This facilitates reversal of the surrogate when it occurs in free text.

In order for inspection to work properly, the name of this infoType must not occur naturally anywhere in your data; otherwise, inspection may find a surrogate that does not correspond to an actual identifier. Therefore, choose your custom infoType name carefully after considering what your data looks like. One way to select a name that has a high chance of yielding reliable detection is to include one or more unicode characters that are highly improbable to exist in your data. For example, assuming your data is entered from a regular ASCII keyboard, the symbol with the hex code point 29DD might be used like so: ⧝MY\_TOKEN\_TYPE When `null`, the `surrogate_info_type` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.data_loss_prevention_deidentify_template.deidentify_config.info_type_transformations.transformations.primitive_transformation.crypto_replace_ffx_fpe_config.surrogate_info_type.new](#fn-cryptoreplaceffxfpeconfigsurrogateinfotypenew) constructor.

**Returns**:
  - An attribute object that represents the `crypto_replace_ffx_fpe_config` sub block.


## obj deidentify_config.info_type_transformations.transformations.primitive_transformation.crypto_replace_ffx_fpe_config.context



### fn deidentify_config.info_type_transformations.transformations.primitive_transformation.crypto_replace_ffx_fpe_config.context.new

```ts
new()
```


`google.data_loss_prevention_deidentify_template.deidentify_config.info_type_transformations.transformations.primitive_transformation.crypto_replace_ffx_fpe_config.context.new` constructs a new object with attributes and blocks configured for the `context`
Terraform sub block.



**Args**:
  - `name` (`string`): Name describing the field. When `null`, the `name` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `context` sub block.


## obj deidentify_config.info_type_transformations.transformations.primitive_transformation.crypto_replace_ffx_fpe_config.crypto_key



### fn deidentify_config.info_type_transformations.transformations.primitive_transformation.crypto_replace_ffx_fpe_config.crypto_key.new

```ts
new()
```


`google.data_loss_prevention_deidentify_template.deidentify_config.info_type_transformations.transformations.primitive_transformation.crypto_replace_ffx_fpe_config.crypto_key.new` constructs a new object with attributes and blocks configured for the `crypto_key`
Terraform sub block.



**Args**:
  - `kms_wrapped` (`list[obj]`): Kms wrapped key When `null`, the `kms_wrapped` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.data_loss_prevention_deidentify_template.deidentify_config.info_type_transformations.transformations.primitive_transformation.crypto_replace_ffx_fpe_config.crypto_key.kms_wrapped.new](#fn-cryptokeykmswrappednew) constructor.
  - `transient` (`list[obj]`): Transient crypto key When `null`, the `transient` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.data_loss_prevention_deidentify_template.deidentify_config.info_type_transformations.transformations.primitive_transformation.crypto_replace_ffx_fpe_config.crypto_key.transient.new](#fn-cryptokeytransientnew) constructor.
  - `unwrapped` (`list[obj]`): Unwrapped crypto key When `null`, the `unwrapped` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.data_loss_prevention_deidentify_template.deidentify_config.info_type_transformations.transformations.primitive_transformation.crypto_replace_ffx_fpe_config.crypto_key.unwrapped.new](#fn-cryptokeyunwrappednew) constructor.

**Returns**:
  - An attribute object that represents the `crypto_key` sub block.


## obj deidentify_config.info_type_transformations.transformations.primitive_transformation.crypto_replace_ffx_fpe_config.crypto_key.kms_wrapped



### fn deidentify_config.info_type_transformations.transformations.primitive_transformation.crypto_replace_ffx_fpe_config.crypto_key.kms_wrapped.new

```ts
new()
```


`google.data_loss_prevention_deidentify_template.deidentify_config.info_type_transformations.transformations.primitive_transformation.crypto_replace_ffx_fpe_config.crypto_key.kms_wrapped.new` constructs a new object with attributes and blocks configured for the `kms_wrapped`
Terraform sub block.



**Args**:
  - `crypto_key_name` (`string`): The resource name of the KMS CryptoKey to use for unwrapping.
  - `wrapped_key` (`string`): The wrapped data crypto key.

A base64-encoded string.

**Returns**:
  - An attribute object that represents the `kms_wrapped` sub block.


## obj deidentify_config.info_type_transformations.transformations.primitive_transformation.crypto_replace_ffx_fpe_config.crypto_key.transient



### fn deidentify_config.info_type_transformations.transformations.primitive_transformation.crypto_replace_ffx_fpe_config.crypto_key.transient.new

```ts
new()
```


`google.data_loss_prevention_deidentify_template.deidentify_config.info_type_transformations.transformations.primitive_transformation.crypto_replace_ffx_fpe_config.crypto_key.transient.new` constructs a new object with attributes and blocks configured for the `transient`
Terraform sub block.



**Args**:
  - `name` (`string`): Name of the key. This is an arbitrary string used to differentiate different keys. A unique key is generated per name: two separate &#39;TransientCryptoKey&#39; protos share the same generated key if their names are the same. When the data crypto key is generated, this name is not used in any way (repeating the api call will result in a different key being generated).

**Returns**:
  - An attribute object that represents the `transient` sub block.


## obj deidentify_config.info_type_transformations.transformations.primitive_transformation.crypto_replace_ffx_fpe_config.crypto_key.unwrapped



### fn deidentify_config.info_type_transformations.transformations.primitive_transformation.crypto_replace_ffx_fpe_config.crypto_key.unwrapped.new

```ts
new()
```


`google.data_loss_prevention_deidentify_template.deidentify_config.info_type_transformations.transformations.primitive_transformation.crypto_replace_ffx_fpe_config.crypto_key.unwrapped.new` constructs a new object with attributes and blocks configured for the `unwrapped`
Terraform sub block.



**Args**:
  - `key` (`string`): A 128/192/256 bit key.

A base64-encoded string.

**Returns**:
  - An attribute object that represents the `unwrapped` sub block.


## obj deidentify_config.info_type_transformations.transformations.primitive_transformation.crypto_replace_ffx_fpe_config.surrogate_info_type



### fn deidentify_config.info_type_transformations.transformations.primitive_transformation.crypto_replace_ffx_fpe_config.surrogate_info_type.new

```ts
new()
```


`google.data_loss_prevention_deidentify_template.deidentify_config.info_type_transformations.transformations.primitive_transformation.crypto_replace_ffx_fpe_config.surrogate_info_type.new` constructs a new object with attributes and blocks configured for the `surrogate_info_type`
Terraform sub block.



**Args**:
  - `name` (`string`): Name of the information type. Either a name of your choosing when creating a CustomInfoType, or one of the names listed at [https://cloud.google.com/dlp/docs/infotypes-reference](https://cloud.google.com/dlp/docs/infotypes-reference) when specifying a built-in type. When sending Cloud DLP results to Data Catalog, infoType names should conform to the pattern &#39;[A-Za-z0-9$-_]{1,64}&#39;. When `null`, the `name` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `surrogate_info_type` sub block.


## obj deidentify_config.info_type_transformations.transformations.primitive_transformation.replace_config



### fn deidentify_config.info_type_transformations.transformations.primitive_transformation.replace_config.new

```ts
new()
```


`google.data_loss_prevention_deidentify_template.deidentify_config.info_type_transformations.transformations.primitive_transformation.replace_config.new` constructs a new object with attributes and blocks configured for the `replace_config`
Terraform sub block.



**Args**:
  - `new_value` (`list[obj]`): Replace each input value with a given value. When `null`, the `new_value` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.data_loss_prevention_deidentify_template.deidentify_config.info_type_transformations.transformations.primitive_transformation.replace_config.new_value.new](#fn-replaceconfignewvaluenew) constructor.

**Returns**:
  - An attribute object that represents the `replace_config` sub block.


## obj deidentify_config.info_type_transformations.transformations.primitive_transformation.replace_config.new_value



### fn deidentify_config.info_type_transformations.transformations.primitive_transformation.replace_config.new_value.new

```ts
new()
```


`google.data_loss_prevention_deidentify_template.deidentify_config.info_type_transformations.transformations.primitive_transformation.replace_config.new_value.new` constructs a new object with attributes and blocks configured for the `new_value`
Terraform sub block.



**Args**:
  - `boolean_value` (`bool`): A boolean value. When `null`, the `boolean_value` field will be omitted from the resulting object.
  - `day_of_week_value` (`string`): Represents a day of the week. Possible values: [&#34;MONDAY&#34;, &#34;TUESDAY&#34;, &#34;WEDNESDAY&#34;, &#34;THURSDAY&#34;, &#34;FRIDAY&#34;, &#34;SATURDAY&#34;, &#34;SUNDAY&#34;] When `null`, the `day_of_week_value` field will be omitted from the resulting object.
  - `float_value` (`number`): A float value. When `null`, the `float_value` field will be omitted from the resulting object.
  - `integer_value` (`number`): An integer value. When `null`, the `integer_value` field will be omitted from the resulting object.
  - `string_value` (`string`): A string value. When `null`, the `string_value` field will be omitted from the resulting object.
  - `timestamp_value` (`string`): A timestamp in RFC3339 UTC &#34;Zulu&#34; format, with nanosecond resolution and up to nine fractional digits.
Examples: &#34;2014-10-02T15:01:23Z&#34; and &#34;2014-10-02T15:01:23.045123456Z&#34;. When `null`, the `timestamp_value` field will be omitted from the resulting object.
  - `date_value` (`list[obj]`): Represents a whole or partial calendar date. When `null`, the `date_value` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.data_loss_prevention_deidentify_template.deidentify_config.info_type_transformations.transformations.primitive_transformation.replace_config.new_value.date_value.new](#fn-newvaluedatevaluenew) constructor.
  - `time_value` (`list[obj]`): Represents a time of day. When `null`, the `time_value` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.data_loss_prevention_deidentify_template.deidentify_config.info_type_transformations.transformations.primitive_transformation.replace_config.new_value.time_value.new](#fn-newvaluetimevaluenew) constructor.

**Returns**:
  - An attribute object that represents the `new_value` sub block.


## obj deidentify_config.info_type_transformations.transformations.primitive_transformation.replace_config.new_value.date_value



### fn deidentify_config.info_type_transformations.transformations.primitive_transformation.replace_config.new_value.date_value.new

```ts
new()
```


`google.data_loss_prevention_deidentify_template.deidentify_config.info_type_transformations.transformations.primitive_transformation.replace_config.new_value.date_value.new` constructs a new object with attributes and blocks configured for the `date_value`
Terraform sub block.



**Args**:
  - `day` (`number`): Day of month. Must be from 1 to 31 and valid for the year and month, or 0 if specifying a
year by itself or a year and month where the day is not significant. When `null`, the `day` field will be omitted from the resulting object.
  - `month` (`number`): Month of year. Must be from 1 to 12, or 0 if specifying a year without a month and day. When `null`, the `month` field will be omitted from the resulting object.
  - `year` (`number`): Year of date. Must be from 1 to 9999, or 0 if specifying a date without a year. When `null`, the `year` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `date_value` sub block.


## obj deidentify_config.info_type_transformations.transformations.primitive_transformation.replace_config.new_value.time_value



### fn deidentify_config.info_type_transformations.transformations.primitive_transformation.replace_config.new_value.time_value.new

```ts
new()
```


`google.data_loss_prevention_deidentify_template.deidentify_config.info_type_transformations.transformations.primitive_transformation.replace_config.new_value.time_value.new` constructs a new object with attributes and blocks configured for the `time_value`
Terraform sub block.



**Args**:
  - `hours` (`number`): Hours of day in 24 hour format. Should be from 0 to 23. When `null`, the `hours` field will be omitted from the resulting object.
  - `minutes` (`number`): Minutes of hour of day. Must be from 0 to 59. When `null`, the `minutes` field will be omitted from the resulting object.
  - `nanos` (`number`): Fractions of seconds in nanoseconds. Must be from 0 to 999,999,999. When `null`, the `nanos` field will be omitted from the resulting object.
  - `seconds` (`number`): Seconds of minutes of the time. Must normally be from 0 to 59. When `null`, the `seconds` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `time_value` sub block.


## obj timeouts



### fn timeouts.new

```ts
new()
```


`google.data_loss_prevention_deidentify_template.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`
Terraform sub block.



**Args**:
  - `create` (`string`):  When `null`, the `create` field will be omitted from the resulting object.
  - `delete` (`string`):  When `null`, the `delete` field will be omitted from the resulting object.
  - `update` (`string`):  When `null`, the `update` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `timeouts` sub block.