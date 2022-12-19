---
permalink: /data/privateca_certificate_authority/
---

# data.privateca_certificate_authority

`privateca_certificate_authority` represents the `google_privateca_certificate_authority` Terraform data source.



This package contains functions and utilities for setting up the data source using Jsonnet code.


## Index

* [`fn new()`](#fn-new)
* [`fn newAttrs()`](#fn-newattrs)
* [`fn withCertificateAuthorityId()`](#fn-withcertificateauthorityid)
* [`fn withLocation()`](#fn-withlocation)
* [`fn withPool()`](#fn-withpool)
* [`fn withProject()`](#fn-withproject)

## Fields

### fn new

```ts
new()
```


`google.data.privateca_certificate_authority.new` injects a new `data_google_privateca_certificate_authority` Terraform `data source`
block into the root module document.

Additionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the
resource. For example, if you added a new instance to the root using:

    # arguments omitted for brevity
    google.data.privateca_certificate_authority.new('some_id')

You can get the reference to the `id` field of the created `google.data.privateca_certificate_authority` using the reference:

    $._ref.data_google_privateca_certificate_authority.some_id.get('id')

This is the same as directly entering `"${ data_google_privateca_certificate_authority.some_id.id }"` as the value.

NOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,
or `$` to refer to the root object. Instead, make an explicit outer object using `local`.

**Args**:
  - `dataSrcLabel` (`string`): The name label of the block.
  - `certificate_authority_id` (`string`): The user provided Resource ID for this Certificate Authority. When `null`, the `certificate_authority_id` field will be omitted from the resulting object.
  - `location` (`string`): Location of the CertificateAuthority. A full list of valid locations can be found by
running &#39;gcloud privateca locations list&#39;. When `null`, the `location` field will be omitted from the resulting object.
  - `pool` (`string`): The name of the CaPool this Certificate Authority belongs to. When `null`, the `pool` field will be omitted from the resulting object.
  - `project` (`string`): Set the `project` field on the resulting data source block. When `null`, the `project` field will be omitted from the resulting object.

**Returns**:
- A mixin object that injects the new data source into the root Terraform configuration.


### fn newAttrs

```ts
newAttrs()
```


`google.data.privateca_certificate_authority.newAttrs` constructs a new object with attributes and blocks configured for the `privateca_certificate_authority`
Terraform data source.

Unlike [google.data.privateca_certificate_authority.new](#fn-new), this function will not inject the `data source`
block into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the
[tf.withData](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withdata) function to build a complete block.

This is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to
injecting into a complete block.

**Args**:
  - `certificate_authority_id` (`string`): The user provided Resource ID for this Certificate Authority. When `null`, the `certificate_authority_id` field will be omitted from the resulting object.
  - `location` (`string`): Location of the CertificateAuthority. A full list of valid locations can be found by
running &#39;gcloud privateca locations list&#39;. When `null`, the `location` field will be omitted from the resulting object.
  - `pool` (`string`): The name of the CaPool this Certificate Authority belongs to. When `null`, the `pool` field will be omitted from the resulting object.
  - `project` (`string`): Set the `project` field on the resulting object. When `null`, the `project` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that can be used with [tf.withData](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withdata) to construct a new `privateca_certificate_authority` data source into the root Terraform configuration.


### fn withCertificateAuthorityId

```ts
withCertificateAuthorityId()
```

`google.string.withCertificateAuthorityId` constructs a mixin object that can be merged into the `string`
Terraform data source block to set or update the certificate_authority_id field.



**Args**:
  - `dataSrcLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `certificate_authority_id` field.


### fn withLocation

```ts
withLocation()
```

`google.string.withLocation` constructs a mixin object that can be merged into the `string`
Terraform data source block to set or update the location field.



**Args**:
  - `dataSrcLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `location` field.


### fn withPool

```ts
withPool()
```

`google.string.withPool` constructs a mixin object that can be merged into the `string`
Terraform data source block to set or update the pool field.



**Args**:
  - `dataSrcLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `pool` field.


### fn withProject

```ts
withProject()
```

`google.string.withProject` constructs a mixin object that can be merged into the `string`
Terraform data source block to set or update the project field.



**Args**:
  - `dataSrcLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `project` field.
