---
permalink: /data/dns_keys/
---

# data.dns_keys

`dns_keys` represents the `google_dns_keys` Terraform data source.

Get the DNSKEY and DS records of DNSSEC-signed managed zones

This package contains functions and utilities for setting up the data source using Jsonnet code.


## Index

* [`fn new()`](#fn-new)
* [`fn newAttrs()`](#fn-newattrs)
* [`fn withKeySigningKeys()`](#fn-withkeysigningkeys)
* [`fn withKeySigningKeysMixin()`](#fn-withkeysigningkeysmixin)
* [`fn withManagedZone()`](#fn-withmanagedzone)
* [`fn withProject()`](#fn-withproject)
* [`fn withZoneSigningKeys()`](#fn-withzonesigningkeys)
* [`fn withZoneSigningKeysMixin()`](#fn-withzonesigningkeysmixin)
* [`obj key_signing_keys`](#obj-key_signing_keys)
  * [`fn new()`](#fn-key_signing_keysnew)
  * [`obj key_signing_keys.digests`](#obj-key_signing_keysdigests)
    * [`fn new()`](#fn-key_signing_keysdigestsnew)
* [`obj zone_signing_keys`](#obj-zone_signing_keys)
  * [`fn new()`](#fn-zone_signing_keysnew)
  * [`obj zone_signing_keys.digests`](#obj-zone_signing_keysdigests)
    * [`fn new()`](#fn-zone_signing_keysdigestsnew)

## Fields

### fn new

```ts
new()
```


`google.data.dns_keys.new` injects a new `data_google_dns_keys` Terraform `data source`
block into the root module document.

Additionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the
resource. For example, if you added a new instance to the root using:

    # arguments omitted for brevity
    google.data.dns_keys.new('some_id')

You can get the reference to the `id` field of the created `google.data.dns_keys` using the reference:

    $._ref.data_google_dns_keys.some_id.get('id')

This is the same as directly entering `"${ data_google_dns_keys.some_id.id }"` as the value.

NOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,
or `$` to refer to the root object. Instead, make an explicit outer object using `local`.

**Args**:
  - `dataSrcLabel` (`string`): The name label of the block.
  - `managed_zone` (`string`): The Name of the zone.
  - `project` (`string`): The ID of the project for the Google Cloud. When `null`, the `project` field will be omitted from the resulting object.
  - `key_signing_keys` (`list[obj]`): A list of Key-signing key (KSK) records. When `null`, the `key_signing_keys` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.data.dns_keys.key_signing_keys.new](#fn-key_signing_keysnew) constructor.
  - `zone_signing_keys` (`list[obj]`): A list of Zone-signing key (ZSK) records. When `null`, the `zone_signing_keys` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.data.dns_keys.zone_signing_keys.new](#fn-zone_signing_keysnew) constructor.

**Returns**:
- A mixin object that injects the new data source into the root Terraform configuration.


### fn newAttrs

```ts
newAttrs()
```


`google.data.dns_keys.newAttrs` constructs a new object with attributes and blocks configured for the `dns_keys`
Terraform data source.

Unlike [google.data.dns_keys.new](#fn-new), this function will not inject the `data source`
block into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the
[tf.withData](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withdata) function to build a complete block.

This is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to
injecting into a complete block.

**Args**:
  - `managed_zone` (`string`): The Name of the zone.
  - `project` (`string`): The ID of the project for the Google Cloud. When `null`, the `project` field will be omitted from the resulting object.
  - `key_signing_keys` (`list[obj]`): A list of Key-signing key (KSK) records. When `null`, the `key_signing_keys` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.data.dns_keys.key_signing_keys.new](#fn-key_signing_keysnew) constructor.
  - `zone_signing_keys` (`list[obj]`): A list of Zone-signing key (ZSK) records. When `null`, the `zone_signing_keys` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.data.dns_keys.zone_signing_keys.new](#fn-zone_signing_keysnew) constructor.

**Returns**:
  - An attribute object that can be used with [tf.withData](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withdata) to construct a new `dns_keys` data source into the root Terraform configuration.


### fn withKeySigningKeys

```ts
withKeySigningKeys()
```

`google.list[obj].withKeySigningKeys` constructs a mixin object that can be merged into the `list[obj]`
Terraform data source block to set or update the key_signing_keys field.

This function will replace the array with the passed in `value`. If you wish to instead append the
passed in value to the existing array, use the [google.list[obj].withKeySigningKeysMixin](TODO) function.


**Args**:
  - `dataSrcLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `key_signing_keys` field.


### fn withKeySigningKeysMixin

```ts
withKeySigningKeysMixin()
```

`google.list[obj].withKeySigningKeysMixin` constructs a mixin object that can be merged into the `list[obj]`
Terraform data source block to set or update the key_signing_keys field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google.list[obj].withKeySigningKeys](TODO)
function.


**Args**:
  - `dataSrcLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `key_signing_keys` field.


### fn withManagedZone

```ts
withManagedZone()
```

`google.string.withManagedZone` constructs a mixin object that can be merged into the `string`
Terraform data source block to set or update the managed_zone field.



**Args**:
  - `dataSrcLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `managed_zone` field.


### fn withProject

```ts
withProject()
```

`google.string.withProject` constructs a mixin object that can be merged into the `string`
Terraform data source block to set or update the project field.



**Args**:
  - `dataSrcLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `project` field.


### fn withZoneSigningKeys

```ts
withZoneSigningKeys()
```

`google.list[obj].withZoneSigningKeys` constructs a mixin object that can be merged into the `list[obj]`
Terraform data source block to set or update the zone_signing_keys field.

This function will replace the array with the passed in `value`. If you wish to instead append the
passed in value to the existing array, use the [google.list[obj].withZoneSigningKeysMixin](TODO) function.


**Args**:
  - `dataSrcLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `zone_signing_keys` field.


### fn withZoneSigningKeysMixin

```ts
withZoneSigningKeysMixin()
```

`google.list[obj].withZoneSigningKeysMixin` constructs a mixin object that can be merged into the `list[obj]`
Terraform data source block to set or update the zone_signing_keys field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google.list[obj].withZoneSigningKeys](TODO)
function.


**Args**:
  - `dataSrcLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `zone_signing_keys` field.


## obj key_signing_keys



### fn key_signing_keys.new

```ts
new()
```


`google.dns_keys.key_signing_keys.new` constructs a new object with attributes and blocks configured for the `key_signing_keys`
Terraform sub block.



**Args**:
  - `digests` (`list[obj]`): A list of cryptographic hashes of the DNSKEY resource record associated with this DnsKey. These digests are needed to construct a DS record that points at this DNS key. When `null`, the `digests` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dns_keys.key_signing_keys.digests.new](#fn-key_signing_keysdigestsnew) constructor.

**Returns**:
  - An attribute object that represents the `key_signing_keys` sub block.


## obj key_signing_keys.digests



### fn key_signing_keys.digests.new

```ts
new()
```


`google.dns_keys.key_signing_keys.digests.new` constructs a new object with attributes and blocks configured for the `digests`
Terraform sub block.



**Returns**:
  - An attribute object that represents the `digests` sub block.


## obj zone_signing_keys



### fn zone_signing_keys.new

```ts
new()
```


`google.dns_keys.zone_signing_keys.new` constructs a new object with attributes and blocks configured for the `zone_signing_keys`
Terraform sub block.



**Args**:
  - `digests` (`list[obj]`): A list of cryptographic hashes of the DNSKEY resource record associated with this DnsKey. These digests are needed to construct a DS record that points at this DNS key. When `null`, the `digests` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dns_keys.zone_signing_keys.digests.new](#fn-zone_signing_keysdigestsnew) constructor.

**Returns**:
  - An attribute object that represents the `zone_signing_keys` sub block.


## obj zone_signing_keys.digests



### fn zone_signing_keys.digests.new

```ts
new()
```


`google.dns_keys.zone_signing_keys.digests.new` constructs a new object with attributes and blocks configured for the `digests`
Terraform sub block.



**Returns**:
  - An attribute object that represents the `digests` sub block.
