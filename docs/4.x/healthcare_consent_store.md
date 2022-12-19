---
permalink: /healthcare_consent_store/
---

# healthcare_consent_store

`healthcare_consent_store` represents the `google_healthcare_consent_store` Terraform resource.



This package contains functions and utilities for setting up the resource using Jsonnet code.


## Index

* [`fn new()`](#fn-new)
* [`fn newAttrs()`](#fn-newattrs)
* [`fn withDataset()`](#fn-withdataset)
* [`fn withDefaultConsentTtl()`](#fn-withdefaultconsentttl)
* [`fn withEnableConsentCreateOnUpdate()`](#fn-withenableconsentcreateonupdate)
* [`fn withLabels()`](#fn-withlabels)
* [`fn withName()`](#fn-withname)
* [`fn withTimeouts()`](#fn-withtimeouts)
* [`fn withTimeoutsMixin()`](#fn-withtimeoutsmixin)
* [`obj timeouts`](#obj-timeouts)
  * [`fn new()`](#fn-timeoutsnew)

## Fields

### fn new

```ts
new()
```


`google.healthcare_consent_store.new` injects a new `google_healthcare_consent_store` Terraform `resource`
block into the root module document.

Additionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the
resource. For example, if you added a new instance to the root using:

    # arguments omitted for brevity
    google.healthcare_consent_store.new('some_id')

You can get the reference to the `id` field of the created `google.healthcare_consent_store` using the reference:

    $._ref.google_healthcare_consent_store.some_id.get('id')

This is the same as directly entering `"${ google_healthcare_consent_store.some_id.id }"` as the value.

NOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,
or `$` to refer to the root object. Instead, make an explicit outer object using `local`.

**Args**:
  - `resourceLabel` (`string`): The name label of the block.
  - `dataset` (`string`): Identifies the dataset addressed by this request. Must be in the format
&#39;projects/{project}/locations/{location}/datasets/{dataset}&#39;
  - `default_consent_ttl` (`string`): Default time to live for consents in this store. Must be at least 24 hours. Updating this field will not affect the expiration time of existing consents.

A duration in seconds with up to nine fractional digits, terminated by &#39;s&#39;. Example: &#34;3.5s&#34;. When `null`, the `default_consent_ttl` field will be omitted from the resulting object.
  - `enable_consent_create_on_update` (`bool`): If true, [consents.patch] [google.cloud.healthcare.v1.consent.UpdateConsent] creates the consent if it does not already exist. When `null`, the `enable_consent_create_on_update` field will be omitted from the resulting object.
  - `labels` (`obj`): User-supplied key-value pairs used to organize Consent stores.

Label keys must be between 1 and 63 characters long, have a UTF-8 encoding of maximum 128 bytes, and must
conform to the following PCRE regular expression: &#39;[\p{Ll}\p{Lo}][\p{Ll}\p{Lo}\p{N}_-]{0,62}&#39;

Label values are optional, must be between 1 and 63 characters long, have a UTF-8 encoding of maximum 128
bytes, and must conform to the following PCRE regular expression: &#39;[\p{Ll}\p{Lo}\p{N}_-]{0,63}&#39;

No more than 64 labels can be associated with a given store.

An object containing a list of &#34;key&#34;: value pairs.
Example: { &#34;name&#34;: &#34;wrench&#34;, &#34;mass&#34;: &#34;1.3kg&#34;, &#34;count&#34;: &#34;3&#34; }. When `null`, the `labels` field will be omitted from the resulting object.
  - `name` (`string`): The name of this ConsentStore, for example:
&#34;consent1&#34;
  - `timeouts` (`obj`): Set the `timeouts` field on the resulting resource block. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.healthcare_consent_store.timeouts.new](#fn-timeoutsnew) constructor.

**Returns**:
- A mixin object that injects the new resource into the root Terraform configuration.


### fn newAttrs

```ts
newAttrs()
```


`google.healthcare_consent_store.newAttrs` constructs a new object with attributes and blocks configured for the `healthcare_consent_store`
Terraform resource.

Unlike [google.healthcare_consent_store.new](#fn-new), this function will not inject the `resource`
block into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the
[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.

This is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to
injecting into a complete block.

**Args**:
  - `dataset` (`string`): Identifies the dataset addressed by this request. Must be in the format
&#39;projects/{project}/locations/{location}/datasets/{dataset}&#39;
  - `default_consent_ttl` (`string`): Default time to live for consents in this store. Must be at least 24 hours. Updating this field will not affect the expiration time of existing consents.

A duration in seconds with up to nine fractional digits, terminated by &#39;s&#39;. Example: &#34;3.5s&#34;. When `null`, the `default_consent_ttl` field will be omitted from the resulting object.
  - `enable_consent_create_on_update` (`bool`): If true, [consents.patch] [google.cloud.healthcare.v1.consent.UpdateConsent] creates the consent if it does not already exist. When `null`, the `enable_consent_create_on_update` field will be omitted from the resulting object.
  - `labels` (`obj`): User-supplied key-value pairs used to organize Consent stores.

Label keys must be between 1 and 63 characters long, have a UTF-8 encoding of maximum 128 bytes, and must
conform to the following PCRE regular expression: &#39;[\p{Ll}\p{Lo}][\p{Ll}\p{Lo}\p{N}_-]{0,62}&#39;

Label values are optional, must be between 1 and 63 characters long, have a UTF-8 encoding of maximum 128
bytes, and must conform to the following PCRE regular expression: &#39;[\p{Ll}\p{Lo}\p{N}_-]{0,63}&#39;

No more than 64 labels can be associated with a given store.

An object containing a list of &#34;key&#34;: value pairs.
Example: { &#34;name&#34;: &#34;wrench&#34;, &#34;mass&#34;: &#34;1.3kg&#34;, &#34;count&#34;: &#34;3&#34; }. When `null`, the `labels` field will be omitted from the resulting object.
  - `name` (`string`): The name of this ConsentStore, for example:
&#34;consent1&#34;
  - `timeouts` (`obj`): Set the `timeouts` field on the resulting object. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.healthcare_consent_store.timeouts.new](#fn-timeoutsnew) constructor.

**Returns**:
  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `healthcare_consent_store` resource into the root Terraform configuration.


### fn withDataset

```ts
withDataset()
```

`google.string.withDataset` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the dataset field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `dataset` field.


### fn withDefaultConsentTtl

```ts
withDefaultConsentTtl()
```

`google.string.withDefaultConsentTtl` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the default_consent_ttl field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `default_consent_ttl` field.


### fn withEnableConsentCreateOnUpdate

```ts
withEnableConsentCreateOnUpdate()
```

`google.bool.withEnableConsentCreateOnUpdate` constructs a mixin object that can be merged into the `bool`
Terraform resource block to set or update the enable_consent_create_on_update field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`bool`): The value to set for the `enable_consent_create_on_update` field.


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


`google.healthcare_consent_store.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`
Terraform sub block.



**Args**:
  - `create` (`string`): Set the `create` field on the resulting object. When `null`, the `create` field will be omitted from the resulting object.
  - `delete` (`string`): Set the `delete` field on the resulting object. When `null`, the `delete` field will be omitted from the resulting object.
  - `update` (`string`): Set the `update` field on the resulting object. When `null`, the `update` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `timeouts` sub block.
