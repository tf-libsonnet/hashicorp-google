---
permalink: /privateca_certificate_template/
---

# privateca_certificate_template

`privateca_certificate_template` represents the `google_privateca_certificate_template` Terraform resource.



This package contains functions and utilities for setting up the resource using Jsonnet code.


## Index

* [`fn new()`](#fn-new)
* [`fn newAttrs()`](#fn-newattrs)
* [`fn withDescription()`](#fn-withdescription)
* [`fn withIdentityConstraints()`](#fn-withidentityconstraints)
* [`fn withIdentityConstraintsMixin()`](#fn-withidentityconstraintsmixin)
* [`fn withLabels()`](#fn-withlabels)
* [`fn withLocation()`](#fn-withlocation)
* [`fn withName()`](#fn-withname)
* [`fn withPassthroughExtensions()`](#fn-withpassthroughextensions)
* [`fn withPassthroughExtensionsMixin()`](#fn-withpassthroughextensionsmixin)
* [`fn withPredefinedValues()`](#fn-withpredefinedvalues)
* [`fn withPredefinedValuesMixin()`](#fn-withpredefinedvaluesmixin)
* [`fn withProject()`](#fn-withproject)
* [`fn withTimeouts()`](#fn-withtimeouts)
* [`fn withTimeoutsMixin()`](#fn-withtimeoutsmixin)
* [`obj identity_constraints`](#obj-identity_constraints)
  * [`fn new()`](#fn-identity_constraintsnew)
  * [`obj identity_constraints.cel_expression`](#obj-identity_constraintscel_expression)
    * [`fn new()`](#fn-identity_constraintscel_expressionnew)
* [`obj passthrough_extensions`](#obj-passthrough_extensions)
  * [`fn new()`](#fn-passthrough_extensionsnew)
  * [`obj passthrough_extensions.additional_extensions`](#obj-passthrough_extensionsadditional_extensions)
    * [`fn new()`](#fn-passthrough_extensionsadditional_extensionsnew)
* [`obj predefined_values`](#obj-predefined_values)
  * [`fn new()`](#fn-predefined_valuesnew)
  * [`obj predefined_values.additional_extensions`](#obj-predefined_valuesadditional_extensions)
    * [`fn new()`](#fn-predefined_valuesadditional_extensionsnew)
    * [`obj predefined_values.additional_extensions.object_id`](#obj-predefined_valuesadditional_extensionsobject_id)
      * [`fn new()`](#fn-predefined_valuesadditional_extensionsobject_idnew)
  * [`obj predefined_values.ca_options`](#obj-predefined_valuesca_options)
    * [`fn new()`](#fn-predefined_valuesca_optionsnew)
  * [`obj predefined_values.key_usage`](#obj-predefined_valueskey_usage)
    * [`fn new()`](#fn-predefined_valueskey_usagenew)
    * [`obj predefined_values.key_usage.base_key_usage`](#obj-predefined_valueskey_usagebase_key_usage)
      * [`fn new()`](#fn-predefined_valueskey_usagebase_key_usagenew)
    * [`obj predefined_values.key_usage.extended_key_usage`](#obj-predefined_valueskey_usageextended_key_usage)
      * [`fn new()`](#fn-predefined_valueskey_usageextended_key_usagenew)
    * [`obj predefined_values.key_usage.unknown_extended_key_usages`](#obj-predefined_valueskey_usageunknown_extended_key_usages)
      * [`fn new()`](#fn-predefined_valueskey_usageunknown_extended_key_usagesnew)
  * [`obj predefined_values.policy_ids`](#obj-predefined_valuespolicy_ids)
    * [`fn new()`](#fn-predefined_valuespolicy_idsnew)
* [`obj timeouts`](#obj-timeouts)
  * [`fn new()`](#fn-timeoutsnew)

## Fields

### fn new

```ts
new()
```


`google.privateca_certificate_template.new` injects a new `google_privateca_certificate_template` Terraform `resource`
block into the root module document.

Additionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the
resource. For example, if you added a new instance to the root using:

    # arguments omitted for brevity
    google.privateca_certificate_template.new('some_id')

You can get the reference to the `id` field of the created `google.privateca_certificate_template` using the reference:

    $._ref.google_privateca_certificate_template.some_id.get('id')

This is the same as directly entering `"${ google_privateca_certificate_template.some_id.id }"` as the value.

NOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,
or `$` to refer to the root object. Instead, make an explicit outer object using `local`.

**Args**:
  - `resourceLabel` (`string`): The name label of the block.
  - `description` (`string`): Optional. A human-readable description of scenarios this template is intended for. When `null`, the `description` field will be omitted from the resulting object.
  - `labels` (`obj`): Optional. Labels with user-defined metadata. When `null`, the `labels` field will be omitted from the resulting object.
  - `location` (`string`): The location for the resource
  - `name` (`string`): The resource name for this CertificateTemplate in the format `projects/*/locations/*/certificateTemplates/*`.
  - `project` (`string`): The project for the resource When `null`, the `project` field will be omitted from the resulting object.
  - `identity_constraints` (`list[obj]`): Optional. Describes constraints on identities that may be appear in Certificates issued using this template. If this is omitted, then this template will not add restrictions on a certificate&#39;s identity. When `null`, the `identity_constraints` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.privateca_certificate_template.identity_constraints.new](#fn-privatecacertificatetemplateidentityconstraintsnew) constructor.
  - `passthrough_extensions` (`list[obj]`): Optional. Describes the set of X.509 extensions that may appear in a Certificate issued using this CertificateTemplate. If a certificate request sets extensions that don&#39;t appear in the passthrough_extensions, those extensions will be dropped. If the issuing CaPool&#39;s IssuancePolicy defines baseline_values that don&#39;t appear here, the certificate issuance request will fail. If this is omitted, then this template will not add restrictions on a certificate&#39;s X.509 extensions. These constraints do not apply to X.509 extensions set in this CertificateTemplate&#39;s predefined_values. When `null`, the `passthrough_extensions` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.privateca_certificate_template.passthrough_extensions.new](#fn-privatecacertificatetemplatepassthroughextensionsnew) constructor.
  - `predefined_values` (`list[obj]`): Optional. A set of X.509 values that will be applied to all issued certificates that use this template. If the certificate request includes conflicting values for the same properties, they will be overwritten by the values defined here. If the issuing CaPool&#39;s IssuancePolicy defines conflicting baseline_values for the same properties, the certificate issuance request will fail. When `null`, the `predefined_values` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.privateca_certificate_template.predefined_values.new](#fn-privatecacertificatetemplatepredefinedvaluesnew) constructor.
  - `timeouts` (`obj`):  When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.privateca_certificate_template.timeouts.new](#fn-privatecacertificatetemplatetimeoutsnew) constructor.

**Returns**:
- A mixin object that injects the new resource into the root Terraform configuration.


### fn newAttrs

```ts
newAttrs()
```


`google.privateca_certificate_template.newAttrs` constructs a new object with attributes and blocks configured for the `privateca_certificate_template`
Terraform resource.

Unlike [google.privateca_certificate_template.new](#fn-privatecacertificatetemplatenew), this function will not inject the `resource`
block into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the
[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.

This is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to
injecting into a complete block.

**Args**:
  - `description` (`string`): Optional. A human-readable description of scenarios this template is intended for. When `null`, the `description` field will be omitted from the resulting object.
  - `labels` (`obj`): Optional. Labels with user-defined metadata. When `null`, the `labels` field will be omitted from the resulting object.
  - `location` (`string`): The location for the resource
  - `name` (`string`): The resource name for this CertificateTemplate in the format `projects/*/locations/*/certificateTemplates/*`.
  - `project` (`string`): The project for the resource When `null`, the `project` field will be omitted from the resulting object.
  - `identity_constraints` (`list[obj]`): Optional. Describes constraints on identities that may be appear in Certificates issued using this template. If this is omitted, then this template will not add restrictions on a certificate&#39;s identity. When `null`, the `identity_constraints` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.privateca_certificate_template.identity_constraints.new](#fn-privatecacertificatetemplateidentityconstraintsnew) constructor.
  - `passthrough_extensions` (`list[obj]`): Optional. Describes the set of X.509 extensions that may appear in a Certificate issued using this CertificateTemplate. If a certificate request sets extensions that don&#39;t appear in the passthrough_extensions, those extensions will be dropped. If the issuing CaPool&#39;s IssuancePolicy defines baseline_values that don&#39;t appear here, the certificate issuance request will fail. If this is omitted, then this template will not add restrictions on a certificate&#39;s X.509 extensions. These constraints do not apply to X.509 extensions set in this CertificateTemplate&#39;s predefined_values. When `null`, the `passthrough_extensions` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.privateca_certificate_template.passthrough_extensions.new](#fn-privatecacertificatetemplatepassthroughextensionsnew) constructor.
  - `predefined_values` (`list[obj]`): Optional. A set of X.509 values that will be applied to all issued certificates that use this template. If the certificate request includes conflicting values for the same properties, they will be overwritten by the values defined here. If the issuing CaPool&#39;s IssuancePolicy defines conflicting baseline_values for the same properties, the certificate issuance request will fail. When `null`, the `predefined_values` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.privateca_certificate_template.predefined_values.new](#fn-privatecacertificatetemplatepredefinedvaluesnew) constructor.
  - `timeouts` (`obj`):  When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.privateca_certificate_template.timeouts.new](#fn-privatecacertificatetemplatetimeoutsnew) constructor.

**Returns**:
  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `privateca_certificate_template` resource into the root Terraform configuration.


### fn withDescription

```ts
withDescription()
```

`google.privateca_certificate_template.withDescription` constructs a mixin object that can be merged into the `privateca_certificate_template`
Terraform resource block to set or update the description field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`TODO`): The value to set for the `description` field.


### fn withIdentityConstraints

```ts
withIdentityConstraints()
```

`google.privateca_certificate_template.withIdentityConstraints` constructs a mixin object that can be merged into the `privateca_certificate_template`
Terraform resource block to set or update the identity_constraints field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`TODO`): The value to set for the `identity_constraints` field.


### fn withIdentityConstraintsMixin

```ts
withIdentityConstraintsMixin()
```

`google.privateca_certificate_template.withIdentityConstraintsMixin` constructs a mixin object that can be merged into the `privateca_certificate_template`
Terraform resource block to set or update the identity_constraints field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google.privateca_certificate_template.withIdentityConstraints](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`TODO`): The value to set for the `identity_constraints` field.


### fn withLabels

```ts
withLabels()
```

`google.privateca_certificate_template.withLabels` constructs a mixin object that can be merged into the `privateca_certificate_template`
Terraform resource block to set or update the labels field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`TODO`): The value to set for the `labels` field.


### fn withLocation

```ts
withLocation()
```

`google.privateca_certificate_template.withLocation` constructs a mixin object that can be merged into the `privateca_certificate_template`
Terraform resource block to set or update the location field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`TODO`): The value to set for the `location` field.


### fn withName

```ts
withName()
```

`google.privateca_certificate_template.withName` constructs a mixin object that can be merged into the `privateca_certificate_template`
Terraform resource block to set or update the name field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`TODO`): The value to set for the `name` field.


### fn withPassthroughExtensions

```ts
withPassthroughExtensions()
```

`google.privateca_certificate_template.withPassthroughExtensions` constructs a mixin object that can be merged into the `privateca_certificate_template`
Terraform resource block to set or update the passthrough_extensions field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`TODO`): The value to set for the `passthrough_extensions` field.


### fn withPassthroughExtensionsMixin

```ts
withPassthroughExtensionsMixin()
```

`google.privateca_certificate_template.withPassthroughExtensionsMixin` constructs a mixin object that can be merged into the `privateca_certificate_template`
Terraform resource block to set or update the passthrough_extensions field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google.privateca_certificate_template.withPassthroughExtensions](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`TODO`): The value to set for the `passthrough_extensions` field.


### fn withPredefinedValues

```ts
withPredefinedValues()
```

`google.privateca_certificate_template.withPredefinedValues` constructs a mixin object that can be merged into the `privateca_certificate_template`
Terraform resource block to set or update the predefined_values field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`TODO`): The value to set for the `predefined_values` field.


### fn withPredefinedValuesMixin

```ts
withPredefinedValuesMixin()
```

`google.privateca_certificate_template.withPredefinedValuesMixin` constructs a mixin object that can be merged into the `privateca_certificate_template`
Terraform resource block to set or update the predefined_values field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google.privateca_certificate_template.withPredefinedValues](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`TODO`): The value to set for the `predefined_values` field.


### fn withProject

```ts
withProject()
```

`google.privateca_certificate_template.withProject` constructs a mixin object that can be merged into the `privateca_certificate_template`
Terraform resource block to set or update the project field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`TODO`): The value to set for the `project` field.


### fn withTimeouts

```ts
withTimeouts()
```

`google.privateca_certificate_template.withTimeouts` constructs a mixin object that can be merged into the `privateca_certificate_template`
Terraform resource block to set or update the timeouts field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`TODO`): The value to set for the `timeouts` field.


### fn withTimeoutsMixin

```ts
withTimeoutsMixin()
```

`google.privateca_certificate_template.withTimeoutsMixin` constructs a mixin object that can be merged into the `privateca_certificate_template`
Terraform resource block to set or update the timeouts field.

This function will merge the passed in value to the existing map. If you wish
to instead replace the entire map with the passed in `value`, use the [google.privateca_certificate_template.withTimeouts](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`TODO`): The value to set for the `timeouts` field.


## obj identity_constraints



### fn identity_constraints.new

```ts
new()
```


`google.privateca_certificate_template.identity_constraints.new` constructs a new object with attributes and blocks configured for the `identity_constraints`
Terraform sub block.



**Args**:
  - `allow_subject_alt_names_passthrough` (`bool`): Required. If this is true, the SubjectAltNames extension may be copied from a certificate request into the signed certificate. Otherwise, the requested SubjectAltNames will be discarded.
  - `allow_subject_passthrough` (`bool`): Required. If this is true, the Subject field may be copied from a certificate request into the signed certificate. Otherwise, the requested Subject will be discarded.
  - `cel_expression` (`list[obj]`): Optional. A CEL expression that may be used to validate the resolved X.509 Subject and/or Subject Alternative Name before a certificate is signed. To see the full allowed syntax and some examples, see https://cloud.google.com/certificate-authority-service/docs/using-cel When `null`, the `cel_expression` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.privateca_certificate_template.identity_constraints.cel_expression.new](#fn-identityconstraintscelexpressionnew) constructor.

**Returns**:
  - An attribute object that represents the `identity_constraints` sub block.


## obj identity_constraints.cel_expression



### fn identity_constraints.cel_expression.new

```ts
new()
```


`google.privateca_certificate_template.identity_constraints.cel_expression.new` constructs a new object with attributes and blocks configured for the `cel_expression`
Terraform sub block.



**Args**:
  - `description` (`string`): Optional. Description of the expression. This is a longer text which describes the expression, e.g. when hovered over it in a UI. When `null`, the `description` field will be omitted from the resulting object.
  - `expression` (`string`): Textual representation of an expression in Common Expression Language syntax. When `null`, the `expression` field will be omitted from the resulting object.
  - `location` (`string`): Optional. String indicating the location of the expression for error reporting, e.g. a file name and a position in the file. When `null`, the `location` field will be omitted from the resulting object.
  - `title` (`string`): Optional. Title for the expression, i.e. a short string describing its purpose. This can be used e.g. in UIs which allow to enter the expression. When `null`, the `title` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `cel_expression` sub block.


## obj passthrough_extensions



### fn passthrough_extensions.new

```ts
new()
```


`google.privateca_certificate_template.passthrough_extensions.new` constructs a new object with attributes and blocks configured for the `passthrough_extensions`
Terraform sub block.



**Args**:
  - `known_extensions` (`list`): Optional. A set of named X.509 extensions. Will be combined with additional_extensions to determine the full set of X.509 extensions. When `null`, the `known_extensions` field will be omitted from the resulting object.
  - `additional_extensions` (`list[obj]`): Optional. A set of ObjectIds identifying custom X.509 extensions. Will be combined with known_extensions to determine the full set of X.509 extensions. When `null`, the `additional_extensions` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.privateca_certificate_template.passthrough_extensions.additional_extensions.new](#fn-passthroughextensionsadditionalextensionsnew) constructor.

**Returns**:
  - An attribute object that represents the `passthrough_extensions` sub block.


## obj passthrough_extensions.additional_extensions



### fn passthrough_extensions.additional_extensions.new

```ts
new()
```


`google.privateca_certificate_template.passthrough_extensions.additional_extensions.new` constructs a new object with attributes and blocks configured for the `additional_extensions`
Terraform sub block.



**Args**:
  - `object_id_path` (`list`): Required. The parts of an OID path. The most significant parts of the path come first.

**Returns**:
  - An attribute object that represents the `additional_extensions` sub block.


## obj predefined_values



### fn predefined_values.new

```ts
new()
```


`google.privateca_certificate_template.predefined_values.new` constructs a new object with attributes and blocks configured for the `predefined_values`
Terraform sub block.



**Args**:
  - `aia_ocsp_servers` (`list`): Optional. Describes Online Certificate Status Protocol (OCSP) endpoint addresses that appear in the &#34;Authority Information Access&#34; extension in the certificate. When `null`, the `aia_ocsp_servers` field will be omitted from the resulting object.
  - `additional_extensions` (`list[obj]`): Optional. Describes custom X.509 extensions. When `null`, the `additional_extensions` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.privateca_certificate_template.predefined_values.additional_extensions.new](#fn-predefinedvaluesadditionalextensionsnew) constructor.
  - `ca_options` (`list[obj]`): Optional. Describes options in this X509Parameters that are relevant in a CA certificate. When `null`, the `ca_options` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.privateca_certificate_template.predefined_values.ca_options.new](#fn-predefinedvaluescaoptionsnew) constructor.
  - `key_usage` (`list[obj]`): Optional. Indicates the intended use for keys that correspond to a certificate. When `null`, the `key_usage` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.privateca_certificate_template.predefined_values.key_usage.new](#fn-predefinedvalueskeyusagenew) constructor.
  - `policy_ids` (`list[obj]`): Optional. Describes the X.509 certificate policy object identifiers, per https://tools.ietf.org/html/rfc5280#section-4.2.1.4. When `null`, the `policy_ids` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.privateca_certificate_template.predefined_values.policy_ids.new](#fn-predefinedvaluespolicyidsnew) constructor.

**Returns**:
  - An attribute object that represents the `predefined_values` sub block.


## obj predefined_values.additional_extensions



### fn predefined_values.additional_extensions.new

```ts
new()
```


`google.privateca_certificate_template.predefined_values.additional_extensions.new` constructs a new object with attributes and blocks configured for the `additional_extensions`
Terraform sub block.



**Args**:
  - `critical` (`bool`): Optional. Indicates whether or not this extension is critical (i.e., if the client does not know how to handle this extension, the client should consider this to be an error). When `null`, the `critical` field will be omitted from the resulting object.
  - `value` (`string`): Required. The value of this X.509 extension.
  - `object_id` (`list[obj]`): Required. The OID for this X.509 extension. When `null`, the `object_id` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.privateca_certificate_template.predefined_values.additional_extensions.object_id.new](#fn-additionalextensionsobjectidnew) constructor.

**Returns**:
  - An attribute object that represents the `additional_extensions` sub block.


## obj predefined_values.additional_extensions.object_id



### fn predefined_values.additional_extensions.object_id.new

```ts
new()
```


`google.privateca_certificate_template.predefined_values.additional_extensions.object_id.new` constructs a new object with attributes and blocks configured for the `object_id`
Terraform sub block.



**Args**:
  - `object_id_path` (`list`): Required. The parts of an OID path. The most significant parts of the path come first.

**Returns**:
  - An attribute object that represents the `object_id` sub block.


## obj predefined_values.ca_options



### fn predefined_values.ca_options.new

```ts
new()
```


`google.privateca_certificate_template.predefined_values.ca_options.new` constructs a new object with attributes and blocks configured for the `ca_options`
Terraform sub block.



**Args**:
  - `is_ca` (`bool`): Optional. Refers to the &#34;CA&#34; X.509 extension, which is a boolean value. When this value is missing, the extension will be omitted from the CA certificate. When `null`, the `is_ca` field will be omitted from the resulting object.
  - `max_issuer_path_length` (`number`): Optional. Refers to the path length restriction X.509 extension. For a CA certificate, this value describes the depth of subordinate CA certificates that are allowed. If this value is less than 0, the request will fail. If this value is missing, the max path length will be omitted from the CA certificate. When `null`, the `max_issuer_path_length` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `ca_options` sub block.


## obj predefined_values.key_usage



### fn predefined_values.key_usage.new

```ts
new()
```


`google.privateca_certificate_template.predefined_values.key_usage.new` constructs a new object with attributes and blocks configured for the `key_usage`
Terraform sub block.



**Args**:
  - `base_key_usage` (`list[obj]`): Describes high-level ways in which a key may be used. When `null`, the `base_key_usage` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.privateca_certificate_template.predefined_values.key_usage.base_key_usage.new](#fn-keyusagebasekeyusagenew) constructor.
  - `extended_key_usage` (`list[obj]`): Detailed scenarios in which a key may be used. When `null`, the `extended_key_usage` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.privateca_certificate_template.predefined_values.key_usage.extended_key_usage.new](#fn-keyusageextendedkeyusagenew) constructor.
  - `unknown_extended_key_usages` (`list[obj]`): Used to describe extended key usages that are not listed in the KeyUsage.ExtendedKeyUsageOptions message. When `null`, the `unknown_extended_key_usages` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.privateca_certificate_template.predefined_values.key_usage.unknown_extended_key_usages.new](#fn-keyusageunknownextendedkeyusagesnew) constructor.

**Returns**:
  - An attribute object that represents the `key_usage` sub block.


## obj predefined_values.key_usage.base_key_usage



### fn predefined_values.key_usage.base_key_usage.new

```ts
new()
```


`google.privateca_certificate_template.predefined_values.key_usage.base_key_usage.new` constructs a new object with attributes and blocks configured for the `base_key_usage`
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


## obj predefined_values.key_usage.extended_key_usage



### fn predefined_values.key_usage.extended_key_usage.new

```ts
new()
```


`google.privateca_certificate_template.predefined_values.key_usage.extended_key_usage.new` constructs a new object with attributes and blocks configured for the `extended_key_usage`
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


## obj predefined_values.key_usage.unknown_extended_key_usages



### fn predefined_values.key_usage.unknown_extended_key_usages.new

```ts
new()
```


`google.privateca_certificate_template.predefined_values.key_usage.unknown_extended_key_usages.new` constructs a new object with attributes and blocks configured for the `unknown_extended_key_usages`
Terraform sub block.



**Args**:
  - `object_id_path` (`list`): Required. The parts of an OID path. The most significant parts of the path come first.

**Returns**:
  - An attribute object that represents the `unknown_extended_key_usages` sub block.


## obj predefined_values.policy_ids



### fn predefined_values.policy_ids.new

```ts
new()
```


`google.privateca_certificate_template.predefined_values.policy_ids.new` constructs a new object with attributes and blocks configured for the `policy_ids`
Terraform sub block.



**Args**:
  - `object_id_path` (`list`): Required. The parts of an OID path. The most significant parts of the path come first.

**Returns**:
  - An attribute object that represents the `policy_ids` sub block.


## obj timeouts



### fn timeouts.new

```ts
new()
```


`google.privateca_certificate_template.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`
Terraform sub block.



**Args**:
  - `create` (`string`):  When `null`, the `create` field will be omitted from the resulting object.
  - `delete` (`string`):  When `null`, the `delete` field will be omitted from the resulting object.
  - `update` (`string`):  When `null`, the `update` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `timeouts` sub block.
