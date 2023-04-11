---
permalink: /apigee_keystores_aliases_self_signed_cert/
---

# apigee_keystores_aliases_self_signed_cert

`apigee_keystores_aliases_self_signed_cert` represents the `google_apigee_keystores_aliases_self_signed_cert` Terraform resource.



This package contains functions and utilities for setting up the resource using Jsonnet code.


## Index

* [`fn new()`](#fn-new)
* [`fn newAttrs()`](#fn-newattrs)
* [`fn withAlias()`](#fn-withalias)
* [`fn withCertValidityInDays()`](#fn-withcertvalidityindays)
* [`fn withEnvironment()`](#fn-withenvironment)
* [`fn withKeySize()`](#fn-withkeysize)
* [`fn withKeystore()`](#fn-withkeystore)
* [`fn withOrgId()`](#fn-withorgid)
* [`fn withSigAlg()`](#fn-withsigalg)
* [`fn withSubject()`](#fn-withsubject)
* [`fn withSubjectAlternativeDnsNames()`](#fn-withsubjectalternativednsnames)
* [`fn withSubjectAlternativeDnsNamesMixin()`](#fn-withsubjectalternativednsnamesmixin)
* [`fn withSubjectMixin()`](#fn-withsubjectmixin)
* [`fn withTimeouts()`](#fn-withtimeouts)
* [`fn withTimeoutsMixin()`](#fn-withtimeoutsmixin)
* [`obj subject`](#obj-subject)
  * [`fn new()`](#fn-subjectnew)
* [`obj subject_alternative_dns_names`](#obj-subject_alternative_dns_names)
  * [`fn new()`](#fn-subject_alternative_dns_namesnew)
* [`obj timeouts`](#obj-timeouts)
  * [`fn new()`](#fn-timeoutsnew)

## Fields

### fn new

```ts
new()
```


`google.apigee_keystores_aliases_self_signed_cert.new` injects a new `google_apigee_keystores_aliases_self_signed_cert` Terraform `resource`
block into the root module document.

Additionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the
resource. For example, if you added a new instance to the root using:

    # arguments omitted for brevity
    google.apigee_keystores_aliases_self_signed_cert.new('some_id')

You can get the reference to the `id` field of the created `google.apigee_keystores_aliases_self_signed_cert` using the reference:

    $._ref.google_apigee_keystores_aliases_self_signed_cert.some_id.get('id')

This is the same as directly entering `"${ google_apigee_keystores_aliases_self_signed_cert.some_id.id }"` as the value.

NOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,
or `$` to refer to the root object. Instead, make an explicit outer object using `local`.

**Args**:
  - `resourceLabel` (`string`): The name label of the block.
  - `alias` (`string`): Alias for the key/certificate pair. Values must match the regular expression [\w\s-.]{1,255}. 
This must be provided for all formats except selfsignedcert; self-signed certs may specify the alias in either 
this parameter or the JSON body.
  - `cert_validity_in_days` (`number`): Validity duration of certificate, in days. Accepts positive non-zero value. Defaults to 365. When `null`, the `cert_validity_in_days` field will be omitted from the resulting object.
  - `environment` (`string`): The Apigee environment name
  - `key_size` (`string`): Key size. Default and maximum value is 2048 bits. When `null`, the `key_size` field will be omitted from the resulting object.
  - `keystore` (`string`): The Apigee keystore name associated in an Apigee environment
  - `org_id` (`string`): The Apigee Organization name associated with the Apigee environment
  - `sig_alg` (`string`): Signature algorithm to generate private key. Valid values are SHA512withRSA, SHA384withRSA, and SHA256withRSA
  - `subject` (`list[obj]`): Subject details. When `null`, the `subject` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.apigee_keystores_aliases_self_signed_cert.subject.new](#fn-subjectnew) constructor.
  - `subject_alternative_dns_names` (`list[obj]`): List of alternative host names. Maximum length is 255 characters for each value. When `null`, the `subject_alternative_dns_names` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.apigee_keystores_aliases_self_signed_cert.subject_alternative_dns_names.new](#fn-subject_alternative_dns_namesnew) constructor.
  - `timeouts` (`obj`): Set the `timeouts` field on the resulting resource block. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.apigee_keystores_aliases_self_signed_cert.timeouts.new](#fn-timeoutsnew) constructor.

**Returns**:
- A mixin object that injects the new resource into the root Terraform configuration.


### fn newAttrs

```ts
newAttrs()
```


`google.apigee_keystores_aliases_self_signed_cert.newAttrs` constructs a new object with attributes and blocks configured for the `apigee_keystores_aliases_self_signed_cert`
Terraform resource.

Unlike [google.apigee_keystores_aliases_self_signed_cert.new](#fn-new), this function will not inject the `resource`
block into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the
[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.

This is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to
injecting into a complete block.

**Args**:
  - `alias` (`string`): Alias for the key/certificate pair. Values must match the regular expression [\w\s-.]{1,255}. 
This must be provided for all formats except selfsignedcert; self-signed certs may specify the alias in either 
this parameter or the JSON body.
  - `cert_validity_in_days` (`number`): Validity duration of certificate, in days. Accepts positive non-zero value. Defaults to 365. When `null`, the `cert_validity_in_days` field will be omitted from the resulting object.
  - `environment` (`string`): The Apigee environment name
  - `key_size` (`string`): Key size. Default and maximum value is 2048 bits. When `null`, the `key_size` field will be omitted from the resulting object.
  - `keystore` (`string`): The Apigee keystore name associated in an Apigee environment
  - `org_id` (`string`): The Apigee Organization name associated with the Apigee environment
  - `sig_alg` (`string`): Signature algorithm to generate private key. Valid values are SHA512withRSA, SHA384withRSA, and SHA256withRSA
  - `subject` (`list[obj]`): Subject details. When `null`, the `subject` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.apigee_keystores_aliases_self_signed_cert.subject.new](#fn-subjectnew) constructor.
  - `subject_alternative_dns_names` (`list[obj]`): List of alternative host names. Maximum length is 255 characters for each value. When `null`, the `subject_alternative_dns_names` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.apigee_keystores_aliases_self_signed_cert.subject_alternative_dns_names.new](#fn-subject_alternative_dns_namesnew) constructor.
  - `timeouts` (`obj`): Set the `timeouts` field on the resulting object. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.apigee_keystores_aliases_self_signed_cert.timeouts.new](#fn-timeoutsnew) constructor.

**Returns**:
  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `apigee_keystores_aliases_self_signed_cert` resource into the root Terraform configuration.


### fn withAlias

```ts
withAlias()
```

`google.string.withAlias` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the alias field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `alias` field.


### fn withCertValidityInDays

```ts
withCertValidityInDays()
```

`google.number.withCertValidityInDays` constructs a mixin object that can be merged into the `number`
Terraform resource block to set or update the cert_validity_in_days field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`number`): The value to set for the `cert_validity_in_days` field.


### fn withEnvironment

```ts
withEnvironment()
```

`google.string.withEnvironment` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the environment field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `environment` field.


### fn withKeySize

```ts
withKeySize()
```

`google.string.withKeySize` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the key_size field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `key_size` field.


### fn withKeystore

```ts
withKeystore()
```

`google.string.withKeystore` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the keystore field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `keystore` field.


### fn withOrgId

```ts
withOrgId()
```

`google.string.withOrgId` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the org_id field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `org_id` field.


### fn withSigAlg

```ts
withSigAlg()
```

`google.string.withSigAlg` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the sig_alg field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `sig_alg` field.


### fn withSubject

```ts
withSubject()
```

`google.list[obj].withSubject` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the subject field.

This function will replace the array with the passed in `value`. If you wish to instead append the
passed in value to the existing array, use the [google.list[obj].withSubjectMixin](TODO) function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `subject` field.


### fn withSubjectAlternativeDnsNames

```ts
withSubjectAlternativeDnsNames()
```

`google.list[obj].withSubjectAlternativeDnsNames` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the subject_alternative_dns_names field.

This function will replace the array with the passed in `value`. If you wish to instead append the
passed in value to the existing array, use the [google.list[obj].withSubjectAlternativeDnsNamesMixin](TODO) function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `subject_alternative_dns_names` field.


### fn withSubjectAlternativeDnsNamesMixin

```ts
withSubjectAlternativeDnsNamesMixin()
```

`google.list[obj].withSubjectAlternativeDnsNamesMixin` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the subject_alternative_dns_names field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google.list[obj].withSubjectAlternativeDnsNames](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `subject_alternative_dns_names` field.


### fn withSubjectMixin

```ts
withSubjectMixin()
```

`google.list[obj].withSubjectMixin` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the subject field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google.list[obj].withSubject](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `subject` field.


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


## obj subject



### fn subject.new

```ts
new()
```


`google.apigee_keystores_aliases_self_signed_cert.subject.new` constructs a new object with attributes and blocks configured for the `subject`
Terraform sub block.



**Args**:
  - `common_name` (`string`): Common name of the organization. Maximum length is 64 characters. When `null`, the `common_name` field will be omitted from the resulting object.
  - `country_code` (`string`): Two-letter country code. Example, IN for India, US for United States of America. When `null`, the `country_code` field will be omitted from the resulting object.
  - `email` (`string`): Email address. Max 255 characters. When `null`, the `email` field will be omitted from the resulting object.
  - `locality` (`string`): City or town name. Maximum length is 128 characters. When `null`, the `locality` field will be omitted from the resulting object.
  - `org` (`string`): Organization name. Maximum length is 64 characters. When `null`, the `org` field will be omitted from the resulting object.
  - `org_unit` (`string`): Organization team name. Maximum length is 64 characters. When `null`, the `org_unit` field will be omitted from the resulting object.
  - `state` (`string`): State or district name. Maximum length is 128 characters. When `null`, the `state` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `subject` sub block.


## obj subject_alternative_dns_names



### fn subject_alternative_dns_names.new

```ts
new()
```


`google.apigee_keystores_aliases_self_signed_cert.subject_alternative_dns_names.new` constructs a new object with attributes and blocks configured for the `subject_alternative_dns_names`
Terraform sub block.



**Args**:
  - `subject_alternative_name` (`string`): Subject Alternative Name When `null`, the `subject_alternative_name` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `subject_alternative_dns_names` sub block.


## obj timeouts



### fn timeouts.new

```ts
new()
```


`google.apigee_keystores_aliases_self_signed_cert.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`
Terraform sub block.



**Args**:
  - `create` (`string`): Set the `create` field on the resulting object. When `null`, the `create` field will be omitted from the resulting object.
  - `delete` (`string`): Set the `delete` field on the resulting object. When `null`, the `delete` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `timeouts` sub block.
