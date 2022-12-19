---
permalink: /binary_authorization_attestor/
---

# binary_authorization_attestor

`binary_authorization_attestor` represents the `google_binary_authorization_attestor` Terraform resource.



This package contains functions and utilities for setting up the resource using Jsonnet code.


## Index

* [`fn new()`](#fn-new)
* [`fn newAttrs()`](#fn-newattrs)
* [`fn withAttestationAuthorityNote()`](#fn-withattestationauthoritynote)
* [`fn withAttestationAuthorityNoteMixin()`](#fn-withattestationauthoritynotemixin)
* [`fn withDescription()`](#fn-withdescription)
* [`fn withName()`](#fn-withname)
* [`fn withProject()`](#fn-withproject)
* [`fn withTimeouts()`](#fn-withtimeouts)
* [`fn withTimeoutsMixin()`](#fn-withtimeoutsmixin)
* [`obj attestation_authority_note`](#obj-attestation_authority_note)
  * [`fn new()`](#fn-attestation_authority_notenew)
  * [`obj attestation_authority_note.public_keys`](#obj-attestation_authority_notepublic_keys)
    * [`fn new()`](#fn-attestation_authority_notepublic_keysnew)
    * [`obj attestation_authority_note.public_keys.pkix_public_key`](#obj-attestation_authority_notepublic_keyspkix_public_key)
      * [`fn new()`](#fn-attestation_authority_notepublic_keyspkix_public_keynew)
* [`obj timeouts`](#obj-timeouts)
  * [`fn new()`](#fn-timeoutsnew)

## Fields

### fn new

```ts
new()
```


`google.binary_authorization_attestor.new` injects a new `google_binary_authorization_attestor` Terraform `resource`
block into the root module document.

Additionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the
resource. For example, if you added a new instance to the root using:

    # arguments omitted for brevity
    google.binary_authorization_attestor.new('some_id')

You can get the reference to the `id` field of the created `google.binary_authorization_attestor` using the reference:

    $._ref.google_binary_authorization_attestor.some_id.get('id')

This is the same as directly entering `"${ google_binary_authorization_attestor.some_id.id }"` as the value.

NOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,
or `$` to refer to the root object. Instead, make an explicit outer object using `local`.

**Args**:
  - `resourceLabel` (`string`): The name label of the block.
  - `description` (`string`): A descriptive comment. This field may be updated. The field may be
displayed in chooser dialogs. When `null`, the `description` field will be omitted from the resulting object.
  - `name` (`string`): The resource name.
  - `project` (`string`):  When `null`, the `project` field will be omitted from the resulting object.
  - `attestation_authority_note` (`list[obj]`): A Container Analysis ATTESTATION_AUTHORITY Note, created by the user. When `null`, the `attestation_authority_note` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.binary_authorization_attestor.attestation_authority_note.new](#fn-attestation_authority_notenew) constructor.
  - `timeouts` (`obj`):  When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.binary_authorization_attestor.timeouts.new](#fn-timeoutsnew) constructor.

**Returns**:
- A mixin object that injects the new resource into the root Terraform configuration.


### fn newAttrs

```ts
newAttrs()
```


`google.binary_authorization_attestor.newAttrs` constructs a new object with attributes and blocks configured for the `binary_authorization_attestor`
Terraform resource.

Unlike [google.binary_authorization_attestor.new](#fn-new), this function will not inject the `resource`
block into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the
[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.

This is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to
injecting into a complete block.

**Args**:
  - `description` (`string`): A descriptive comment. This field may be updated. The field may be
displayed in chooser dialogs. When `null`, the `description` field will be omitted from the resulting object.
  - `name` (`string`): The resource name.
  - `project` (`string`):  When `null`, the `project` field will be omitted from the resulting object.
  - `attestation_authority_note` (`list[obj]`): A Container Analysis ATTESTATION_AUTHORITY Note, created by the user. When `null`, the `attestation_authority_note` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.binary_authorization_attestor.attestation_authority_note.new](#fn-attestation_authority_notenew) constructor.
  - `timeouts` (`obj`):  When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.binary_authorization_attestor.timeouts.new](#fn-timeoutsnew) constructor.

**Returns**:
  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `binary_authorization_attestor` resource into the root Terraform configuration.


### fn withAttestationAuthorityNote

```ts
withAttestationAuthorityNote()
```

`google.list[obj].withAttestationAuthorityNote` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the attestation_authority_note field.

This function will replace the array with the passed in `value`. If you wish to instead append the
passed in value to the existing array, use the [google.list[obj].withAttestationAuthorityNoteMixin](TODO) function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `attestation_authority_note` field.


### fn withAttestationAuthorityNoteMixin

```ts
withAttestationAuthorityNoteMixin()
```

`google.list[obj].withAttestationAuthorityNoteMixin` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the attestation_authority_note field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google.list[obj].withAttestationAuthorityNote](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `attestation_authority_note` field.


### fn withDescription

```ts
withDescription()
```

`google.string.withDescription` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the description field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `description` field.


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


## obj attestation_authority_note



### fn attestation_authority_note.new

```ts
new()
```


`google.binary_authorization_attestor.attestation_authority_note.new` constructs a new object with attributes and blocks configured for the `attestation_authority_note`
Terraform sub block.



**Args**:
  - `note_reference` (`string`): The resource name of a ATTESTATION_AUTHORITY Note, created by the
user. If the Note is in a different project from the Attestor, it
should be specified in the format &#39;projects/*/notes/*&#39; (or the legacy
&#39;providers/*/notes/*&#39;). This field may not be updated.
An attestation by this attestor is stored as a Container Analysis
ATTESTATION_AUTHORITY Occurrence that names a container image
and that links to this Note.
  - `public_keys` (`list[obj]`): Public keys that verify attestations signed by this attestor. This
field may be updated.
If this field is non-empty, one of the specified public keys must
verify that an attestation was signed by this attestor for the
image specified in the admission request.
If this field is empty, this attestor always returns that no valid
attestations exist. When `null`, the `public_keys` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.binary_authorization_attestor.attestation_authority_note.public_keys.new](#fn-binary_authorization_attestorpublic_keysnew) constructor.

**Returns**:
  - An attribute object that represents the `attestation_authority_note` sub block.


## obj attestation_authority_note.public_keys



### fn attestation_authority_note.public_keys.new

```ts
new()
```


`google.binary_authorization_attestor.attestation_authority_note.public_keys.new` constructs a new object with attributes and blocks configured for the `public_keys`
Terraform sub block.



**Args**:
  - `ascii_armored_pgp_public_key` (`string`): ASCII-armored representation of a PGP public key, as the
entire output by the command
&#39;gpg --export --armor foo@example.com&#39; (either LF or CRLF
line endings). When using this field, id should be left
blank. The BinAuthz API handlers will calculate the ID
and fill it in automatically. BinAuthz computes this ID
as the OpenPGP RFC4880 V4 fingerprint, represented as
upper-case hex. If id is provided by the caller, it will
be overwritten by the API-calculated ID. When `null`, the `ascii_armored_pgp_public_key` field will be omitted from the resulting object.
  - `comment` (`string`): A descriptive comment. This field may be updated. When `null`, the `comment` field will be omitted from the resulting object.
  - `pkix_public_key` (`list[obj]`): A raw PKIX SubjectPublicKeyInfo format public key.

NOTE: id may be explicitly provided by the caller when using this
type of public key, but it MUST be a valid RFC3986 URI. If id is left
blank, a default one will be computed based on the digest of the DER
encoding of the public key. When `null`, the `pkix_public_key` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.binary_authorization_attestor.attestation_authority_note.public_keys.pkix_public_key.new](#fn-binary_authorization_attestorattestation_authority_notepkix_public_keynew) constructor.

**Returns**:
  - An attribute object that represents the `public_keys` sub block.


## obj attestation_authority_note.public_keys.pkix_public_key



### fn attestation_authority_note.public_keys.pkix_public_key.new

```ts
new()
```


`google.binary_authorization_attestor.attestation_authority_note.public_keys.pkix_public_key.new` constructs a new object with attributes and blocks configured for the `pkix_public_key`
Terraform sub block.



**Args**:
  - `public_key_pem` (`string`): A PEM-encoded public key, as described in
&#39;https://tools.ietf.org/html/rfc7468#section-13&#39; When `null`, the `public_key_pem` field will be omitted from the resulting object.
  - `signature_algorithm` (`string`): The signature algorithm used to verify a message against
a signature using this key. These signature algorithm must
match the structure and any object identifiers encoded in
publicKeyPem (i.e. this algorithm must match that of the
public key). When `null`, the `signature_algorithm` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `pkix_public_key` sub block.


## obj timeouts



### fn timeouts.new

```ts
new()
```


`google.binary_authorization_attestor.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`
Terraform sub block.



**Args**:
  - `create` (`string`):  When `null`, the `create` field will be omitted from the resulting object.
  - `delete` (`string`):  When `null`, the `delete` field will be omitted from the resulting object.
  - `update` (`string`):  When `null`, the `update` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `timeouts` sub block.
