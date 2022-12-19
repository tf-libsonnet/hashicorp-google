---
permalink: /container_analysis_occurrence/
---

# container_analysis_occurrence

`container_analysis_occurrence` represents the `google_container_analysis_occurrence` Terraform resource.



This package contains functions and utilities for setting up the resource using Jsonnet code.


## Index

* [`fn new()`](#fn-new)
* [`fn newAttrs()`](#fn-newattrs)
* [`fn withAttestation()`](#fn-withattestation)
* [`fn withAttestationMixin()`](#fn-withattestationmixin)
* [`fn withNoteName()`](#fn-withnotename)
* [`fn withProject()`](#fn-withproject)
* [`fn withRemediation()`](#fn-withremediation)
* [`fn withResourceUri()`](#fn-withresourceuri)
* [`fn withTimeouts()`](#fn-withtimeouts)
* [`fn withTimeoutsMixin()`](#fn-withtimeoutsmixin)
* [`obj attestation`](#obj-attestation)
  * [`fn new()`](#fn-attestationnew)
  * [`obj attestation.signatures`](#obj-attestationsignatures)
    * [`fn new()`](#fn-attestationsignaturesnew)
* [`obj timeouts`](#obj-timeouts)
  * [`fn new()`](#fn-timeoutsnew)

## Fields

### fn new

```ts
new()
```


`google.container_analysis_occurrence.new` injects a new `google_container_analysis_occurrence` Terraform `resource`
block into the root module document.

Additionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the
resource. For example, if you added a new instance to the root using:

    # arguments omitted for brevity
    google.container_analysis_occurrence.new('some_id')

You can get the reference to the `id` field of the created `google.container_analysis_occurrence` using the reference:

    $._ref.google_container_analysis_occurrence.some_id.get('id')

This is the same as directly entering `"${ google_container_analysis_occurrence.some_id.id }"` as the value.

NOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,
or `$` to refer to the root object. Instead, make an explicit outer object using `local`.

**Args**:
  - `resourceLabel` (`string`): The name label of the block.
  - `note_name` (`string`): The analysis note associated with this occurrence, in the form of
projects/[PROJECT]/notes/[NOTE_ID]. This field can be used as a
filter in list requests.
  - `project` (`string`):  When `null`, the `project` field will be omitted from the resulting object.
  - `remediation` (`string`): A description of actions that can be taken to remedy the note. When `null`, the `remediation` field will be omitted from the resulting object.
  - `resource_uri` (`string`): Required. Immutable. A URI that represents the resource for which
the occurrence applies. For example,
https://gcr.io/project/image@sha256:123abc for a Docker image.
  - `attestation` (`list[obj]`): Occurrence that represents a single &#34;attestation&#34;. The authenticity
of an attestation can be verified using the attached signature.
If the verifier trusts the public key of the signer, then verifying
the signature is sufficient to establish trust. In this circumstance,
the authority to which this attestation is attached is primarily
useful for lookup (how to find this attestation if you already
know the authority and artifact to be verified) and intent (for
which authority this attestation was intended to sign. When `null`, the `attestation` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.container_analysis_occurrence.attestation.new](#fn-containeranalysisoccurrenceattestationnew) constructor.
  - `timeouts` (`obj`):  When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.container_analysis_occurrence.timeouts.new](#fn-containeranalysisoccurrencetimeoutsnew) constructor.

**Returns**:
- A mixin object that injects the new resource into the root Terraform configuration.


### fn newAttrs

```ts
newAttrs()
```


`google.container_analysis_occurrence.newAttrs` constructs a new object with attributes and blocks configured for the `container_analysis_occurrence`
Terraform resource.

Unlike [google.container_analysis_occurrence.new](#fn-containeranalysisoccurrencenew), this function will not inject the `resource`
block into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the
[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.

This is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to
injecting into a complete block.

**Args**:
  - `note_name` (`string`): The analysis note associated with this occurrence, in the form of
projects/[PROJECT]/notes/[NOTE_ID]. This field can be used as a
filter in list requests.
  - `project` (`string`):  When `null`, the `project` field will be omitted from the resulting object.
  - `remediation` (`string`): A description of actions that can be taken to remedy the note. When `null`, the `remediation` field will be omitted from the resulting object.
  - `resource_uri` (`string`): Required. Immutable. A URI that represents the resource for which
the occurrence applies. For example,
https://gcr.io/project/image@sha256:123abc for a Docker image.
  - `attestation` (`list[obj]`): Occurrence that represents a single &#34;attestation&#34;. The authenticity
of an attestation can be verified using the attached signature.
If the verifier trusts the public key of the signer, then verifying
the signature is sufficient to establish trust. In this circumstance,
the authority to which this attestation is attached is primarily
useful for lookup (how to find this attestation if you already
know the authority and artifact to be verified) and intent (for
which authority this attestation was intended to sign. When `null`, the `attestation` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.container_analysis_occurrence.attestation.new](#fn-containeranalysisoccurrenceattestationnew) constructor.
  - `timeouts` (`obj`):  When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.container_analysis_occurrence.timeouts.new](#fn-containeranalysisoccurrencetimeoutsnew) constructor.

**Returns**:
  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `container_analysis_occurrence` resource into the root Terraform configuration.


### fn withAttestation

```ts
withAttestation()
```

`google.container_analysis_occurrence.withAttestation` constructs a mixin object that can be merged into the `container_analysis_occurrence`
Terraform resource block to set or update the attestation field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`TODO`): The value to set for the `attestation` field.


### fn withAttestationMixin

```ts
withAttestationMixin()
```

`google.container_analysis_occurrence.withAttestationMixin` constructs a mixin object that can be merged into the `container_analysis_occurrence`
Terraform resource block to set or update the attestation field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google.container_analysis_occurrence.withAttestation](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`TODO`): The value to set for the `attestation` field.


### fn withNoteName

```ts
withNoteName()
```

`google.container_analysis_occurrence.withNoteName` constructs a mixin object that can be merged into the `container_analysis_occurrence`
Terraform resource block to set or update the note_name field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`TODO`): The value to set for the `note_name` field.


### fn withProject

```ts
withProject()
```

`google.container_analysis_occurrence.withProject` constructs a mixin object that can be merged into the `container_analysis_occurrence`
Terraform resource block to set or update the project field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`TODO`): The value to set for the `project` field.


### fn withRemediation

```ts
withRemediation()
```

`google.container_analysis_occurrence.withRemediation` constructs a mixin object that can be merged into the `container_analysis_occurrence`
Terraform resource block to set or update the remediation field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`TODO`): The value to set for the `remediation` field.


### fn withResourceUri

```ts
withResourceUri()
```

`google.container_analysis_occurrence.withResourceUri` constructs a mixin object that can be merged into the `container_analysis_occurrence`
Terraform resource block to set or update the resource_uri field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`TODO`): The value to set for the `resource_uri` field.


### fn withTimeouts

```ts
withTimeouts()
```

`google.container_analysis_occurrence.withTimeouts` constructs a mixin object that can be merged into the `container_analysis_occurrence`
Terraform resource block to set or update the timeouts field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`TODO`): The value to set for the `timeouts` field.


### fn withTimeoutsMixin

```ts
withTimeoutsMixin()
```

`google.container_analysis_occurrence.withTimeoutsMixin` constructs a mixin object that can be merged into the `container_analysis_occurrence`
Terraform resource block to set or update the timeouts field.

This function will merge the passed in value to the existing map. If you wish
to instead replace the entire map with the passed in `value`, use the [google.container_analysis_occurrence.withTimeouts](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`TODO`): The value to set for the `timeouts` field.


## obj attestation



### fn attestation.new

```ts
new()
```


`google.container_analysis_occurrence.attestation.new` constructs a new object with attributes and blocks configured for the `attestation`
Terraform sub block.



**Args**:
  - `serialized_payload` (`string`): The serialized payload that is verified by one or
more signatures. A base64-encoded string.
  - `signatures` (`list[obj]`): One or more signatures over serializedPayload.
Verifier implementations should consider this attestation
message verified if at least one signature verifies
serializedPayload. See Signature in common.proto for more
details on signature structure and verification. When `null`, the `signatures` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.container_analysis_occurrence.attestation.signatures.new](#fn-attestationsignaturesnew) constructor.

**Returns**:
  - An attribute object that represents the `attestation` sub block.


## obj attestation.signatures



### fn attestation.signatures.new

```ts
new()
```


`google.container_analysis_occurrence.attestation.signatures.new` constructs a new object with attributes and blocks configured for the `signatures`
Terraform sub block.



**Args**:
  - `public_key_id` (`string`): The identifier for the public key that verifies this
signature. MUST be an RFC3986 conformant
URI. * When possible, the key id should be an
immutable reference, such as a cryptographic digest.
Examples of valid values:

* OpenPGP V4 public key fingerprint. See https://www.iana.org/assignments/uri-schemes/prov/openpgp4fpr
  for more details on this scheme.
    * &#39;openpgp4fpr:74FAF3B861BDA0870C7B6DEF607E48D2A663AEEA&#39;
* RFC6920 digest-named SubjectPublicKeyInfo (digest of the DER serialization):
    * &#34;ni:///sha-256;cD9o9Cq6LG3jD0iKXqEi_vdjJGecm_iXkbqVoScViaU&#34;
  - `signature` (`string`): The content of the signature, an opaque bytestring.
The payload that this signature verifies MUST be
unambiguously provided with the Signature during
verification. A wrapper message might provide the
payload explicitly. Alternatively, a message might
have a canonical serialization that can always be
unambiguously computed to derive the payload. When `null`, the `signature` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `signatures` sub block.


## obj timeouts



### fn timeouts.new

```ts
new()
```


`google.container_analysis_occurrence.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`
Terraform sub block.



**Args**:
  - `create` (`string`):  When `null`, the `create` field will be omitted from the resulting object.
  - `delete` (`string`):  When `null`, the `delete` field will be omitted from the resulting object.
  - `update` (`string`):  When `null`, the `update` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `timeouts` sub block.
