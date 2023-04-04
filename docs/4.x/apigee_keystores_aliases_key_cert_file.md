---
permalink: /apigee_keystores_aliases_key_cert_file/
---

# apigee_keystores_aliases_key_cert_file

`apigee_keystores_aliases_key_cert_file` represents the `google_apigee_keystores_aliases_key_cert_file` Terraform resource.



This package contains functions and utilities for setting up the resource using Jsonnet code.


## Index

* [`fn new()`](#fn-new)
* [`fn newAttrs()`](#fn-newattrs)
* [`fn withAlias()`](#fn-withalias)
* [`fn withCert()`](#fn-withcert)
* [`fn withCertsInfo()`](#fn-withcertsinfo)
* [`fn withCertsInfoMixin()`](#fn-withcertsinfomixin)
* [`fn withEnvironment()`](#fn-withenvironment)
* [`fn withKey()`](#fn-withkey)
* [`fn withKeystore()`](#fn-withkeystore)
* [`fn withOrgId()`](#fn-withorgid)
* [`fn withPassword()`](#fn-withpassword)
* [`fn withTimeouts()`](#fn-withtimeouts)
* [`fn withTimeoutsMixin()`](#fn-withtimeoutsmixin)
* [`obj certs_info`](#obj-certs_info)
  * [`fn new()`](#fn-certs_infonew)
  * [`obj certs_info.cert_info`](#obj-certs_infocert_info)
    * [`fn new()`](#fn-certs_infocert_infonew)
* [`obj timeouts`](#obj-timeouts)
  * [`fn new()`](#fn-timeoutsnew)

## Fields

### fn new

```ts
new()
```


`google.apigee_keystores_aliases_key_cert_file.new` injects a new `google_apigee_keystores_aliases_key_cert_file` Terraform `resource`
block into the root module document.

Additionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the
resource. For example, if you added a new instance to the root using:

    # arguments omitted for brevity
    google.apigee_keystores_aliases_key_cert_file.new('some_id')

You can get the reference to the `id` field of the created `google.apigee_keystores_aliases_key_cert_file` using the reference:

    $._ref.google_apigee_keystores_aliases_key_cert_file.some_id.get('id')

This is the same as directly entering `"${ google_apigee_keystores_aliases_key_cert_file.some_id.id }"` as the value.

NOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,
or `$` to refer to the root object. Instead, make an explicit outer object using `local`.

**Args**:
  - `resourceLabel` (`string`): The name label of the block.
  - `alias` (`string`): Alias Name
  - `cert` (`string`): Cert content
  - `environment` (`string`): Environment associated with the alias
  - `key` (`string`): Private Key content, omit if uploading to truststore When `null`, the `key` field will be omitted from the resulting object.
  - `keystore` (`string`): Keystore Name
  - `org_id` (`string`): Organization ID associated with the alias
  - `password` (`string`): Password for the Private Key if it&#39;s encrypted When `null`, the `password` field will be omitted from the resulting object.
  - `certs_info` (`list[obj]`): Chain of certificates under this alias. When `null`, the `certs_info` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.apigee_keystores_aliases_key_cert_file.certs_info.new](#fn-certs_infonew) constructor.
  - `timeouts` (`obj`): Set the `timeouts` field on the resulting resource block. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.apigee_keystores_aliases_key_cert_file.timeouts.new](#fn-timeoutsnew) constructor.

**Returns**:
- A mixin object that injects the new resource into the root Terraform configuration.


### fn newAttrs

```ts
newAttrs()
```


`google.apigee_keystores_aliases_key_cert_file.newAttrs` constructs a new object with attributes and blocks configured for the `apigee_keystores_aliases_key_cert_file`
Terraform resource.

Unlike [google.apigee_keystores_aliases_key_cert_file.new](#fn-new), this function will not inject the `resource`
block into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the
[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.

This is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to
injecting into a complete block.

**Args**:
  - `alias` (`string`): Alias Name
  - `cert` (`string`): Cert content
  - `environment` (`string`): Environment associated with the alias
  - `key` (`string`): Private Key content, omit if uploading to truststore When `null`, the `key` field will be omitted from the resulting object.
  - `keystore` (`string`): Keystore Name
  - `org_id` (`string`): Organization ID associated with the alias
  - `password` (`string`): Password for the Private Key if it&#39;s encrypted When `null`, the `password` field will be omitted from the resulting object.
  - `certs_info` (`list[obj]`): Chain of certificates under this alias. When `null`, the `certs_info` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.apigee_keystores_aliases_key_cert_file.certs_info.new](#fn-certs_infonew) constructor.
  - `timeouts` (`obj`): Set the `timeouts` field on the resulting object. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.apigee_keystores_aliases_key_cert_file.timeouts.new](#fn-timeoutsnew) constructor.

**Returns**:
  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `apigee_keystores_aliases_key_cert_file` resource into the root Terraform configuration.


### fn withAlias

```ts
withAlias()
```

`google.string.withAlias` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the alias field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `alias` field.


### fn withCert

```ts
withCert()
```

`google.string.withCert` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the cert field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `cert` field.


### fn withCertsInfo

```ts
withCertsInfo()
```

`google.list[obj].withCertsInfo` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the certs_info field.

This function will replace the array with the passed in `value`. If you wish to instead append the
passed in value to the existing array, use the [google.list[obj].withCertsInfoMixin](TODO) function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `certs_info` field.


### fn withCertsInfoMixin

```ts
withCertsInfoMixin()
```

`google.list[obj].withCertsInfoMixin` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the certs_info field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google.list[obj].withCertsInfo](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `certs_info` field.


### fn withEnvironment

```ts
withEnvironment()
```

`google.string.withEnvironment` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the environment field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `environment` field.


### fn withKey

```ts
withKey()
```

`google.string.withKey` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the key field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `key` field.


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


### fn withPassword

```ts
withPassword()
```

`google.string.withPassword` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the password field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `password` field.


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


## obj certs_info



### fn certs_info.new

```ts
new()
```


`google.apigee_keystores_aliases_key_cert_file.certs_info.new` constructs a new object with attributes and blocks configured for the `certs_info`
Terraform sub block.



**Args**:
  - `cert_info` (`list[obj]`): List of all properties in the object. When `null`, the `cert_info` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.apigee_keystores_aliases_key_cert_file.certs_info.cert_info.new](#fn-certs_infocert_infonew) constructor.

**Returns**:
  - An attribute object that represents the `certs_info` sub block.


## obj certs_info.cert_info



### fn certs_info.cert_info.new

```ts
new()
```


`google.apigee_keystores_aliases_key_cert_file.certs_info.cert_info.new` constructs a new object with attributes and blocks configured for the `cert_info`
Terraform sub block.



**Args**:
  - `basic_constraints` (`string`): X.509 basic constraints extension. When `null`, the `basic_constraints` field will be omitted from the resulting object.
  - `expiry_date` (`string`): X.509 notAfter validity period in milliseconds since epoch. When `null`, the `expiry_date` field will be omitted from the resulting object.
  - `is_valid` (`string`): Flag that specifies whether the certificate is valid. 
Flag is set to Yes if the certificate is valid, No if expired, or Not yet if not yet valid. When `null`, the `is_valid` field will be omitted from the resulting object.
  - `issuer` (`string`): X.509 issuer. When `null`, the `issuer` field will be omitted from the resulting object.
  - `public_key` (`string`): Public key component of the X.509 subject public key info. When `null`, the `public_key` field will be omitted from the resulting object.
  - `serial_number` (`string`): X.509 serial number. When `null`, the `serial_number` field will be omitted from the resulting object.
  - `sig_alg_name` (`string`): X.509 signatureAlgorithm. When `null`, the `sig_alg_name` field will be omitted from the resulting object.
  - `subject` (`string`): X.509 subject. When `null`, the `subject` field will be omitted from the resulting object.
  - `subject_alternative_names` (`list`): X.509 subject alternative names (SANs) extension. When `null`, the `subject_alternative_names` field will be omitted from the resulting object.
  - `valid_from` (`string`): X.509 notBefore validity period in milliseconds since epoch. When `null`, the `valid_from` field will be omitted from the resulting object.
  - `version` (`number`): X.509 version. When `null`, the `version` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `cert_info` sub block.


## obj timeouts



### fn timeouts.new

```ts
new()
```


`google.apigee_keystores_aliases_key_cert_file.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`
Terraform sub block.



**Args**:
  - `create` (`string`): Set the `create` field on the resulting object. When `null`, the `create` field will be omitted from the resulting object.
  - `delete` (`string`): Set the `delete` field on the resulting object. When `null`, the `delete` field will be omitted from the resulting object.
  - `read` (`string`): Set the `read` field on the resulting object. When `null`, the `read` field will be omitted from the resulting object.
  - `update` (`string`): Set the `update` field on the resulting object. When `null`, the `update` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `timeouts` sub block.
