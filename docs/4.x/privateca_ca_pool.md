---
permalink: /privateca_ca_pool/
---

# privateca_ca_pool

`privateca_ca_pool` represents the `google_privateca_ca_pool` Terraform resource.



This package contains functions and utilities for setting up the resource using Jsonnet code.


## Index

* [`fn new()`](#fn-new)
* [`fn newAttrs()`](#fn-newattrs)
* [`fn withIssuancePolicy()`](#fn-withissuancepolicy)
* [`fn withIssuancePolicyMixin()`](#fn-withissuancepolicymixin)
* [`fn withLabels()`](#fn-withlabels)
* [`fn withLocation()`](#fn-withlocation)
* [`fn withName()`](#fn-withname)
* [`fn withProject()`](#fn-withproject)
* [`fn withPublishingOptions()`](#fn-withpublishingoptions)
* [`fn withPublishingOptionsMixin()`](#fn-withpublishingoptionsmixin)
* [`fn withTier()`](#fn-withtier)
* [`fn withTimeouts()`](#fn-withtimeouts)
* [`fn withTimeoutsMixin()`](#fn-withtimeoutsmixin)
* [`obj issuance_policy`](#obj-issuance_policy)
  * [`fn new()`](#fn-issuance_policynew)
  * [`obj issuance_policy.allowed_issuance_modes`](#obj-issuance_policyallowed_issuance_modes)
    * [`fn new()`](#fn-issuance_policyallowed_issuance_modesnew)
  * [`obj issuance_policy.allowed_key_types`](#obj-issuance_policyallowed_key_types)
    * [`fn new()`](#fn-issuance_policyallowed_key_typesnew)
    * [`obj issuance_policy.allowed_key_types.elliptic_curve`](#obj-issuance_policyallowed_key_typeselliptic_curve)
      * [`fn new()`](#fn-issuance_policyallowed_key_typeselliptic_curvenew)
    * [`obj issuance_policy.allowed_key_types.rsa`](#obj-issuance_policyallowed_key_typesrsa)
      * [`fn new()`](#fn-issuance_policyallowed_key_typesrsanew)
  * [`obj issuance_policy.baseline_values`](#obj-issuance_policybaseline_values)
    * [`fn new()`](#fn-issuance_policybaseline_valuesnew)
    * [`obj issuance_policy.baseline_values.additional_extensions`](#obj-issuance_policybaseline_valuesadditional_extensions)
      * [`fn new()`](#fn-issuance_policybaseline_valuesadditional_extensionsnew)
      * [`obj issuance_policy.baseline_values.additional_extensions.object_id`](#obj-issuance_policybaseline_valuesadditional_extensionsobject_id)
        * [`fn new()`](#fn-issuance_policybaseline_valuesadditional_extensionsobject_idnew)
    * [`obj issuance_policy.baseline_values.ca_options`](#obj-issuance_policybaseline_valuesca_options)
      * [`fn new()`](#fn-issuance_policybaseline_valuesca_optionsnew)
    * [`obj issuance_policy.baseline_values.key_usage`](#obj-issuance_policybaseline_valueskey_usage)
      * [`fn new()`](#fn-issuance_policybaseline_valueskey_usagenew)
      * [`obj issuance_policy.baseline_values.key_usage.base_key_usage`](#obj-issuance_policybaseline_valueskey_usagebase_key_usage)
        * [`fn new()`](#fn-issuance_policybaseline_valueskey_usagebase_key_usagenew)
      * [`obj issuance_policy.baseline_values.key_usage.extended_key_usage`](#obj-issuance_policybaseline_valueskey_usageextended_key_usage)
        * [`fn new()`](#fn-issuance_policybaseline_valueskey_usageextended_key_usagenew)
      * [`obj issuance_policy.baseline_values.key_usage.unknown_extended_key_usages`](#obj-issuance_policybaseline_valueskey_usageunknown_extended_key_usages)
        * [`fn new()`](#fn-issuance_policybaseline_valueskey_usageunknown_extended_key_usagesnew)
    * [`obj issuance_policy.baseline_values.name_constraints`](#obj-issuance_policybaseline_valuesname_constraints)
      * [`fn new()`](#fn-issuance_policybaseline_valuesname_constraintsnew)
    * [`obj issuance_policy.baseline_values.policy_ids`](#obj-issuance_policybaseline_valuespolicy_ids)
      * [`fn new()`](#fn-issuance_policybaseline_valuespolicy_idsnew)
  * [`obj issuance_policy.identity_constraints`](#obj-issuance_policyidentity_constraints)
    * [`fn new()`](#fn-issuance_policyidentity_constraintsnew)
    * [`obj issuance_policy.identity_constraints.cel_expression`](#obj-issuance_policyidentity_constraintscel_expression)
      * [`fn new()`](#fn-issuance_policyidentity_constraintscel_expressionnew)
* [`obj publishing_options`](#obj-publishing_options)
  * [`fn new()`](#fn-publishing_optionsnew)
* [`obj timeouts`](#obj-timeouts)
  * [`fn new()`](#fn-timeoutsnew)

## Fields

### fn new

```ts
new()
```


`google.privateca_ca_pool.new` injects a new `google_privateca_ca_pool` Terraform `resource`
block into the root module document.

Additionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the
resource. For example, if you added a new instance to the root using:

    # arguments omitted for brevity
    google.privateca_ca_pool.new('some_id')

You can get the reference to the `id` field of the created `google.privateca_ca_pool` using the reference:

    $._ref.google_privateca_ca_pool.some_id.get('id')

This is the same as directly entering `"${ google_privateca_ca_pool.some_id.id }"` as the value.

NOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,
or `$` to refer to the root object. Instead, make an explicit outer object using `local`.

**Args**:
  - `resourceLabel` (`string`): The name label of the block.
  - `labels` (`obj`): Labels with user-defined metadata.

An object containing a list of &#34;key&#34;: value pairs. Example: { &#34;name&#34;: &#34;wrench&#34;, &#34;mass&#34;:
&#34;1.3kg&#34;, &#34;count&#34;: &#34;3&#34; }. When `null`, the `labels` field will be omitted from the resulting object.
  - `location` (`string`): Location of the CaPool. A full list of valid locations can be found by
running &#39;gcloud privateca locations list&#39;.
  - `name` (`string`): The name for this CaPool.
  - `project` (`string`): Set the `project` field on the resulting resource block. When `null`, the `project` field will be omitted from the resulting object.
  - `tier` (`string`): The Tier of this CaPool. Possible values: [&#34;ENTERPRISE&#34;, &#34;DEVOPS&#34;]
  - `issuance_policy` (`list[obj]`): The IssuancePolicy to control how Certificates will be issued from this CaPool. When `null`, the `issuance_policy` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.privateca_ca_pool.issuance_policy.new](#fn-issuance_policynew) constructor.
  - `publishing_options` (`list[obj]`): The PublishingOptions to follow when issuing Certificates from any CertificateAuthority in this CaPool. When `null`, the `publishing_options` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.privateca_ca_pool.publishing_options.new](#fn-publishing_optionsnew) constructor.
  - `timeouts` (`obj`): Set the `timeouts` field on the resulting resource block. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.privateca_ca_pool.timeouts.new](#fn-timeoutsnew) constructor.

**Returns**:
- A mixin object that injects the new resource into the root Terraform configuration.


### fn newAttrs

```ts
newAttrs()
```


`google.privateca_ca_pool.newAttrs` constructs a new object with attributes and blocks configured for the `privateca_ca_pool`
Terraform resource.

Unlike [google.privateca_ca_pool.new](#fn-new), this function will not inject the `resource`
block into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the
[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.

This is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to
injecting into a complete block.

**Args**:
  - `labels` (`obj`): Labels with user-defined metadata.

An object containing a list of &#34;key&#34;: value pairs. Example: { &#34;name&#34;: &#34;wrench&#34;, &#34;mass&#34;:
&#34;1.3kg&#34;, &#34;count&#34;: &#34;3&#34; }. When `null`, the `labels` field will be omitted from the resulting object.
  - `location` (`string`): Location of the CaPool. A full list of valid locations can be found by
running &#39;gcloud privateca locations list&#39;.
  - `name` (`string`): The name for this CaPool.
  - `project` (`string`): Set the `project` field on the resulting object. When `null`, the `project` field will be omitted from the resulting object.
  - `tier` (`string`): The Tier of this CaPool. Possible values: [&#34;ENTERPRISE&#34;, &#34;DEVOPS&#34;]
  - `issuance_policy` (`list[obj]`): The IssuancePolicy to control how Certificates will be issued from this CaPool. When `null`, the `issuance_policy` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.privateca_ca_pool.issuance_policy.new](#fn-issuance_policynew) constructor.
  - `publishing_options` (`list[obj]`): The PublishingOptions to follow when issuing Certificates from any CertificateAuthority in this CaPool. When `null`, the `publishing_options` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.privateca_ca_pool.publishing_options.new](#fn-publishing_optionsnew) constructor.
  - `timeouts` (`obj`): Set the `timeouts` field on the resulting object. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.privateca_ca_pool.timeouts.new](#fn-timeoutsnew) constructor.

**Returns**:
  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `privateca_ca_pool` resource into the root Terraform configuration.


### fn withIssuancePolicy

```ts
withIssuancePolicy()
```

`google.list[obj].withIssuancePolicy` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the issuance_policy field.

This function will replace the array with the passed in `value`. If you wish to instead append the
passed in value to the existing array, use the [google.list[obj].withIssuancePolicyMixin](TODO) function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `issuance_policy` field.


### fn withIssuancePolicyMixin

```ts
withIssuancePolicyMixin()
```

`google.list[obj].withIssuancePolicyMixin` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the issuance_policy field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google.list[obj].withIssuancePolicy](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `issuance_policy` field.


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


### fn withPublishingOptions

```ts
withPublishingOptions()
```

`google.list[obj].withPublishingOptions` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the publishing_options field.

This function will replace the array with the passed in `value`. If you wish to instead append the
passed in value to the existing array, use the [google.list[obj].withPublishingOptionsMixin](TODO) function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `publishing_options` field.


### fn withPublishingOptionsMixin

```ts
withPublishingOptionsMixin()
```

`google.list[obj].withPublishingOptionsMixin` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the publishing_options field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google.list[obj].withPublishingOptions](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `publishing_options` field.


### fn withTier

```ts
withTier()
```

`google.string.withTier` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the tier field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `tier` field.


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


## obj issuance_policy



### fn issuance_policy.new

```ts
new()
```


`google.privateca_ca_pool.issuance_policy.new` constructs a new object with attributes and blocks configured for the `issuance_policy`
Terraform sub block.



**Args**:
  - `maximum_lifetime` (`string`): The maximum lifetime allowed for issued Certificates. Note that if the issuing CertificateAuthority
expires before a Certificate&#39;s requested maximumLifetime, the effective lifetime will be explicitly truncated to match it. When `null`, the `maximum_lifetime` field will be omitted from the resulting object.
  - `allowed_issuance_modes` (`list[obj]`): IssuanceModes specifies the allowed ways in which Certificates may be requested from this CaPool. When `null`, the `allowed_issuance_modes` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.privateca_ca_pool.issuance_policy.allowed_issuance_modes.new](#fn-issuance_policyallowed_issuance_modesnew) constructor.
  - `allowed_key_types` (`list[obj]`): If any AllowedKeyType is specified, then the certificate request&#39;s public key must match one of the key types listed here.
Otherwise, any key may be used. When `null`, the `allowed_key_types` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.privateca_ca_pool.issuance_policy.allowed_key_types.new](#fn-issuance_policyallowed_key_typesnew) constructor.
  - `baseline_values` (`list[obj]`): A set of X.509 values that will be applied to all certificates issued through this CaPool. If a certificate request
includes conflicting values for the same properties, they will be overwritten by the values defined here. If a certificate
request uses a CertificateTemplate that defines conflicting predefinedValues for the same properties, the certificate
issuance request will fail. When `null`, the `baseline_values` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.privateca_ca_pool.issuance_policy.baseline_values.new](#fn-issuance_policybaseline_valuesnew) constructor.
  - `identity_constraints` (`list[obj]`): Describes constraints on identities that may appear in Certificates issued through this CaPool.
If this is omitted, then this CaPool will not add restrictions on a certificate&#39;s identity. When `null`, the `identity_constraints` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.privateca_ca_pool.issuance_policy.identity_constraints.new](#fn-issuance_policyidentity_constraintsnew) constructor.

**Returns**:
  - An attribute object that represents the `issuance_policy` sub block.


## obj issuance_policy.allowed_issuance_modes



### fn issuance_policy.allowed_issuance_modes.new

```ts
new()
```


`google.privateca_ca_pool.issuance_policy.allowed_issuance_modes.new` constructs a new object with attributes and blocks configured for the `allowed_issuance_modes`
Terraform sub block.



**Args**:
  - `allow_config_based_issuance` (`bool`): When true, allows callers to create Certificates by specifying a CertificateConfig.
  - `allow_csr_based_issuance` (`bool`): When true, allows callers to create Certificates by specifying a CSR.

**Returns**:
  - An attribute object that represents the `allowed_issuance_modes` sub block.


## obj issuance_policy.allowed_key_types



### fn issuance_policy.allowed_key_types.new

```ts
new()
```


`google.privateca_ca_pool.issuance_policy.allowed_key_types.new` constructs a new object with attributes and blocks configured for the `allowed_key_types`
Terraform sub block.



**Args**:
  - `elliptic_curve` (`list[obj]`): Represents an allowed Elliptic Curve key type. When `null`, the `elliptic_curve` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.privateca_ca_pool.issuance_policy.allowed_key_types.elliptic_curve.new](#fn-issuance_policyissuance_policyelliptic_curvenew) constructor.
  - `rsa` (`list[obj]`): Describes an RSA key that may be used in a Certificate issued from a CaPool. When `null`, the `rsa` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.privateca_ca_pool.issuance_policy.allowed_key_types.rsa.new](#fn-issuance_policyissuance_policyrsanew) constructor.

**Returns**:
  - An attribute object that represents the `allowed_key_types` sub block.


## obj issuance_policy.allowed_key_types.elliptic_curve



### fn issuance_policy.allowed_key_types.elliptic_curve.new

```ts
new()
```


`google.privateca_ca_pool.issuance_policy.allowed_key_types.elliptic_curve.new` constructs a new object with attributes and blocks configured for the `elliptic_curve`
Terraform sub block.



**Args**:
  - `signature_algorithm` (`string`): The algorithm used. Possible values: [&#34;ECDSA_P256&#34;, &#34;ECDSA_P384&#34;, &#34;EDDSA_25519&#34;]

**Returns**:
  - An attribute object that represents the `elliptic_curve` sub block.


## obj issuance_policy.allowed_key_types.rsa



### fn issuance_policy.allowed_key_types.rsa.new

```ts
new()
```


`google.privateca_ca_pool.issuance_policy.allowed_key_types.rsa.new` constructs a new object with attributes and blocks configured for the `rsa`
Terraform sub block.



**Args**:
  - `max_modulus_size` (`string`): The maximum allowed RSA modulus size, in bits. If this is not set, or if set to zero, the
service will not enforce an explicit upper bound on RSA modulus sizes. When `null`, the `max_modulus_size` field will be omitted from the resulting object.
  - `min_modulus_size` (`string`): The minimum allowed RSA modulus size, in bits. If this is not set, or if set to zero, the
service-level min RSA modulus size will continue to apply. When `null`, the `min_modulus_size` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `rsa` sub block.


## obj issuance_policy.baseline_values



### fn issuance_policy.baseline_values.new

```ts
new()
```


`google.privateca_ca_pool.issuance_policy.baseline_values.new` constructs a new object with attributes and blocks configured for the `baseline_values`
Terraform sub block.



**Args**:
  - `aia_ocsp_servers` (`list`): Describes Online Certificate Status Protocol (OCSP) endpoint addresses that appear in the
&#34;Authority Information Access&#34; extension in the certificate. When `null`, the `aia_ocsp_servers` field will be omitted from the resulting object.
  - `additional_extensions` (`list[obj]`): Specifies an X.509 extension, which may be used in different parts of X.509 objects like certificates, CSRs, and CRLs. When `null`, the `additional_extensions` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.privateca_ca_pool.issuance_policy.baseline_values.additional_extensions.new](#fn-issuance_policyissuance_policyadditional_extensionsnew) constructor.
  - `ca_options` (`list[obj]`): Describes values that are relevant in a CA certificate. When `null`, the `ca_options` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.privateca_ca_pool.issuance_policy.baseline_values.ca_options.new](#fn-issuance_policyissuance_policyca_optionsnew) constructor.
  - `key_usage` (`list[obj]`): Indicates the intended use for keys that correspond to a certificate. When `null`, the `key_usage` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.privateca_ca_pool.issuance_policy.baseline_values.key_usage.new](#fn-issuance_policyissuance_policykey_usagenew) constructor.
  - `name_constraints` (`list[obj]`): Describes the X.509 name constraints extension. When `null`, the `name_constraints` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.privateca_ca_pool.issuance_policy.baseline_values.name_constraints.new](#fn-issuance_policyissuance_policyname_constraintsnew) constructor.
  - `policy_ids` (`list[obj]`): Describes the X.509 certificate policy object identifiers, per https://tools.ietf.org/html/rfc5280#section-4.2.1.4. When `null`, the `policy_ids` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.privateca_ca_pool.issuance_policy.baseline_values.policy_ids.new](#fn-issuance_policyissuance_policypolicy_idsnew) constructor.

**Returns**:
  - An attribute object that represents the `baseline_values` sub block.


## obj issuance_policy.baseline_values.additional_extensions



### fn issuance_policy.baseline_values.additional_extensions.new

```ts
new()
```


`google.privateca_ca_pool.issuance_policy.baseline_values.additional_extensions.new` constructs a new object with attributes and blocks configured for the `additional_extensions`
Terraform sub block.



**Args**:
  - `critical` (`bool`): Indicates whether or not this extension is critical (i.e., if the client does not know how to
handle this extension, the client should consider this to be an error).
  - `value` (`string`): The value of this X.509 extension. A base64-encoded string.
  - `object_id` (`list[obj]`): Describes values that are relevant in a CA certificate. When `null`, the `object_id` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.privateca_ca_pool.issuance_policy.baseline_values.additional_extensions.object_id.new](#fn-issuance_policyissuance_policybaseline_valuesobject_idnew) constructor.

**Returns**:
  - An attribute object that represents the `additional_extensions` sub block.


## obj issuance_policy.baseline_values.additional_extensions.object_id



### fn issuance_policy.baseline_values.additional_extensions.object_id.new

```ts
new()
```


`google.privateca_ca_pool.issuance_policy.baseline_values.additional_extensions.object_id.new` constructs a new object with attributes and blocks configured for the `object_id`
Terraform sub block.



**Args**:
  - `object_id_path` (`list`): An ObjectId specifies an object identifier (OID). These provide context and describe types in ASN.1 messages.

**Returns**:
  - An attribute object that represents the `object_id` sub block.


## obj issuance_policy.baseline_values.ca_options



### fn issuance_policy.baseline_values.ca_options.new

```ts
new()
```


`google.privateca_ca_pool.issuance_policy.baseline_values.ca_options.new` constructs a new object with attributes and blocks configured for the `ca_options`
Terraform sub block.



**Args**:
  - `is_ca` (`bool`): When true, the &#34;CA&#34; in Basic Constraints extension will be set to true. When `null`, the `is_ca` field will be omitted from the resulting object.
  - `max_issuer_path_length` (`number`): Refers to the &#34;path length constraint&#34; in Basic Constraints extension. For a CA certificate, this value describes the depth of
subordinate CA certificates that are allowed. If this value is less than 0, the request will fail. When `null`, the `max_issuer_path_length` field will be omitted from the resulting object.
  - `non_ca` (`bool`): When true, the &#34;CA&#34; in Basic Constraints extension will be set to false. 
If both &#39;is_ca&#39; and &#39;non_ca&#39; are unset, the extension will be omitted from the CA certificate. When `null`, the `non_ca` field will be omitted from the resulting object.
  - `zero_max_issuer_path_length` (`bool`): When true, the &#34;path length constraint&#34; in Basic Constraints extension will be set to 0.
if both &#39;max_issuer_path_length&#39; and &#39;zero_max_issuer_path_length&#39; are unset,
the max path length will be omitted from the CA certificate. When `null`, the `zero_max_issuer_path_length` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `ca_options` sub block.


## obj issuance_policy.baseline_values.key_usage



### fn issuance_policy.baseline_values.key_usage.new

```ts
new()
```


`google.privateca_ca_pool.issuance_policy.baseline_values.key_usage.new` constructs a new object with attributes and blocks configured for the `key_usage`
Terraform sub block.



**Args**:
  - `base_key_usage` (`list[obj]`): Describes high-level ways in which a key may be used. When `null`, the `base_key_usage` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.privateca_ca_pool.issuance_policy.baseline_values.key_usage.base_key_usage.new](#fn-issuance_policyissuance_policybaseline_valuesbase_key_usagenew) constructor.
  - `extended_key_usage` (`list[obj]`): Describes high-level ways in which a key may be used. When `null`, the `extended_key_usage` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.privateca_ca_pool.issuance_policy.baseline_values.key_usage.extended_key_usage.new](#fn-issuance_policyissuance_policybaseline_valuesextended_key_usagenew) constructor.
  - `unknown_extended_key_usages` (`list[obj]`): An ObjectId specifies an object identifier (OID). These provide context and describe types in ASN.1 messages. When `null`, the `unknown_extended_key_usages` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.privateca_ca_pool.issuance_policy.baseline_values.key_usage.unknown_extended_key_usages.new](#fn-issuance_policyissuance_policybaseline_valuesunknown_extended_key_usagesnew) constructor.

**Returns**:
  - An attribute object that represents the `key_usage` sub block.


## obj issuance_policy.baseline_values.key_usage.base_key_usage



### fn issuance_policy.baseline_values.key_usage.base_key_usage.new

```ts
new()
```


`google.privateca_ca_pool.issuance_policy.baseline_values.key_usage.base_key_usage.new` constructs a new object with attributes and blocks configured for the `base_key_usage`
Terraform sub block.



**Args**:
  - `cert_sign` (`bool`): The key may be used to sign certificates. When `null`, the `cert_sign` field will be omitted from the resulting object.
  - `content_commitment` (`bool`): The key may be used for cryptographic commitments. Note that this may also be referred to as &#34;non-repudiation&#34;. When `null`, the `content_commitment` field will be omitted from the resulting object.
  - `crl_sign` (`bool`): The key may be used sign certificate revocation lists. When `null`, the `crl_sign` field will be omitted from the resulting object.
  - `data_encipherment` (`bool`): The key may be used to encipher data. When `null`, the `data_encipherment` field will be omitted from the resulting object.
  - `decipher_only` (`bool`): The key may be used to decipher only. When `null`, the `decipher_only` field will be omitted from the resulting object.
  - `digital_signature` (`bool`): The key may be used for digital signatures. When `null`, the `digital_signature` field will be omitted from the resulting object.
  - `encipher_only` (`bool`): The key may be used to encipher only. When `null`, the `encipher_only` field will be omitted from the resulting object.
  - `key_agreement` (`bool`): The key may be used in a key agreement protocol. When `null`, the `key_agreement` field will be omitted from the resulting object.
  - `key_encipherment` (`bool`): The key may be used to encipher other keys. When `null`, the `key_encipherment` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `base_key_usage` sub block.


## obj issuance_policy.baseline_values.key_usage.extended_key_usage



### fn issuance_policy.baseline_values.key_usage.extended_key_usage.new

```ts
new()
```


`google.privateca_ca_pool.issuance_policy.baseline_values.key_usage.extended_key_usage.new` constructs a new object with attributes and blocks configured for the `extended_key_usage`
Terraform sub block.



**Args**:
  - `client_auth` (`bool`): Corresponds to OID 1.3.6.1.5.5.7.3.2. Officially described as &#34;TLS WWW client authentication&#34;, though regularly used for non-WWW TLS. When `null`, the `client_auth` field will be omitted from the resulting object.
  - `code_signing` (`bool`): Corresponds to OID 1.3.6.1.5.5.7.3.3. Officially described as &#34;Signing of downloadable executable code client authentication&#34;. When `null`, the `code_signing` field will be omitted from the resulting object.
  - `email_protection` (`bool`): Corresponds to OID 1.3.6.1.5.5.7.3.4. Officially described as &#34;Email protection&#34;. When `null`, the `email_protection` field will be omitted from the resulting object.
  - `ocsp_signing` (`bool`): Corresponds to OID 1.3.6.1.5.5.7.3.9. Officially described as &#34;Signing OCSP responses&#34;. When `null`, the `ocsp_signing` field will be omitted from the resulting object.
  - `server_auth` (`bool`): Corresponds to OID 1.3.6.1.5.5.7.3.1. Officially described as &#34;TLS WWW server authentication&#34;, though regularly used for non-WWW TLS. When `null`, the `server_auth` field will be omitted from the resulting object.
  - `time_stamping` (`bool`): Corresponds to OID 1.3.6.1.5.5.7.3.8. Officially described as &#34;Binding the hash of an object to a time&#34;. When `null`, the `time_stamping` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `extended_key_usage` sub block.


## obj issuance_policy.baseline_values.key_usage.unknown_extended_key_usages



### fn issuance_policy.baseline_values.key_usage.unknown_extended_key_usages.new

```ts
new()
```


`google.privateca_ca_pool.issuance_policy.baseline_values.key_usage.unknown_extended_key_usages.new` constructs a new object with attributes and blocks configured for the `unknown_extended_key_usages`
Terraform sub block.



**Args**:
  - `object_id_path` (`list`): An ObjectId specifies an object identifier (OID). These provide context and describe types in ASN.1 messages.

**Returns**:
  - An attribute object that represents the `unknown_extended_key_usages` sub block.


## obj issuance_policy.baseline_values.name_constraints



### fn issuance_policy.baseline_values.name_constraints.new

```ts
new()
```


`google.privateca_ca_pool.issuance_policy.baseline_values.name_constraints.new` constructs a new object with attributes and blocks configured for the `name_constraints`
Terraform sub block.



**Args**:
  - `critical` (`bool`): Indicates whether or not the name constraints are marked critical.
  - `excluded_dns_names` (`list`): Contains excluded DNS names. Any DNS name that can be
constructed by simply adding zero or more labels to
the left-hand side of the name satisfies the name constraint.
For example, &#39;example.com&#39;, &#39;www.example.com&#39;, &#39;www.sub.example.com&#39;
would satisfy &#39;example.com&#39; while &#39;example1.com&#39; does not. When `null`, the `excluded_dns_names` field will be omitted from the resulting object.
  - `excluded_email_addresses` (`list`): Contains the excluded email addresses. The value can be a particular
email address, a hostname to indicate all email addresses on that host or
a domain with a leading period (e.g. &#39;.example.com&#39;) to indicate
all email addresses in that domain. When `null`, the `excluded_email_addresses` field will be omitted from the resulting object.
  - `excluded_ip_ranges` (`list`): Contains the excluded IP ranges. For IPv4 addresses, the ranges
are expressed using CIDR notation as specified in RFC 4632.
For IPv6 addresses, the ranges are expressed in similar encoding as IPv4
addresses. When `null`, the `excluded_ip_ranges` field will be omitted from the resulting object.
  - `excluded_uris` (`list`): Contains the excluded URIs that apply to the host part of the name.
The value can be a hostname or a domain with a
leading period (like &#39;.example.com&#39;) When `null`, the `excluded_uris` field will be omitted from the resulting object.
  - `permitted_dns_names` (`list`): Contains permitted DNS names. Any DNS name that can be
constructed by simply adding zero or more labels to
the left-hand side of the name satisfies the name constraint.
For example, &#39;example.com&#39;, &#39;www.example.com&#39;, &#39;www.sub.example.com&#39;
would satisfy &#39;example.com&#39; while &#39;example1.com&#39; does not. When `null`, the `permitted_dns_names` field will be omitted from the resulting object.
  - `permitted_email_addresses` (`list`): Contains the permitted email addresses. The value can be a particular
email address, a hostname to indicate all email addresses on that host or
a domain with a leading period (e.g. &#39;.example.com&#39;) to indicate
all email addresses in that domain. When `null`, the `permitted_email_addresses` field will be omitted from the resulting object.
  - `permitted_ip_ranges` (`list`): Contains the permitted IP ranges. For IPv4 addresses, the ranges
are expressed using CIDR notation as specified in RFC 4632.
For IPv6 addresses, the ranges are expressed in similar encoding as IPv4
addresses. When `null`, the `permitted_ip_ranges` field will be omitted from the resulting object.
  - `permitted_uris` (`list`): Contains the permitted URIs that apply to the host part of the name.
The value can be a hostname or a domain with a
leading period (like &#39;.example.com&#39;) When `null`, the `permitted_uris` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `name_constraints` sub block.


## obj issuance_policy.baseline_values.policy_ids



### fn issuance_policy.baseline_values.policy_ids.new

```ts
new()
```


`google.privateca_ca_pool.issuance_policy.baseline_values.policy_ids.new` constructs a new object with attributes and blocks configured for the `policy_ids`
Terraform sub block.



**Args**:
  - `object_id_path` (`list`): An ObjectId specifies an object identifier (OID). These provide context and describe types in ASN.1 messages.

**Returns**:
  - An attribute object that represents the `policy_ids` sub block.


## obj issuance_policy.identity_constraints



### fn issuance_policy.identity_constraints.new

```ts
new()
```


`google.privateca_ca_pool.issuance_policy.identity_constraints.new` constructs a new object with attributes and blocks configured for the `identity_constraints`
Terraform sub block.



**Args**:
  - `allow_subject_alt_names_passthrough` (`bool`): If this is set, the SubjectAltNames extension may be copied from a certificate request into the signed certificate.
Otherwise, the requested SubjectAltNames will be discarded.
  - `allow_subject_passthrough` (`bool`): If this is set, the Subject field may be copied from a certificate request into the signed certificate.
Otherwise, the requested Subject will be discarded.
  - `cel_expression` (`list[obj]`): A CEL expression that may be used to validate the resolved X.509 Subject and/or Subject Alternative Name before a
certificate is signed. To see the full allowed syntax and some examples,
see https://cloud.google.com/certificate-authority-service/docs/cel-guide When `null`, the `cel_expression` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.privateca_ca_pool.issuance_policy.identity_constraints.cel_expression.new](#fn-issuance_policyissuance_policycel_expressionnew) constructor.

**Returns**:
  - An attribute object that represents the `identity_constraints` sub block.


## obj issuance_policy.identity_constraints.cel_expression



### fn issuance_policy.identity_constraints.cel_expression.new

```ts
new()
```


`google.privateca_ca_pool.issuance_policy.identity_constraints.cel_expression.new` constructs a new object with attributes and blocks configured for the `cel_expression`
Terraform sub block.



**Args**:
  - `description` (`string`): Description of the expression. This is a longer text which describes the expression, e.g. when hovered over it in a UI. When `null`, the `description` field will be omitted from the resulting object.
  - `expression` (`string`): Textual representation of an expression in Common Expression Language syntax.
  - `location` (`string`): String indicating the location of the expression for error reporting, e.g. a file name and a position in the file. When `null`, the `location` field will be omitted from the resulting object.
  - `title` (`string`): Title for the expression, i.e. a short string describing its purpose. This can be used e.g. in UIs which allow to enter the expression. When `null`, the `title` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `cel_expression` sub block.


## obj publishing_options



### fn publishing_options.new

```ts
new()
```


`google.privateca_ca_pool.publishing_options.new` constructs a new object with attributes and blocks configured for the `publishing_options`
Terraform sub block.



**Args**:
  - `publish_ca_cert` (`bool`): When true, publishes each CertificateAuthority&#39;s CA certificate and includes its URL in the &#34;Authority Information Access&#34;
X.509 extension in all issued Certificates. If this is false, the CA certificate will not be published and the corresponding
X.509 extension will not be written in issued certificates.
  - `publish_crl` (`bool`): When true, publishes each CertificateAuthority&#39;s CRL and includes its URL in the &#34;CRL Distribution Points&#34; X.509 extension
in all issued Certificates. If this is false, CRLs will not be published and the corresponding X.509 extension will not
be written in issued certificates. CRLs will expire 7 days from their creation. However, we will rebuild daily. CRLs are
also rebuilt shortly after a certificate is revoked.

**Returns**:
  - An attribute object that represents the `publishing_options` sub block.


## obj timeouts



### fn timeouts.new

```ts
new()
```


`google.privateca_ca_pool.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`
Terraform sub block.



**Args**:
  - `create` (`string`): Set the `create` field on the resulting object. When `null`, the `create` field will be omitted from the resulting object.
  - `delete` (`string`): Set the `delete` field on the resulting object. When `null`, the `delete` field will be omitted from the resulting object.
  - `update` (`string`): Set the `update` field on the resulting object. When `null`, the `update` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `timeouts` sub block.
