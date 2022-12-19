---
permalink: /kms_crypto_key/
---

# kms_crypto_key

`kms_crypto_key` represents the `google_kms_crypto_key` Terraform resource.



This package contains functions and utilities for setting up the resource using Jsonnet code.


## Index

* [`fn new()`](#fn-new)
* [`fn newAttrs()`](#fn-newattrs)
* [`fn withDestroyScheduledDuration()`](#fn-withdestroyscheduledduration)
* [`fn withImportOnly()`](#fn-withimportonly)
* [`fn withKeyRing()`](#fn-withkeyring)
* [`fn withLabels()`](#fn-withlabels)
* [`fn withName()`](#fn-withname)
* [`fn withPurpose()`](#fn-withpurpose)
* [`fn withRotationPeriod()`](#fn-withrotationperiod)
* [`fn withSkipInitialVersionCreation()`](#fn-withskipinitialversioncreation)
* [`fn withTimeouts()`](#fn-withtimeouts)
* [`fn withTimeoutsMixin()`](#fn-withtimeoutsmixin)
* [`fn withVersionTemplate()`](#fn-withversiontemplate)
* [`fn withVersionTemplateMixin()`](#fn-withversiontemplatemixin)
* [`obj timeouts`](#obj-timeouts)
  * [`fn new()`](#fn-timeoutsnew)
* [`obj version_template`](#obj-version_template)
  * [`fn new()`](#fn-version_templatenew)

## Fields

### fn new

```ts
new()
```


`google.kms_crypto_key.new` injects a new `google_kms_crypto_key` Terraform `resource`
block into the root module document.

Additionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the
resource. For example, if you added a new instance to the root using:

    # arguments omitted for brevity
    google.kms_crypto_key.new('some_id')

You can get the reference to the `id` field of the created `google.kms_crypto_key` using the reference:

    $._ref.google_kms_crypto_key.some_id.get('id')

This is the same as directly entering `"${ google_kms_crypto_key.some_id.id }"` as the value.

NOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,
or `$` to refer to the root object. Instead, make an explicit outer object using `local`.

**Args**:
  - `resourceLabel` (`string`): The name label of the block.
  - `destroy_scheduled_duration` (`string`): The period of time that versions of this key spend in the DESTROY_SCHEDULED state before transitioning to DESTROYED.
If not specified at creation time, the default duration is 24 hours. When `null`, the `destroy_scheduled_duration` field will be omitted from the resulting object.
  - `import_only` (`bool`): Whether this key may contain imported versions only. When `null`, the `import_only` field will be omitted from the resulting object.
  - `key_ring` (`string`): The KeyRing that this key belongs to.
Format: &#39;&#39;projects/{{project}}/locations/{{location}}/keyRings/{{keyRing}}&#39;&#39;.
  - `labels` (`obj`): Labels with user-defined metadata to apply to this resource. When `null`, the `labels` field will be omitted from the resulting object.
  - `name` (`string`): The resource name for the CryptoKey.
  - `purpose` (`string`): The immutable purpose of this CryptoKey. See the
[purpose reference](https://cloud.google.com/kms/docs/reference/rest/v1/projects.locations.keyRings.cryptoKeys#CryptoKeyPurpose)
for possible inputs. Default value: &#34;ENCRYPT_DECRYPT&#34; Possible values: [&#34;ENCRYPT_DECRYPT&#34;, &#34;ASYMMETRIC_SIGN&#34;, &#34;ASYMMETRIC_DECRYPT&#34;, &#34;MAC&#34;] When `null`, the `purpose` field will be omitted from the resulting object.
  - `rotation_period` (`string`): Every time this period passes, generate a new CryptoKeyVersion and set it as the primary.
The first rotation will take place after the specified period. The rotation period has
the format of a decimal number with up to 9 fractional digits, followed by the
letter &#39;s&#39; (seconds). It must be greater than a day (ie, 86400). When `null`, the `rotation_period` field will be omitted from the resulting object.
  - `skip_initial_version_creation` (`bool`): If set to true, the request will create a CryptoKey without any CryptoKeyVersions. 
You must use the &#39;google_kms_key_ring_import_job&#39; resource to import the CryptoKeyVersion. When `null`, the `skip_initial_version_creation` field will be omitted from the resulting object.
  - `timeouts` (`obj`):  When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.kms_crypto_key.timeouts.new](#fn-kms_crypto_keytimeoutsnew) constructor.
  - `version_template` (`list[obj]`): A template describing settings for new crypto key versions. When `null`, the `version_template` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.kms_crypto_key.version_template.new](#fn-kms_crypto_keyversion_templatenew) constructor.

**Returns**:
- A mixin object that injects the new resource into the root Terraform configuration.


### fn newAttrs

```ts
newAttrs()
```


`google.kms_crypto_key.newAttrs` constructs a new object with attributes and blocks configured for the `kms_crypto_key`
Terraform resource.

Unlike [google.kms_crypto_key.new](#fn-kms_crypto_keynew), this function will not inject the `resource`
block into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the
[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.

This is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to
injecting into a complete block.

**Args**:
  - `destroy_scheduled_duration` (`string`): The period of time that versions of this key spend in the DESTROY_SCHEDULED state before transitioning to DESTROYED.
If not specified at creation time, the default duration is 24 hours. When `null`, the `destroy_scheduled_duration` field will be omitted from the resulting object.
  - `import_only` (`bool`): Whether this key may contain imported versions only. When `null`, the `import_only` field will be omitted from the resulting object.
  - `key_ring` (`string`): The KeyRing that this key belongs to.
Format: &#39;&#39;projects/{{project}}/locations/{{location}}/keyRings/{{keyRing}}&#39;&#39;.
  - `labels` (`obj`): Labels with user-defined metadata to apply to this resource. When `null`, the `labels` field will be omitted from the resulting object.
  - `name` (`string`): The resource name for the CryptoKey.
  - `purpose` (`string`): The immutable purpose of this CryptoKey. See the
[purpose reference](https://cloud.google.com/kms/docs/reference/rest/v1/projects.locations.keyRings.cryptoKeys#CryptoKeyPurpose)
for possible inputs. Default value: &#34;ENCRYPT_DECRYPT&#34; Possible values: [&#34;ENCRYPT_DECRYPT&#34;, &#34;ASYMMETRIC_SIGN&#34;, &#34;ASYMMETRIC_DECRYPT&#34;, &#34;MAC&#34;] When `null`, the `purpose` field will be omitted from the resulting object.
  - `rotation_period` (`string`): Every time this period passes, generate a new CryptoKeyVersion and set it as the primary.
The first rotation will take place after the specified period. The rotation period has
the format of a decimal number with up to 9 fractional digits, followed by the
letter &#39;s&#39; (seconds). It must be greater than a day (ie, 86400). When `null`, the `rotation_period` field will be omitted from the resulting object.
  - `skip_initial_version_creation` (`bool`): If set to true, the request will create a CryptoKey without any CryptoKeyVersions. 
You must use the &#39;google_kms_key_ring_import_job&#39; resource to import the CryptoKeyVersion. When `null`, the `skip_initial_version_creation` field will be omitted from the resulting object.
  - `timeouts` (`obj`):  When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.kms_crypto_key.timeouts.new](#fn-kms_crypto_keytimeoutsnew) constructor.
  - `version_template` (`list[obj]`): A template describing settings for new crypto key versions. When `null`, the `version_template` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.kms_crypto_key.version_template.new](#fn-kms_crypto_keyversion_templatenew) constructor.

**Returns**:
  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `kms_crypto_key` resource into the root Terraform configuration.


### fn withDestroyScheduledDuration

```ts
withDestroyScheduledDuration()
```

`google.string.withDestroyScheduledDuration` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the destroy_scheduled_duration field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `destroy_scheduled_duration` field.


### fn withImportOnly

```ts
withImportOnly()
```

`google.bool.withImportOnly` constructs a mixin object that can be merged into the `bool`
Terraform resource block to set or update the import_only field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`bool`): The value to set for the `import_only` field.


### fn withKeyRing

```ts
withKeyRing()
```

`google.string.withKeyRing` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the key_ring field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `key_ring` field.


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


### fn withPurpose

```ts
withPurpose()
```

`google.string.withPurpose` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the purpose field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `purpose` field.


### fn withRotationPeriod

```ts
withRotationPeriod()
```

`google.string.withRotationPeriod` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the rotation_period field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `rotation_period` field.


### fn withSkipInitialVersionCreation

```ts
withSkipInitialVersionCreation()
```

`google.bool.withSkipInitialVersionCreation` constructs a mixin object that can be merged into the `bool`
Terraform resource block to set or update the skip_initial_version_creation field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`bool`): The value to set for the `skip_initial_version_creation` field.


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


### fn withVersionTemplate

```ts
withVersionTemplate()
```

`google.list[obj].withVersionTemplate` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the version_template field.

This function will replace the array with the passed in `value`. If you wish to instead append the
passed in value to the existing array, use the [google.list[obj].withVersionTemplateMixin](TODO) function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `version_template` field.


### fn withVersionTemplateMixin

```ts
withVersionTemplateMixin()
```

`google.list[obj].withVersionTemplateMixin` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the version_template field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google.list[obj].withVersionTemplate](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `version_template` field.


## obj timeouts



### fn timeouts.new

```ts
new()
```


`google.kms_crypto_key.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`
Terraform sub block.



**Args**:
  - `create` (`string`):  When `null`, the `create` field will be omitted from the resulting object.
  - `delete` (`string`):  When `null`, the `delete` field will be omitted from the resulting object.
  - `update` (`string`):  When `null`, the `update` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `timeouts` sub block.


## obj version_template



### fn version_template.new

```ts
new()
```


`google.kms_crypto_key.version_template.new` constructs a new object with attributes and blocks configured for the `version_template`
Terraform sub block.



**Args**:
  - `algorithm` (`string`): The algorithm to use when creating a version based on this template.
See the [algorithm reference](https://cloud.google.com/kms/docs/reference/rest/v1/CryptoKeyVersionAlgorithm) for possible inputs.
  - `protection_level` (`string`): The protection level to use when creating a version based on this template. Possible values include &#34;SOFTWARE&#34;, &#34;HSM&#34;, &#34;EXTERNAL&#34;, &#34;EXTERNAL_VPC&#34;. Defaults to &#34;SOFTWARE&#34;. When `null`, the `protection_level` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `version_template` sub block.
