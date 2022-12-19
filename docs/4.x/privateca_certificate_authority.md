---
permalink: /privateca_certificate_authority/
---

# privateca_certificate_authority

`privateca_certificate_authority` represents the `google_privateca_certificate_authority` Terraform resource.



This package contains functions and utilities for setting up the resource using Jsonnet code.


## Index

* [`fn new()`](#fn-new)
* [`fn newAttrs()`](#fn-newattrs)
* [`fn withCertificateAuthorityId()`](#fn-withcertificateauthorityid)
* [`fn withConfig()`](#fn-withconfig)
* [`fn withConfigMixin()`](#fn-withconfigmixin)
* [`fn withDeletionProtection()`](#fn-withdeletionprotection)
* [`fn withDesiredState()`](#fn-withdesiredstate)
* [`fn withGcsBucket()`](#fn-withgcsbucket)
* [`fn withIgnoreActiveCertificatesOnDeletion()`](#fn-withignoreactivecertificatesondeletion)
* [`fn withKeySpec()`](#fn-withkeyspec)
* [`fn withKeySpecMixin()`](#fn-withkeyspecmixin)
* [`fn withLabels()`](#fn-withlabels)
* [`fn withLifetime()`](#fn-withlifetime)
* [`fn withLocation()`](#fn-withlocation)
* [`fn withPemCaCertificate()`](#fn-withpemcacertificate)
* [`fn withPool()`](#fn-withpool)
* [`fn withProject()`](#fn-withproject)
* [`fn withSkipGracePeriod()`](#fn-withskipgraceperiod)
* [`fn withSubordinateConfig()`](#fn-withsubordinateconfig)
* [`fn withSubordinateConfigMixin()`](#fn-withsubordinateconfigmixin)
* [`fn withTimeouts()`](#fn-withtimeouts)
* [`fn withTimeoutsMixin()`](#fn-withtimeoutsmixin)
* [`fn withType()`](#fn-withtype)
* [`obj config`](#obj-config)
  * [`fn new()`](#fn-confignew)
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
* [`obj key_spec`](#obj-key_spec)
  * [`fn new()`](#fn-key_specnew)
* [`obj subordinate_config`](#obj-subordinate_config)
  * [`fn new()`](#fn-subordinate_confignew)
  * [`obj subordinate_config.pem_issuer_chain`](#obj-subordinate_configpem_issuer_chain)
    * [`fn new()`](#fn-subordinate_configpem_issuer_chainnew)
* [`obj timeouts`](#obj-timeouts)
  * [`fn new()`](#fn-timeoutsnew)

## Fields

### fn new

```ts
new()
```


`google.privateca_certificate_authority.new` injects a new `google_privateca_certificate_authority` Terraform `resource`
block into the root module document.

Additionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the
resource. For example, if you added a new instance to the root using:

    # arguments omitted for brevity
    google.privateca_certificate_authority.new('some_id')

You can get the reference to the `id` field of the created `google.privateca_certificate_authority` using the reference:

    $._ref.google_privateca_certificate_authority.some_id.get('id')

This is the same as directly entering `"${ google_privateca_certificate_authority.some_id.id }"` as the value.

NOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,
or `$` to refer to the root object. Instead, make an explicit outer object using `local`.

**Args**:
  - `resourceLabel` (`string`): The name label of the block.
  - `certificate_authority_id` (`string`): The user provided Resource ID for this Certificate Authority.
  - `deletion_protection` (`bool`): Whether or not to allow Terraform to destroy the CertificateAuthority. Unless this field is set to false
in Terraform state, a &#39;terraform destroy&#39; or &#39;terraform apply&#39; that would delete the instance will fail. When `null`, the `deletion_protection` field will be omitted from the resulting object.
  - `desired_state` (`string`): Desired state of the CertificateAuthority. Set this field to &#39;STAGED&#39; to create a &#39;STAGED&#39; root CA. When `null`, the `desired_state` field will be omitted from the resulting object.
  - `gcs_bucket` (`string`): The name of a Cloud Storage bucket where this CertificateAuthority will publish content,
such as the CA certificate and CRLs. This must be a bucket name, without any prefixes
(such as &#39;gs://&#39;) or suffixes (such as &#39;.googleapis.com&#39;). For example, to use a bucket named
my-bucket, you would simply specify &#39;my-bucket&#39;. If not specified, a managed bucket will be
created. When `null`, the `gcs_bucket` field will be omitted from the resulting object.
  - `ignore_active_certificates_on_deletion` (`bool`): This field allows the CA to be deleted even if the CA has active certs. Active certs include both unrevoked and unexpired certs.
Use with care. Defaults to &#39;false&#39;. When `null`, the `ignore_active_certificates_on_deletion` field will be omitted from the resulting object.
  - `labels` (`obj`): Labels with user-defined metadata.

An object containing a list of &#34;key&#34;: value pairs. Example: { &#34;name&#34;: &#34;wrench&#34;, &#34;mass&#34;:
&#34;1.3kg&#34;, &#34;count&#34;: &#34;3&#34; }. When `null`, the `labels` field will be omitted from the resulting object.
  - `lifetime` (`string`): The desired lifetime of the CA certificate. Used to create the &#34;notBeforeTime&#34; and
&#34;notAfterTime&#34; fields inside an X.509 certificate. A duration in seconds with up to nine
fractional digits, terminated by &#39;s&#39;. Example: &#34;3.5s&#34;. When `null`, the `lifetime` field will be omitted from the resulting object.
  - `location` (`string`): Location of the CertificateAuthority. A full list of valid locations can be found by
running &#39;gcloud privateca locations list&#39;.
  - `pem_ca_certificate` (`string`): The signed CA certificate issued from the subordinated CA&#39;s CSR. This is needed when activating the subordiante CA with a third party issuer. When `null`, the `pem_ca_certificate` field will be omitted from the resulting object.
  - `pool` (`string`): The name of the CaPool this Certificate Authority belongs to.
  - `project` (`string`):  When `null`, the `project` field will be omitted from the resulting object.
  - `skip_grace_period` (`bool`): If this flag is set, the Certificate Authority will be deleted as soon as
possible without a 30-day grace period where undeletion would have been
allowed. If you proceed, there will be no way to recover this CA.
Use with care. Defaults to &#39;false&#39;. When `null`, the `skip_grace_period` field will be omitted from the resulting object.
  - `type` (`string`): The Type of this CertificateAuthority.

~&gt; **Note:** For &#39;SUBORDINATE&#39; Certificate Authorities, they need to
be activated before they can issue certificates. Default value: &#34;SELF_SIGNED&#34; Possible values: [&#34;SELF_SIGNED&#34;, &#34;SUBORDINATE&#34;] When `null`, the `type` field will be omitted from the resulting object.
  - `config` (`list[obj]`): The config used to create a self-signed X.509 certificate or CSR. When `null`, the `config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.privateca_certificate_authority.config.new](#fn-privatecacertificateauthorityconfignew) constructor.
  - `key_spec` (`list[obj]`): Used when issuing certificates for this CertificateAuthority. If this CertificateAuthority
is a self-signed CertificateAuthority, this key is also used to sign the self-signed CA
certificate. Otherwise, it is used to sign a CSR. When `null`, the `key_spec` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.privateca_certificate_authority.key_spec.new](#fn-privatecacertificateauthoritykeyspecnew) constructor.
  - `subordinate_config` (`list[obj]`): If this is a subordinate CertificateAuthority, this field will be set
with the subordinate configuration, which describes its issuers. When `null`, the `subordinate_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.privateca_certificate_authority.subordinate_config.new](#fn-privatecacertificateauthoritysubordinateconfignew) constructor.
  - `timeouts` (`obj`):  When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.privateca_certificate_authority.timeouts.new](#fn-privatecacertificateauthoritytimeoutsnew) constructor.

**Returns**:
- A mixin object that injects the new resource into the root Terraform configuration.


### fn newAttrs

```ts
newAttrs()
```


`google.privateca_certificate_authority.newAttrs` constructs a new object with attributes and blocks configured for the `privateca_certificate_authority`
Terraform resource.

Unlike [google.privateca_certificate_authority.new](#fn-privatecacertificateauthoritynew), this function will not inject the `resource`
block into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the
[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.

This is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to
injecting into a complete block.

**Args**:
  - `certificate_authority_id` (`string`): The user provided Resource ID for this Certificate Authority.
  - `deletion_protection` (`bool`): Whether or not to allow Terraform to destroy the CertificateAuthority. Unless this field is set to false
in Terraform state, a &#39;terraform destroy&#39; or &#39;terraform apply&#39; that would delete the instance will fail. When `null`, the `deletion_protection` field will be omitted from the resulting object.
  - `desired_state` (`string`): Desired state of the CertificateAuthority. Set this field to &#39;STAGED&#39; to create a &#39;STAGED&#39; root CA. When `null`, the `desired_state` field will be omitted from the resulting object.
  - `gcs_bucket` (`string`): The name of a Cloud Storage bucket where this CertificateAuthority will publish content,
such as the CA certificate and CRLs. This must be a bucket name, without any prefixes
(such as &#39;gs://&#39;) or suffixes (such as &#39;.googleapis.com&#39;). For example, to use a bucket named
my-bucket, you would simply specify &#39;my-bucket&#39;. If not specified, a managed bucket will be
created. When `null`, the `gcs_bucket` field will be omitted from the resulting object.
  - `ignore_active_certificates_on_deletion` (`bool`): This field allows the CA to be deleted even if the CA has active certs. Active certs include both unrevoked and unexpired certs.
Use with care. Defaults to &#39;false&#39;. When `null`, the `ignore_active_certificates_on_deletion` field will be omitted from the resulting object.
  - `labels` (`obj`): Labels with user-defined metadata.

An object containing a list of &#34;key&#34;: value pairs. Example: { &#34;name&#34;: &#34;wrench&#34;, &#34;mass&#34;:
&#34;1.3kg&#34;, &#34;count&#34;: &#34;3&#34; }. When `null`, the `labels` field will be omitted from the resulting object.
  - `lifetime` (`string`): The desired lifetime of the CA certificate. Used to create the &#34;notBeforeTime&#34; and
&#34;notAfterTime&#34; fields inside an X.509 certificate. A duration in seconds with up to nine
fractional digits, terminated by &#39;s&#39;. Example: &#34;3.5s&#34;. When `null`, the `lifetime` field will be omitted from the resulting object.
  - `location` (`string`): Location of the CertificateAuthority. A full list of valid locations can be found by
running &#39;gcloud privateca locations list&#39;.
  - `pem_ca_certificate` (`string`): The signed CA certificate issued from the subordinated CA&#39;s CSR. This is needed when activating the subordiante CA with a third party issuer. When `null`, the `pem_ca_certificate` field will be omitted from the resulting object.
  - `pool` (`string`): The name of the CaPool this Certificate Authority belongs to.
  - `project` (`string`):  When `null`, the `project` field will be omitted from the resulting object.
  - `skip_grace_period` (`bool`): If this flag is set, the Certificate Authority will be deleted as soon as
possible without a 30-day grace period where undeletion would have been
allowed. If you proceed, there will be no way to recover this CA.
Use with care. Defaults to &#39;false&#39;. When `null`, the `skip_grace_period` field will be omitted from the resulting object.
  - `type` (`string`): The Type of this CertificateAuthority.

~&gt; **Note:** For &#39;SUBORDINATE&#39; Certificate Authorities, they need to
be activated before they can issue certificates. Default value: &#34;SELF_SIGNED&#34; Possible values: [&#34;SELF_SIGNED&#34;, &#34;SUBORDINATE&#34;] When `null`, the `type` field will be omitted from the resulting object.
  - `config` (`list[obj]`): The config used to create a self-signed X.509 certificate or CSR. When `null`, the `config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.privateca_certificate_authority.config.new](#fn-privatecacertificateauthorityconfignew) constructor.
  - `key_spec` (`list[obj]`): Used when issuing certificates for this CertificateAuthority. If this CertificateAuthority
is a self-signed CertificateAuthority, this key is also used to sign the self-signed CA
certificate. Otherwise, it is used to sign a CSR. When `null`, the `key_spec` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.privateca_certificate_authority.key_spec.new](#fn-privatecacertificateauthoritykeyspecnew) constructor.
  - `subordinate_config` (`list[obj]`): If this is a subordinate CertificateAuthority, this field will be set
with the subordinate configuration, which describes its issuers. When `null`, the `subordinate_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.privateca_certificate_authority.subordinate_config.new](#fn-privatecacertificateauthoritysubordinateconfignew) constructor.
  - `timeouts` (`obj`):  When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.privateca_certificate_authority.timeouts.new](#fn-privatecacertificateauthoritytimeoutsnew) constructor.

**Returns**:
  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `privateca_certificate_authority` resource into the root Terraform configuration.


### fn withCertificateAuthorityId

```ts
withCertificateAuthorityId()
```

`google.privateca_certificate_authority.withCertificateAuthorityId` constructs a mixin object that can be merged into the `privateca_certificate_authority`
Terraform resource block to set or update the certificate_authority_id field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`TODO`): The value to set for the `certificate_authority_id` field.


### fn withConfig

```ts
withConfig()
```

`google.privateca_certificate_authority.withConfig` constructs a mixin object that can be merged into the `privateca_certificate_authority`
Terraform resource block to set or update the config field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`TODO`): The value to set for the `config` field.


### fn withConfigMixin

```ts
withConfigMixin()
```

`google.privateca_certificate_authority.withConfigMixin` constructs a mixin object that can be merged into the `privateca_certificate_authority`
Terraform resource block to set or update the config field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google.privateca_certificate_authority.withConfig](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`TODO`): The value to set for the `config` field.


### fn withDeletionProtection

```ts
withDeletionProtection()
```

`google.privateca_certificate_authority.withDeletionProtection` constructs a mixin object that can be merged into the `privateca_certificate_authority`
Terraform resource block to set or update the deletion_protection field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`TODO`): The value to set for the `deletion_protection` field.


### fn withDesiredState

```ts
withDesiredState()
```

`google.privateca_certificate_authority.withDesiredState` constructs a mixin object that can be merged into the `privateca_certificate_authority`
Terraform resource block to set or update the desired_state field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`TODO`): The value to set for the `desired_state` field.


### fn withGcsBucket

```ts
withGcsBucket()
```

`google.privateca_certificate_authority.withGcsBucket` constructs a mixin object that can be merged into the `privateca_certificate_authority`
Terraform resource block to set or update the gcs_bucket field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`TODO`): The value to set for the `gcs_bucket` field.


### fn withIgnoreActiveCertificatesOnDeletion

```ts
withIgnoreActiveCertificatesOnDeletion()
```

`google.privateca_certificate_authority.withIgnoreActiveCertificatesOnDeletion` constructs a mixin object that can be merged into the `privateca_certificate_authority`
Terraform resource block to set or update the ignore_active_certificates_on_deletion field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`TODO`): The value to set for the `ignore_active_certificates_on_deletion` field.


### fn withKeySpec

```ts
withKeySpec()
```

`google.privateca_certificate_authority.withKeySpec` constructs a mixin object that can be merged into the `privateca_certificate_authority`
Terraform resource block to set or update the key_spec field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`TODO`): The value to set for the `key_spec` field.


### fn withKeySpecMixin

```ts
withKeySpecMixin()
```

`google.privateca_certificate_authority.withKeySpecMixin` constructs a mixin object that can be merged into the `privateca_certificate_authority`
Terraform resource block to set or update the key_spec field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google.privateca_certificate_authority.withKeySpec](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`TODO`): The value to set for the `key_spec` field.


### fn withLabels

```ts
withLabels()
```

`google.privateca_certificate_authority.withLabels` constructs a mixin object that can be merged into the `privateca_certificate_authority`
Terraform resource block to set or update the labels field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`TODO`): The value to set for the `labels` field.


### fn withLifetime

```ts
withLifetime()
```

`google.privateca_certificate_authority.withLifetime` constructs a mixin object that can be merged into the `privateca_certificate_authority`
Terraform resource block to set or update the lifetime field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`TODO`): The value to set for the `lifetime` field.


### fn withLocation

```ts
withLocation()
```

`google.privateca_certificate_authority.withLocation` constructs a mixin object that can be merged into the `privateca_certificate_authority`
Terraform resource block to set or update the location field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`TODO`): The value to set for the `location` field.


### fn withPemCaCertificate

```ts
withPemCaCertificate()
```

`google.privateca_certificate_authority.withPemCaCertificate` constructs a mixin object that can be merged into the `privateca_certificate_authority`
Terraform resource block to set or update the pem_ca_certificate field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`TODO`): The value to set for the `pem_ca_certificate` field.


### fn withPool

```ts
withPool()
```

`google.privateca_certificate_authority.withPool` constructs a mixin object that can be merged into the `privateca_certificate_authority`
Terraform resource block to set or update the pool field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`TODO`): The value to set for the `pool` field.


### fn withProject

```ts
withProject()
```

`google.privateca_certificate_authority.withProject` constructs a mixin object that can be merged into the `privateca_certificate_authority`
Terraform resource block to set or update the project field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`TODO`): The value to set for the `project` field.


### fn withSkipGracePeriod

```ts
withSkipGracePeriod()
```

`google.privateca_certificate_authority.withSkipGracePeriod` constructs a mixin object that can be merged into the `privateca_certificate_authority`
Terraform resource block to set or update the skip_grace_period field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`TODO`): The value to set for the `skip_grace_period` field.


### fn withSubordinateConfig

```ts
withSubordinateConfig()
```

`google.privateca_certificate_authority.withSubordinateConfig` constructs a mixin object that can be merged into the `privateca_certificate_authority`
Terraform resource block to set or update the subordinate_config field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`TODO`): The value to set for the `subordinate_config` field.


### fn withSubordinateConfigMixin

```ts
withSubordinateConfigMixin()
```

`google.privateca_certificate_authority.withSubordinateConfigMixin` constructs a mixin object that can be merged into the `privateca_certificate_authority`
Terraform resource block to set or update the subordinate_config field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google.privateca_certificate_authority.withSubordinateConfig](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`TODO`): The value to set for the `subordinate_config` field.


### fn withTimeouts

```ts
withTimeouts()
```

`google.privateca_certificate_authority.withTimeouts` constructs a mixin object that can be merged into the `privateca_certificate_authority`
Terraform resource block to set or update the timeouts field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`TODO`): The value to set for the `timeouts` field.


### fn withTimeoutsMixin

```ts
withTimeoutsMixin()
```

`google.privateca_certificate_authority.withTimeoutsMixin` constructs a mixin object that can be merged into the `privateca_certificate_authority`
Terraform resource block to set or update the timeouts field.

This function will merge the passed in value to the existing map. If you wish
to instead replace the entire map with the passed in `value`, use the [google.privateca_certificate_authority.withTimeouts](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`TODO`): The value to set for the `timeouts` field.


### fn withType

```ts
withType()
```

`google.privateca_certificate_authority.withType` constructs a mixin object that can be merged into the `privateca_certificate_authority`
Terraform resource block to set or update the type field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`TODO`): The value to set for the `type` field.


## obj config



### fn config.new

```ts
new()
```


`google.privateca_certificate_authority.config.new` constructs a new object with attributes and blocks configured for the `config`
Terraform sub block.



**Args**:
  - `subject_config` (`list[obj]`): Specifies some of the values in a certificate that are related to the subject. When `null`, the `subject_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.privateca_certificate_authority.config.subject_config.new](#fn-configsubjectconfignew) constructor.
  - `x509_config` (`list[obj]`): Describes how some of the technical X.509 fields in a certificate should be populated. When `null`, the `x509_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.privateca_certificate_authority.config.x509_config.new](#fn-configx509confignew) constructor.

**Returns**:
  - An attribute object that represents the `config` sub block.


## obj config.subject_config



### fn config.subject_config.new

```ts
new()
```


`google.privateca_certificate_authority.config.subject_config.new` constructs a new object with attributes and blocks configured for the `subject_config`
Terraform sub block.



**Args**:
  - `subject` (`list[obj]`): Contains distinguished name fields such as the location and organization. When `null`, the `subject` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.privateca_certificate_authority.config.subject_config.subject.new](#fn-subjectconfigsubjectnew) constructor.
  - `subject_alt_name` (`list[obj]`): The subject alternative name fields. When `null`, the `subject_alt_name` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.privateca_certificate_authority.config.subject_config.subject_alt_name.new](#fn-subjectconfigsubjectaltnamenew) constructor.

**Returns**:
  - An attribute object that represents the `subject_config` sub block.


## obj config.subject_config.subject



### fn config.subject_config.subject.new

```ts
new()
```


`google.privateca_certificate_authority.config.subject_config.subject.new` constructs a new object with attributes and blocks configured for the `subject`
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


`google.privateca_certificate_authority.config.subject_config.subject_alt_name.new` constructs a new object with attributes and blocks configured for the `subject_alt_name`
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


`google.privateca_certificate_authority.config.x509_config.new` constructs a new object with attributes and blocks configured for the `x509_config`
Terraform sub block.



**Args**:
  - `aia_ocsp_servers` (`list`): Describes Online Certificate Status Protocol (OCSP) endpoint addresses that appear in the
&#34;Authority Information Access&#34; extension in the certificate. When `null`, the `aia_ocsp_servers` field will be omitted from the resulting object.
  - `additional_extensions` (`list[obj]`): Specifies an X.509 extension, which may be used in different parts of X.509 objects like certificates, CSRs, and CRLs. When `null`, the `additional_extensions` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.privateca_certificate_authority.config.x509_config.additional_extensions.new](#fn-x509configadditionalextensionsnew) constructor.
  - `ca_options` (`list[obj]`): Describes values that are relevant in a CA certificate. When `null`, the `ca_options` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.privateca_certificate_authority.config.x509_config.ca_options.new](#fn-x509configcaoptionsnew) constructor.
  - `key_usage` (`list[obj]`): Indicates the intended use for keys that correspond to a certificate. When `null`, the `key_usage` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.privateca_certificate_authority.config.x509_config.key_usage.new](#fn-x509configkeyusagenew) constructor.
  - `policy_ids` (`list[obj]`): Describes the X.509 certificate policy object identifiers, per https://tools.ietf.org/html/rfc5280#section-4.2.1.4. When `null`, the `policy_ids` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.privateca_certificate_authority.config.x509_config.policy_ids.new](#fn-x509configpolicyidsnew) constructor.

**Returns**:
  - An attribute object that represents the `x509_config` sub block.


## obj config.x509_config.additional_extensions



### fn config.x509_config.additional_extensions.new

```ts
new()
```


`google.privateca_certificate_authority.config.x509_config.additional_extensions.new` constructs a new object with attributes and blocks configured for the `additional_extensions`
Terraform sub block.



**Args**:
  - `critical` (`bool`): Indicates whether or not this extension is critical (i.e., if the client does not know how to
handle this extension, the client should consider this to be an error).
  - `value` (`string`): The value of this X.509 extension. A base64-encoded string.
  - `object_id` (`list[obj]`): Describes values that are relevant in a CA certificate. When `null`, the `object_id` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.privateca_certificate_authority.config.x509_config.additional_extensions.object_id.new](#fn-additionalextensionsobjectidnew) constructor.

**Returns**:
  - An attribute object that represents the `additional_extensions` sub block.


## obj config.x509_config.additional_extensions.object_id



### fn config.x509_config.additional_extensions.object_id.new

```ts
new()
```


`google.privateca_certificate_authority.config.x509_config.additional_extensions.object_id.new` constructs a new object with attributes and blocks configured for the `object_id`
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


`google.privateca_certificate_authority.config.x509_config.ca_options.new` constructs a new object with attributes and blocks configured for the `ca_options`
Terraform sub block.



**Args**:
  - `is_ca` (`bool`): When true, the &#34;CA&#34; in Basic Constraints extension will be set to true.
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


`google.privateca_certificate_authority.config.x509_config.key_usage.new` constructs a new object with attributes and blocks configured for the `key_usage`
Terraform sub block.



**Args**:
  - `base_key_usage` (`list[obj]`): Describes high-level ways in which a key may be used. When `null`, the `base_key_usage` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.privateca_certificate_authority.config.x509_config.key_usage.base_key_usage.new](#fn-keyusagebasekeyusagenew) constructor.
  - `extended_key_usage` (`list[obj]`): Describes high-level ways in which a key may be used. When `null`, the `extended_key_usage` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.privateca_certificate_authority.config.x509_config.key_usage.extended_key_usage.new](#fn-keyusageextendedkeyusagenew) constructor.
  - `unknown_extended_key_usages` (`list[obj]`): An ObjectId specifies an object identifier (OID). These provide context and describe types in ASN.1 messages. When `null`, the `unknown_extended_key_usages` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.privateca_certificate_authority.config.x509_config.key_usage.unknown_extended_key_usages.new](#fn-keyusageunknownextendedkeyusagesnew) constructor.

**Returns**:
  - An attribute object that represents the `key_usage` sub block.


## obj config.x509_config.key_usage.base_key_usage



### fn config.x509_config.key_usage.base_key_usage.new

```ts
new()
```


`google.privateca_certificate_authority.config.x509_config.key_usage.base_key_usage.new` constructs a new object with attributes and blocks configured for the `base_key_usage`
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


`google.privateca_certificate_authority.config.x509_config.key_usage.extended_key_usage.new` constructs a new object with attributes and blocks configured for the `extended_key_usage`
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


`google.privateca_certificate_authority.config.x509_config.key_usage.unknown_extended_key_usages.new` constructs a new object with attributes and blocks configured for the `unknown_extended_key_usages`
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


`google.privateca_certificate_authority.config.x509_config.policy_ids.new` constructs a new object with attributes and blocks configured for the `policy_ids`
Terraform sub block.



**Args**:
  - `object_id_path` (`list`): An ObjectId specifies an object identifier (OID). These provide context and describe types in ASN.1 messages.

**Returns**:
  - An attribute object that represents the `policy_ids` sub block.


## obj key_spec



### fn key_spec.new

```ts
new()
```


`google.privateca_certificate_authority.key_spec.new` constructs a new object with attributes and blocks configured for the `key_spec`
Terraform sub block.



**Args**:
  - `algorithm` (`string`): The algorithm to use for creating a managed Cloud KMS key for a for a simplified
experience. All managed keys will be have their ProtectionLevel as HSM. Possible values: [&#34;SIGN_HASH_ALGORITHM_UNSPECIFIED&#34;, &#34;RSA_PSS_2048_SHA256&#34;, &#34;RSA_PSS_3072_SHA256&#34;, &#34;RSA_PSS_4096_SHA256&#34;, &#34;RSA_PKCS1_2048_SHA256&#34;, &#34;RSA_PKCS1_3072_SHA256&#34;, &#34;RSA_PKCS1_4096_SHA256&#34;, &#34;EC_P256_SHA256&#34;, &#34;EC_P384_SHA384&#34;] When `null`, the `algorithm` field will be omitted from the resulting object.
  - `cloud_kms_key_version` (`string`): The resource name for an existing Cloud KMS CryptoKeyVersion in the format
&#39;projects/*/locations/*/keyRings/*/cryptoKeys/*/cryptoKeyVersions/*&#39;. When `null`, the `cloud_kms_key_version` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `key_spec` sub block.


## obj subordinate_config



### fn subordinate_config.new

```ts
new()
```


`google.privateca_certificate_authority.subordinate_config.new` constructs a new object with attributes and blocks configured for the `subordinate_config`
Terraform sub block.



**Args**:
  - `certificate_authority` (`string`): This can refer to a CertificateAuthority that was used to create a
subordinate CertificateAuthority. This field is used for information
and usability purposes only. The resource name is in the format
&#39;projects/*/locations/*/caPools/*/certificateAuthorities/*&#39;. When `null`, the `certificate_authority` field will be omitted from the resulting object.
  - `pem_issuer_chain` (`list[obj]`): Contains the PEM certificate chain for the issuers of this CertificateAuthority, 
but not pem certificate for this CA itself. When `null`, the `pem_issuer_chain` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.privateca_certificate_authority.subordinate_config.pem_issuer_chain.new](#fn-subordinateconfigpemissuerchainnew) constructor.

**Returns**:
  - An attribute object that represents the `subordinate_config` sub block.


## obj subordinate_config.pem_issuer_chain



### fn subordinate_config.pem_issuer_chain.new

```ts
new()
```


`google.privateca_certificate_authority.subordinate_config.pem_issuer_chain.new` constructs a new object with attributes and blocks configured for the `pem_issuer_chain`
Terraform sub block.



**Args**:
  - `pem_certificates` (`list`): Expected to be in leaf-to-root order according to RFC 5246. When `null`, the `pem_certificates` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `pem_issuer_chain` sub block.


## obj timeouts



### fn timeouts.new

```ts
new()
```


`google.privateca_certificate_authority.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`
Terraform sub block.



**Args**:
  - `create` (`string`):  When `null`, the `create` field will be omitted from the resulting object.
  - `delete` (`string`):  When `null`, the `delete` field will be omitted from the resulting object.
  - `update` (`string`):  When `null`, the `update` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `timeouts` sub block.
