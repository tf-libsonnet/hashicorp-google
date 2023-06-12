---
permalink: /certificate_manager_certificate_issuance_config/
---

# certificate_manager_certificate_issuance_config

`certificate_manager_certificate_issuance_config` represents the `google_certificate_manager_certificate_issuance_config` Terraform resource.



This package contains functions and utilities for setting up the resource using Jsonnet code.


## Index

* [`fn new()`](#fn-new)
* [`fn newAttrs()`](#fn-newattrs)
* [`fn withCertificateAuthorityConfig()`](#fn-withcertificateauthorityconfig)
* [`fn withCertificateAuthorityConfigMixin()`](#fn-withcertificateauthorityconfigmixin)
* [`fn withDescription()`](#fn-withdescription)
* [`fn withKeyAlgorithm()`](#fn-withkeyalgorithm)
* [`fn withLabels()`](#fn-withlabels)
* [`fn withLifetime()`](#fn-withlifetime)
* [`fn withLocation()`](#fn-withlocation)
* [`fn withName()`](#fn-withname)
* [`fn withProject()`](#fn-withproject)
* [`fn withRotationWindowPercentage()`](#fn-withrotationwindowpercentage)
* [`fn withTimeouts()`](#fn-withtimeouts)
* [`fn withTimeoutsMixin()`](#fn-withtimeoutsmixin)
* [`obj certificate_authority_config`](#obj-certificate_authority_config)
  * [`fn new()`](#fn-certificate_authority_confignew)
  * [`obj certificate_authority_config.certificate_authority_service_config`](#obj-certificate_authority_configcertificate_authority_service_config)
    * [`fn new()`](#fn-certificate_authority_configcertificate_authority_service_confignew)
* [`obj timeouts`](#obj-timeouts)
  * [`fn new()`](#fn-timeoutsnew)

## Fields

### fn new

```ts
new()
```


`google.certificate_manager_certificate_issuance_config.new` injects a new `google_certificate_manager_certificate_issuance_config` Terraform `resource`
block into the root module document.

Additionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the
resource. For example, if you added a new instance to the root using:

    # arguments omitted for brevity
    google.certificate_manager_certificate_issuance_config.new('some_id')

You can get the reference to the `id` field of the created `google.certificate_manager_certificate_issuance_config` using the reference:

    $._ref.google_certificate_manager_certificate_issuance_config.some_id.get('id')

This is the same as directly entering `"${ google_certificate_manager_certificate_issuance_config.some_id.id }"` as the value.

NOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,
or `$` to refer to the root object. Instead, make an explicit outer object using `local`.

**Args**:
  - `resourceLabel` (`string`): The name label of the block.
  - `description` (`string`): One or more paragraphs of text description of a CertificateIssuanceConfig. When `null`, the `description` field will be omitted from the resulting object.
  - `key_algorithm` (`string`): Key algorithm to use when generating the private key. Possible values: [&#34;RSA_2048&#34;, &#34;ECDSA_P256&#34;]
  - `labels` (`obj`): &#39;Set of label tags associated with the CertificateIssuanceConfig resource.
 An object containing a list of &#34;key&#34;: value pairs. Example: { &#34;name&#34;: &#34;wrench&#34;, &#34;count&#34;: &#34;3&#34; }. When `null`, the `labels` field will be omitted from the resulting object.
  - `lifetime` (`string`): Lifetime of issued certificates. A duration in seconds with up to nine fractional digits, ending with &#39;s&#39;.
Example: &#34;1814400s&#34;. Valid values are from 21 days (1814400s) to 30 days (2592000s)
  - `location` (`string`): The Certificate Manager location. If not specified, &#34;global&#34; is used. When `null`, the `location` field will be omitted from the resulting object.
  - `name` (`string`): A user-defined name of the certificate issuance config.
CertificateIssuanceConfig names must be unique globally.
  - `project` (`string`): Set the `project` field on the resulting resource block. When `null`, the `project` field will be omitted from the resulting object.
  - `rotation_window_percentage` (`number`): It specifies the percentage of elapsed time of the certificate lifetime to wait before renewing the certificate.
Must be a number between 1-99, inclusive.
You must set the rotation window percentage in relation to the certificate lifetime so that certificate renewal occurs at least 7 days after
the certificate has been issued and at least 7 days before it expires.
  - `certificate_authority_config` (`list[obj]`): The CA that issues the workload certificate. It includes the CA address, type, authentication to CA service, etc. When `null`, the `certificate_authority_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.certificate_manager_certificate_issuance_config.certificate_authority_config.new](#fn-certificate_authority_confignew) constructor.
  - `timeouts` (`obj`): Set the `timeouts` field on the resulting resource block. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.certificate_manager_certificate_issuance_config.timeouts.new](#fn-timeoutsnew) constructor.

**Returns**:
- A mixin object that injects the new resource into the root Terraform configuration.


### fn newAttrs

```ts
newAttrs()
```


`google.certificate_manager_certificate_issuance_config.newAttrs` constructs a new object with attributes and blocks configured for the `certificate_manager_certificate_issuance_config`
Terraform resource.

Unlike [google.certificate_manager_certificate_issuance_config.new](#fn-new), this function will not inject the `resource`
block into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the
[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.

This is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to
injecting into a complete block.

**Args**:
  - `description` (`string`): One or more paragraphs of text description of a CertificateIssuanceConfig. When `null`, the `description` field will be omitted from the resulting object.
  - `key_algorithm` (`string`): Key algorithm to use when generating the private key. Possible values: [&#34;RSA_2048&#34;, &#34;ECDSA_P256&#34;]
  - `labels` (`obj`): &#39;Set of label tags associated with the CertificateIssuanceConfig resource.
 An object containing a list of &#34;key&#34;: value pairs. Example: { &#34;name&#34;: &#34;wrench&#34;, &#34;count&#34;: &#34;3&#34; }. When `null`, the `labels` field will be omitted from the resulting object.
  - `lifetime` (`string`): Lifetime of issued certificates. A duration in seconds with up to nine fractional digits, ending with &#39;s&#39;.
Example: &#34;1814400s&#34;. Valid values are from 21 days (1814400s) to 30 days (2592000s)
  - `location` (`string`): The Certificate Manager location. If not specified, &#34;global&#34; is used. When `null`, the `location` field will be omitted from the resulting object.
  - `name` (`string`): A user-defined name of the certificate issuance config.
CertificateIssuanceConfig names must be unique globally.
  - `project` (`string`): Set the `project` field on the resulting object. When `null`, the `project` field will be omitted from the resulting object.
  - `rotation_window_percentage` (`number`): It specifies the percentage of elapsed time of the certificate lifetime to wait before renewing the certificate.
Must be a number between 1-99, inclusive.
You must set the rotation window percentage in relation to the certificate lifetime so that certificate renewal occurs at least 7 days after
the certificate has been issued and at least 7 days before it expires.
  - `certificate_authority_config` (`list[obj]`): The CA that issues the workload certificate. It includes the CA address, type, authentication to CA service, etc. When `null`, the `certificate_authority_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.certificate_manager_certificate_issuance_config.certificate_authority_config.new](#fn-certificate_authority_confignew) constructor.
  - `timeouts` (`obj`): Set the `timeouts` field on the resulting object. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.certificate_manager_certificate_issuance_config.timeouts.new](#fn-timeoutsnew) constructor.

**Returns**:
  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `certificate_manager_certificate_issuance_config` resource into the root Terraform configuration.


### fn withCertificateAuthorityConfig

```ts
withCertificateAuthorityConfig()
```

`google.list[obj].withCertificateAuthorityConfig` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the certificate_authority_config field.

This function will replace the array with the passed in `value`. If you wish to instead append the
passed in value to the existing array, use the [google.list[obj].withCertificateAuthorityConfigMixin](TODO) function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `certificate_authority_config` field.


### fn withCertificateAuthorityConfigMixin

```ts
withCertificateAuthorityConfigMixin()
```

`google.list[obj].withCertificateAuthorityConfigMixin` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the certificate_authority_config field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google.list[obj].withCertificateAuthorityConfig](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `certificate_authority_config` field.


### fn withDescription

```ts
withDescription()
```

`google.string.withDescription` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the description field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `description` field.


### fn withKeyAlgorithm

```ts
withKeyAlgorithm()
```

`google.string.withKeyAlgorithm` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the key_algorithm field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `key_algorithm` field.


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


### fn withProject

```ts
withProject()
```

`google.string.withProject` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the project field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `project` field.


### fn withRotationWindowPercentage

```ts
withRotationWindowPercentage()
```

`google.number.withRotationWindowPercentage` constructs a mixin object that can be merged into the `number`
Terraform resource block to set or update the rotation_window_percentage field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`number`): The value to set for the `rotation_window_percentage` field.


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


## obj certificate_authority_config



### fn certificate_authority_config.new

```ts
new()
```


`google.certificate_manager_certificate_issuance_config.certificate_authority_config.new` constructs a new object with attributes and blocks configured for the `certificate_authority_config`
Terraform sub block.



**Args**:
  - `certificate_authority_service_config` (`list[obj]`): Defines a CertificateAuthorityServiceConfig. When `null`, the `certificate_authority_service_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.certificate_manager_certificate_issuance_config.certificate_authority_config.certificate_authority_service_config.new](#fn-certificate_authority_configcertificate_authority_service_confignew) constructor.

**Returns**:
  - An attribute object that represents the `certificate_authority_config` sub block.


## obj certificate_authority_config.certificate_authority_service_config



### fn certificate_authority_config.certificate_authority_service_config.new

```ts
new()
```


`google.certificate_manager_certificate_issuance_config.certificate_authority_config.certificate_authority_service_config.new` constructs a new object with attributes and blocks configured for the `certificate_authority_service_config`
Terraform sub block.



**Args**:
  - `ca_pool` (`string`): A CA pool resource used to issue a certificate.
The CA pool string has a relative resource path following the form
&#34;projects/{project}/locations/{location}/caPools/{caPool}&#34;.

**Returns**:
  - An attribute object that represents the `certificate_authority_service_config` sub block.


## obj timeouts



### fn timeouts.new

```ts
new()
```


`google.certificate_manager_certificate_issuance_config.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`
Terraform sub block.



**Args**:
  - `create` (`string`): Set the `create` field on the resulting object. When `null`, the `create` field will be omitted from the resulting object.
  - `delete` (`string`): Set the `delete` field on the resulting object. When `null`, the `delete` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `timeouts` sub block.
