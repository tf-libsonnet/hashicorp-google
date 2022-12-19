---
permalink: /privateca_certificate/
---

# privateca_certificate

`privateca_certificate` represents the `google_privateca_certificate` Terraform resource.



This package contains functions and utilities for setting up the resource using Jsonnet code.


## Index

* [`fn new()`](#fn-new)
* [`fn newAttrs()`](#fn-newattrs)
* [`fn withCertificateAuthority()`](#fn-withcertificateauthority)
* [`fn withCertificateTemplate()`](#fn-withcertificatetemplate)
* [`fn withConfig()`](#fn-withconfig)
* [`fn withConfigMixin()`](#fn-withconfigmixin)
* [`fn withLabels()`](#fn-withlabels)
* [`fn withLifetime()`](#fn-withlifetime)
* [`fn withLocation()`](#fn-withlocation)
* [`fn withName()`](#fn-withname)
* [`fn withPemCsr()`](#fn-withpemcsr)
* [`fn withPool()`](#fn-withpool)
* [`fn withProject()`](#fn-withproject)
* [`fn withTimeouts()`](#fn-withtimeouts)
* [`fn withTimeoutsMixin()`](#fn-withtimeoutsmixin)
* [`obj config`](#obj-config)
  * [`fn new()`](#fn-confignew)
  * [`obj config.public_key`](#obj-configpublic_key)
    * [`fn new()`](#fn-configpublic_keynew)
  * [`obj config.subject_config`](#obj-configsubject_config)
    * [`fn new()`](#fn-configsubject_confignew)
    * [`obj config.subject_config.subject`](#obj-configsubject_configsubject)
      * [`fn new()`](#fn-configsubject_configsubjectnew)
    * [`obj config.subject_config.subject_alt_name`](#obj-configsubject_configsubject_alt_name)
      * [`fn new()`](#fn-configsubject_configsubject_alt_namenew)
  * [`obj config.x509_config`](#obj-configx509_config)
    * [`fn new()`](#fn-configx509_confignew)
    * [`obj config.x509_config.additional_extensions`](#obj-configx509_configadditional_extensions)
      * [`fn new()`](#fn-configx509_configadditional_extensionsnew)
      * [`obj config.x509_config.additional_extensions.object_id`](#obj-configx509_configadditional_extensionsobject_id)
        * [`fn new()`](#fn-configx509_configadditional_extensionsobject_idnew)
    * [`obj config.x509_config.ca_options`](#obj-configx509_configca_options)
      * [`fn new()`](#fn-configx509_configca_optionsnew)
    * [`obj config.x509_config.key_usage`](#obj-configx509_configkey_usage)
      * [`fn new()`](#fn-configx509_configkey_usagenew)
      * [`obj config.x509_config.key_usage.base_key_usage`](#obj-configx509_configkey_usagebase_key_usage)
        * [`fn new()`](#fn-configx509_configkey_usagebase_key_usagenew)
      * [`obj config.x509_config.key_usage.extended_key_usage`](#obj-configx509_configkey_usageextended_key_usage)
        * [`fn new()`](#fn-configx509_configkey_usageextended_key_usagenew)
      * [`obj config.x509_config.key_usage.unknown_extended_key_usages`](#obj-configx509_configkey_usageunknown_extended_key_usages)
        * [`fn new()`](#fn-configx509_configkey_usageunknown_extended_key_usagesnew)
    * [`obj config.x509_config.policy_ids`](#obj-configx509_configpolicy_ids)
      * [`fn new()`](#fn-configx509_configpolicy_idsnew)
* [`obj timeouts`](#obj-timeouts)
  * [`fn new()`](#fn-timeoutsnew)

## Fields

### fn new

```ts
new()
```


`google.privateca_certificate.new` injects a new `google_privateca_certificate` Terraform `resource`
block into the root module document.

Additionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the
resource. For example, if you added a new instance to the root using:

    # arguments omitted for brevity
    google.privateca_certificate.new('some_id')

You can get the reference to the `id` field of the created `google.privateca_certificate` using the reference:

    $._ref.google_privateca_certificate.some_id.get('id')

This is the same as directly entering `"${ google_privateca_certificate.some_id.id }"` as the value.

NOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,
or `$` to refer to the root object. Instead, make an explicit outer object using `local`.

**Args**:
  - `resourceLabel` (`string`): The name label of the block.
  - `certificate_authority` (`string`): The Certificate Authority ID that should issue the certificate. For example, to issue a Certificate from
a Certificate Authority with resource name &#39;projects/my-project/locations/us-central1/caPools/my-pool/certificateAuthorities/my-ca&#39;,
argument &#39;pool&#39; should be set to &#39;projects/my-project/locations/us-central1/caPools/my-pool&#39;, argument &#39;certificate_authority&#39;
should be set to &#39;my-ca&#39;. When `null`, the `certificate_authority` field will be omitted from the resulting object.
  - `certificate_template` (`string`): The resource name for a CertificateTemplate used to issue this certificate,
in the format &#39;projects/*/locations/*/certificateTemplates/*&#39;. If this is specified,
the caller must have the necessary permission to use this template. If this is
omitted, no template will be used. This template must be in the same location
as the Certificate. When `null`, the `certificate_template` field will be omitted from the resulting object.
  - `labels` (`obj`): Labels with user-defined metadata to apply to this resource. When `null`, the `labels` field will be omitted from the resulting object.
  - `lifetime` (`string`): The desired lifetime of the CA certificate. Used to create the &#34;notBeforeTime&#34; and
&#34;notAfterTime&#34; fields inside an X.509 certificate. A duration in seconds with up to nine
fractional digits, terminated by &#39;s&#39;. Example: &#34;3.5s&#34;. When `null`, the `lifetime` field will be omitted from the resulting object.
  - `location` (`string`): Location of the Certificate. A full list of valid locations can be found by
running &#39;gcloud privateca locations list&#39;.
  - `name` (`string`): The name for this Certificate.
  - `pem_csr` (`string`): Immutable. A pem-encoded X.509 certificate signing request (CSR). When `null`, the `pem_csr` field will be omitted from the resulting object.
  - `pool` (`string`): The name of the CaPool this Certificate belongs to.
  - `project` (`string`):  When `null`, the `project` field will be omitted from the resulting object.
  - `config` (`list[obj]`): The config used to create a self-signed X.509 certificate or CSR. When `null`, the `config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.privateca_certificate.config.new](#fn-privatecacertificateconfignew) constructor.
  - `timeouts` (`obj`):  When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.privateca_certificate.timeouts.new](#fn-privatecacertificatetimeoutsnew) constructor.

**Returns**:
- A mixin object that injects the new resource into the root Terraform configuration.


### fn newAttrs

```ts
newAttrs()
```


`google.privateca_certificate.newAttrs` constructs a new object with attributes and blocks configured for the `privateca_certificate`
Terraform resource.

Unlike [google.privateca_certificate.new](#fn-privatecacertificatenew), this function will not inject the `resource`
block into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the
[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.

This is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to
injecting into a complete block.

**Args**:
  - `certificate_authority` (`string`): The Certificate Authority ID that should issue the certificate. For example, to issue a Certificate from
a Certificate Authority with resource name &#39;projects/my-project/locations/us-central1/caPools/my-pool/certificateAuthorities/my-ca&#39;,
argument &#39;pool&#39; should be set to &#39;projects/my-project/locations/us-central1/caPools/my-pool&#39;, argument &#39;certificate_authority&#39;
should be set to &#39;my-ca&#39;. When `null`, the `certificate_authority` field will be omitted from the resulting object.
  - `certificate_template` (`string`): The resource name for a CertificateTemplate used to issue this certificate,
in the format &#39;projects/*/locations/*/certificateTemplates/*&#39;. If this is specified,
the caller must have the necessary permission to use this template. If this is
omitted, no template will be used. This template must be in the same location
as the Certificate. When `null`, the `certificate_template` field will be omitted from the resulting object.
  - `labels` (`obj`): Labels with user-defined metadata to apply to this resource. When `null`, the `labels` field will be omitted from the resulting object.
  - `lifetime` (`string`): The desired lifetime of the CA certificate. Used to create the &#34;notBeforeTime&#34; and
&#34;notAfterTime&#34; fields inside an X.509 certificate. A duration in seconds with up to nine
fractional digits, terminated by &#39;s&#39;. Example: &#34;3.5s&#34;. When `null`, the `lifetime` field will be omitted from the resulting object.
  - `location` (`string`): Location of the Certificate. A full list of valid locations can be found by
running &#39;gcloud privateca locations list&#39;.
  - `name` (`string`): The name for this Certificate.
  - `pem_csr` (`string`): Immutable. A pem-encoded X.509 certificate signing request (CSR). When `null`, the `pem_csr` field will be omitted from the resulting object.
  - `pool` (`string`): The name of the CaPool this Certificate belongs to.
  - `project` (`string`):  When `null`, the `project` field will be omitted from the resulting object.
  - `config` (`list[obj]`): The config used to create a self-signed X.509 certificate or CSR. When `null`, the `config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.privateca_certificate.config.new](#fn-privatecacertificateconfignew) constructor.
  - `timeouts` (`obj`):  When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.privateca_certificate.timeouts.new](#fn-privatecacertificatetimeoutsnew) constructor.

**Returns**:
  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `privateca_certificate` resource into the root Terraform configuration.


### fn withCertificateAuthority

```ts
withCertificateAuthority()
```

`google.string.withCertificateAuthority` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the certificate_authority field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `certificate_authority` field.


### fn withCertificateTemplate

```ts
withCertificateTemplate()
```

`google.string.withCertificateTemplate` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the certificate_template field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `certificate_template` field.


### fn withConfig

```ts
withConfig()
```

`google.list[obj].withConfig` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the config field.

This function will replace the array with the passed in `value`. If you wish to instead append the
passed in value to the existing array, use the [google.list[obj].withConfigMixin](TODO) function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `config` field.


### fn withConfigMixin

```ts
withConfigMixin()
```

`google.list[obj].withConfigMixin` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the config field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google.list[obj].withConfig](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `config` field.


### fn withLabels

```ts
withLabels()
```

`google.obj.withLabels` constructs a mixin object that can be merged into the `obj`
Terraform resource block to set or update the labels field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`obj`): The value to set for the `labels` field.


### fn withLifetime

```ts
withLifetime()
```

`google.string.withLifetime` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the lifetime field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `lifetime` field.


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


### fn withPemCsr

```ts
withPemCsr()
```

`google.string.withPemCsr` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the pem_csr field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `pem_csr` field.


### fn withPool

```ts
withPool()
```

`google.string.withPool` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the pool field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `pool` field.


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


## obj config



### fn config.new

```ts
new()
```


`google.privateca_certificate.config.new` constructs a new object with attributes and blocks configured for the `config`
Terraform sub block.



**Args**:
  - `public_key` (`list[obj]`): A PublicKey describes a public key. When `null`, the `public_key` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.privateca_certificate.config.public_key.new](#fn-configpublickeynew) constructor.
  - `subject_config` (`list[obj]`): Specifies some of the values in a certificate that are related to the subject. When `null`, the `subject_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.privateca_certificate.config.subject_config.new](#fn-configsubjectconfignew) constructor.
  - `x509_config` (`list[obj]`): Describes how some of the technical X.509 fields in a certificate should be populated. When `null`, the `x509_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.privateca_certificate.config.x509_config.new](#fn-configx509confignew) constructor.

**Returns**:
  - An attribute object that represents the `config` sub block.


## obj config.public_key



### fn config.public_key.new

```ts
new()
```


`google.privateca_certificate.config.public_key.new` constructs a new object with attributes and blocks configured for the `public_key`
Terraform sub block.



**Args**:
  - `format` (`string`): The format of the public key. Currently, only PEM format is supported. Possible values: [&#34;KEY_TYPE_UNSPECIFIED&#34;, &#34;PEM&#34;]
  - `key` (`string`): Required. A public key. When this is specified in a request, the padding and encoding can be any of the options described by the respective &#39;KeyType&#39; value. When this is generated by the service, it will always be an RFC 5280 SubjectPublicKeyInfo structure containing an algorithm identifier and a key. A base64-encoded string. When `null`, the `key` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `public_key` sub block.


## obj config.subject_config



### fn config.subject_config.new

```ts
new()
```


`google.privateca_certificate.config.subject_config.new` constructs a new object with attributes and blocks configured for the `subject_config`
Terraform sub block.



**Args**:
  - `subject` (`list[obj]`): Contains distinguished name fields such as the location and organization. When `null`, the `subject` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.privateca_certificate.config.subject_config.subject.new](#fn-subjectconfigsubjectnew) constructor.
  - `subject_alt_name` (`list[obj]`): The subject alternative name fields. When `null`, the `subject_alt_name` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.privateca_certificate.config.subject_config.subject_alt_name.new](#fn-subjectconfigsubjectaltnamenew) constructor.

**Returns**:
  - An attribute object that represents the `subject_config` sub block.


## obj config.subject_config.subject



### fn config.subject_config.subject.new

```ts
new()
```


`google.privateca_certificate.config.subject_config.subject.new` constructs a new object with attributes and blocks configured for the `subject`
Terraform sub block.



**Args**:
  - `common_name` (`string`): The common name of the distinguished name.
  - `country_code` (`string`): The country code of the subject. When `null`, the `country_code` field will be omitted from the resulting object.
  - `locality` (`string`): The locality or city of the subject. When `null`, the `locality` field will be omitted from the resulting object.
  - `organization` (`string`): The organization of the subject.
  - `organizational_unit` (`string`): The organizational unit of the subject. When `null`, the `organizational_unit` field will be omitted from the resulting object.
  - `postal_code` (`string`): The postal code of the subject. When `null`, the `postal_code` field will be omitted from the resulting object.
  - `province` (`string`): The province, territory, or regional state of the subject. When `null`, the `province` field will be omitted from the resulting object.
  - `street_address` (`string`): The street address of the subject. When `null`, the `street_address` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `subject` sub block.


## obj config.subject_config.subject_alt_name



### fn config.subject_config.subject_alt_name.new

```ts
new()
```


`google.privateca_certificate.config.subject_config.subject_alt_name.new` constructs a new object with attributes and blocks configured for the `subject_alt_name`
Terraform sub block.



**Args**:
  - `dns_names` (`list`): Contains only valid, fully-qualified host names. When `null`, the `dns_names` field will be omitted from the resulting object.
  - `email_addresses` (`list`): Contains only valid RFC 2822 E-mail addresses. When `null`, the `email_addresses` field will be omitted from the resulting object.
  - `ip_addresses` (`list`): Contains only valid 32-bit IPv4 addresses or RFC 4291 IPv6 addresses. When `null`, the `ip_addresses` field will be omitted from the resulting object.
  - `uris` (`list`): Contains only valid RFC 3986 URIs. When `null`, the `uris` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `subject_alt_name` sub block.


## obj config.x509_config



### fn config.x509_config.new

```ts
new()
```


`google.privateca_certificate.config.x509_config.new` constructs a new object with attributes and blocks configured for the `x509_config`
Terraform sub block.



**Args**:
  - `aia_ocsp_servers` (`list`): Describes Online Certificate Status Protocol (OCSP) endpoint addresses that appear in the
&#34;Authority Information Access&#34; extension in the certificate. When `null`, the `aia_ocsp_servers` field will be omitted from the resulting object.
  - `additional_extensions` (`list[obj]`): Specifies an X.509 extension, which may be used in different parts of X.509 objects like certificates, CSRs, and CRLs. When `null`, the `additional_extensions` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.privateca_certificate.config.x509_config.additional_extensions.new](#fn-x509configadditionalextensionsnew) constructor.
  - `ca_options` (`list[obj]`): Describes values that are relevant in a CA certificate. When `null`, the `ca_options` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.privateca_certificate.config.x509_config.ca_options.new](#fn-x509configcaoptionsnew) constructor.
  - `key_usage` (`list[obj]`): Indicates the intended use for keys that correspond to a certificate. When `null`, the `key_usage` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.privateca_certificate.config.x509_config.key_usage.new](#fn-x509configkeyusagenew) constructor.
  - `policy_ids` (`list[obj]`): Describes the X.509 certificate policy object identifiers, per https://tools.ietf.org/html/rfc5280#section-4.2.1.4. When `null`, the `policy_ids` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.privateca_certificate.config.x509_config.policy_ids.new](#fn-x509configpolicyidsnew) constructor.

**Returns**:
  - An attribute object that represents the `x509_config` sub block.


## obj config.x509_config.additional_extensions



### fn config.x509_config.additional_extensions.new

```ts
new()
```


`google.privateca_certificate.config.x509_config.additional_extensions.new` constructs a new object with attributes and blocks configured for the `additional_extensions`
Terraform sub block.



**Args**:
  - `critical` (`bool`): Indicates whether or not this extension is critical (i.e., if the client does not know how to
handle this extension, the client should consider this to be an error).
  - `value` (`string`): The value of this X.509 extension. A base64-encoded string.
  - `object_id` (`list[obj]`): Describes values that are relevant in a CA certificate. When `null`, the `object_id` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.privateca_certificate.config.x509_config.additional_extensions.object_id.new](#fn-additionalextensionsobjectidnew) constructor.

**Returns**:
  - An attribute object that represents the `additional_extensions` sub block.


## obj config.x509_config.additional_extensions.object_id



### fn config.x509_config.additional_extensions.object_id.new

```ts
new()
```


`google.privateca_certificate.config.x509_config.additional_extensions.object_id.new` constructs a new object with attributes and blocks configured for the `object_id`
Terraform sub block.



**Args**:
  - `object_id_path` (`list`): An ObjectId specifies an object identifier (OID). These provide context and describe types in ASN.1 messages.

**Returns**:
  - An attribute object that represents the `object_id` sub block.


## obj config.x509_config.ca_options



### fn config.x509_config.ca_options.new

```ts
new()
```


`google.privateca_certificate.config.x509_config.ca_options.new` constructs a new object with attributes and blocks configured for the `ca_options`
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


## obj config.x509_config.key_usage



### fn config.x509_config.key_usage.new

```ts
new()
```


`google.privateca_certificate.config.x509_config.key_usage.new` constructs a new object with attributes and blocks configured for the `key_usage`
Terraform sub block.



**Args**:
  - `base_key_usage` (`list[obj]`): Describes high-level ways in which a key may be used. When `null`, the `base_key_usage` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.privateca_certificate.config.x509_config.key_usage.base_key_usage.new](#fn-keyusagebasekeyusagenew) constructor.
  - `extended_key_usage` (`list[obj]`): Describes high-level ways in which a key may be used. When `null`, the `extended_key_usage` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.privateca_certificate.config.x509_config.key_usage.extended_key_usage.new](#fn-keyusageextendedkeyusagenew) constructor.
  - `unknown_extended_key_usages` (`list[obj]`): An ObjectId specifies an object identifier (OID). These provide context and describe types in ASN.1 messages. When `null`, the `unknown_extended_key_usages` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.privateca_certificate.config.x509_config.key_usage.unknown_extended_key_usages.new](#fn-keyusageunknownextendedkeyusagesnew) constructor.

**Returns**:
  - An attribute object that represents the `key_usage` sub block.


## obj config.x509_config.key_usage.base_key_usage



### fn config.x509_config.key_usage.base_key_usage.new

```ts
new()
```


`google.privateca_certificate.config.x509_config.key_usage.base_key_usage.new` constructs a new object with attributes and blocks configured for the `base_key_usage`
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


## obj config.x509_config.key_usage.extended_key_usage



### fn config.x509_config.key_usage.extended_key_usage.new

```ts
new()
```


`google.privateca_certificate.config.x509_config.key_usage.extended_key_usage.new` constructs a new object with attributes and blocks configured for the `extended_key_usage`
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


## obj config.x509_config.key_usage.unknown_extended_key_usages



### fn config.x509_config.key_usage.unknown_extended_key_usages.new

```ts
new()
```


`google.privateca_certificate.config.x509_config.key_usage.unknown_extended_key_usages.new` constructs a new object with attributes and blocks configured for the `unknown_extended_key_usages`
Terraform sub block.



**Args**:
  - `object_id_path` (`list`): An ObjectId specifies an object identifier (OID). These provide context and describe types in ASN.1 messages.

**Returns**:
  - An attribute object that represents the `unknown_extended_key_usages` sub block.


## obj config.x509_config.policy_ids



### fn config.x509_config.policy_ids.new

```ts
new()
```


`google.privateca_certificate.config.x509_config.policy_ids.new` constructs a new object with attributes and blocks configured for the `policy_ids`
Terraform sub block.



**Args**:
  - `object_id_path` (`list`): An ObjectId specifies an object identifier (OID). These provide context and describe types in ASN.1 messages.

**Returns**:
  - An attribute object that represents the `policy_ids` sub block.


## obj timeouts



### fn timeouts.new

```ts
new()
```


`google.privateca_certificate.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`
Terraform sub block.



**Args**:
  - `create` (`string`):  When `null`, the `create` field will be omitted from the resulting object.
  - `delete` (`string`):  When `null`, the `delete` field will be omitted from the resulting object.
  - `update` (`string`):  When `null`, the `update` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `timeouts` sub block.
