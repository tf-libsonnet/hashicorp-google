---
permalink: /container_analysis_note/
---

# container_analysis_note

`container_analysis_note` represents the `google_container_analysis_note` Terraform resource.



This package contains functions and utilities for setting up the resource using Jsonnet code.


## Index

* [`fn new()`](#fn-new)
* [`fn newAttrs()`](#fn-newattrs)
* [`fn withAttestationAuthority()`](#fn-withattestationauthority)
* [`fn withAttestationAuthorityMixin()`](#fn-withattestationauthoritymixin)
* [`fn withExpirationTime()`](#fn-withexpirationtime)
* [`fn withLongDescription()`](#fn-withlongdescription)
* [`fn withName()`](#fn-withname)
* [`fn withProject()`](#fn-withproject)
* [`fn withRelatedNoteNames()`](#fn-withrelatednotenames)
* [`fn withRelatedUrl()`](#fn-withrelatedurl)
* [`fn withRelatedUrlMixin()`](#fn-withrelatedurlmixin)
* [`fn withShortDescription()`](#fn-withshortdescription)
* [`fn withTimeouts()`](#fn-withtimeouts)
* [`fn withTimeoutsMixin()`](#fn-withtimeoutsmixin)
* [`obj attestation_authority`](#obj-attestation_authority)
  * [`fn new()`](#fn-attestation_authoritynew)
  * [`obj attestation_authority.hint`](#obj-attestation_authorityhint)
    * [`fn new()`](#fn-attestation_authorityhintnew)
* [`obj related_url`](#obj-related_url)
  * [`fn new()`](#fn-related_urlnew)
* [`obj timeouts`](#obj-timeouts)
  * [`fn new()`](#fn-timeoutsnew)

## Fields

### fn new

```ts
new()
```


`google.container_analysis_note.new` injects a new `google_container_analysis_note` Terraform `resource`
block into the root module document.

Additionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the
resource. For example, if you added a new instance to the root using:

    # arguments omitted for brevity
    google.container_analysis_note.new('some_id')

You can get the reference to the `id` field of the created `google.container_analysis_note` using the reference:

    $._ref.google_container_analysis_note.some_id.get('id')

This is the same as directly entering `"${ google_container_analysis_note.some_id.id }"` as the value.

NOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,
or `$` to refer to the root object. Instead, make an explicit outer object using `local`.

**Args**:
  - `resourceLabel` (`string`): The name label of the block.
  - `expiration_time` (`string`): Time of expiration for this note. Leave empty if note does not expire. When `null`, the `expiration_time` field will be omitted from the resulting object.
  - `long_description` (`string`): A detailed description of the note When `null`, the `long_description` field will be omitted from the resulting object.
  - `name` (`string`): The name of the note.
  - `project` (`string`):  When `null`, the `project` field will be omitted from the resulting object.
  - `related_note_names` (`list`): Names of other notes related to this note. When `null`, the `related_note_names` field will be omitted from the resulting object.
  - `short_description` (`string`): A one sentence description of the note. When `null`, the `short_description` field will be omitted from the resulting object.
  - `attestation_authority` (`list[obj]`): Note kind that represents a logical attestation &#34;role&#34; or &#34;authority&#34;.
For example, an organization might have one AttestationAuthority for
&#34;QA&#34; and one for &#34;build&#34;. This Note is intended to act strictly as a
grouping mechanism for the attached Occurrences (Attestations). This
grouping mechanism also provides a security boundary, since IAM ACLs
gate the ability for a principle to attach an Occurrence to a given
Note. It also provides a single point of lookup to find all attached
Attestation Occurrences, even if they don&#39;t all live in the same
project. When `null`, the `attestation_authority` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.container_analysis_note.attestation_authority.new](#fn-attestation_authoritynew) constructor.
  - `related_url` (`list[obj]`): URLs associated with this note and related metadata. When `null`, the `related_url` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.container_analysis_note.related_url.new](#fn-related_urlnew) constructor.
  - `timeouts` (`obj`):  When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.container_analysis_note.timeouts.new](#fn-timeoutsnew) constructor.

**Returns**:
- A mixin object that injects the new resource into the root Terraform configuration.


### fn newAttrs

```ts
newAttrs()
```


`google.container_analysis_note.newAttrs` constructs a new object with attributes and blocks configured for the `container_analysis_note`
Terraform resource.

Unlike [google.container_analysis_note.new](#fn-new), this function will not inject the `resource`
block into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the
[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.

This is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to
injecting into a complete block.

**Args**:
  - `expiration_time` (`string`): Time of expiration for this note. Leave empty if note does not expire. When `null`, the `expiration_time` field will be omitted from the resulting object.
  - `long_description` (`string`): A detailed description of the note When `null`, the `long_description` field will be omitted from the resulting object.
  - `name` (`string`): The name of the note.
  - `project` (`string`):  When `null`, the `project` field will be omitted from the resulting object.
  - `related_note_names` (`list`): Names of other notes related to this note. When `null`, the `related_note_names` field will be omitted from the resulting object.
  - `short_description` (`string`): A one sentence description of the note. When `null`, the `short_description` field will be omitted from the resulting object.
  - `attestation_authority` (`list[obj]`): Note kind that represents a logical attestation &#34;role&#34; or &#34;authority&#34;.
For example, an organization might have one AttestationAuthority for
&#34;QA&#34; and one for &#34;build&#34;. This Note is intended to act strictly as a
grouping mechanism for the attached Occurrences (Attestations). This
grouping mechanism also provides a security boundary, since IAM ACLs
gate the ability for a principle to attach an Occurrence to a given
Note. It also provides a single point of lookup to find all attached
Attestation Occurrences, even if they don&#39;t all live in the same
project. When `null`, the `attestation_authority` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.container_analysis_note.attestation_authority.new](#fn-attestation_authoritynew) constructor.
  - `related_url` (`list[obj]`): URLs associated with this note and related metadata. When `null`, the `related_url` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.container_analysis_note.related_url.new](#fn-related_urlnew) constructor.
  - `timeouts` (`obj`):  When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.container_analysis_note.timeouts.new](#fn-timeoutsnew) constructor.

**Returns**:
  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `container_analysis_note` resource into the root Terraform configuration.


### fn withAttestationAuthority

```ts
withAttestationAuthority()
```

`google.list[obj].withAttestationAuthority` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the attestation_authority field.

This function will replace the array with the passed in `value`. If you wish to instead append the
passed in value to the existing array, use the [google.list[obj].withAttestationAuthorityMixin](TODO) function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `attestation_authority` field.


### fn withAttestationAuthorityMixin

```ts
withAttestationAuthorityMixin()
```

`google.list[obj].withAttestationAuthorityMixin` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the attestation_authority field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google.list[obj].withAttestationAuthority](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `attestation_authority` field.


### fn withExpirationTime

```ts
withExpirationTime()
```

`google.string.withExpirationTime` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the expiration_time field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `expiration_time` field.


### fn withLongDescription

```ts
withLongDescription()
```

`google.string.withLongDescription` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the long_description field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `long_description` field.


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


### fn withRelatedNoteNames

```ts
withRelatedNoteNames()
```

`google.list.withRelatedNoteNames` constructs a mixin object that can be merged into the `list`
Terraform resource block to set or update the related_note_names field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list`): The value to set for the `related_note_names` field.


### fn withRelatedUrl

```ts
withRelatedUrl()
```

`google.list[obj].withRelatedUrl` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the related_url field.

This function will replace the array with the passed in `value`. If you wish to instead append the
passed in value to the existing array, use the [google.list[obj].withRelatedUrlMixin](TODO) function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `related_url` field.


### fn withRelatedUrlMixin

```ts
withRelatedUrlMixin()
```

`google.list[obj].withRelatedUrlMixin` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the related_url field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google.list[obj].withRelatedUrl](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `related_url` field.


### fn withShortDescription

```ts
withShortDescription()
```

`google.string.withShortDescription` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the short_description field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `short_description` field.


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


## obj attestation_authority



### fn attestation_authority.new

```ts
new()
```


`google.container_analysis_note.attestation_authority.new` constructs a new object with attributes and blocks configured for the `attestation_authority`
Terraform sub block.



**Args**:
  - `hint` (`list[obj]`): This submessage provides human-readable hints about the purpose of
the AttestationAuthority. Because the name of a Note acts as its
resource reference, it is important to disambiguate the canonical
name of the Note (which might be a UUID for security purposes)
from &#34;readable&#34; names more suitable for debug output. Note that
these hints should NOT be used to look up AttestationAuthorities
in security sensitive contexts, such as when looking up
Attestations to verify. When `null`, the `hint` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.container_analysis_note.attestation_authority.hint.new](#fn-attestation_authorityhintnew) constructor.

**Returns**:
  - An attribute object that represents the `attestation_authority` sub block.


## obj attestation_authority.hint



### fn attestation_authority.hint.new

```ts
new()
```


`google.container_analysis_note.attestation_authority.hint.new` constructs a new object with attributes and blocks configured for the `hint`
Terraform sub block.



**Args**:
  - `human_readable_name` (`string`): The human readable name of this Attestation Authority, for
example &#34;qa&#34;.

**Returns**:
  - An attribute object that represents the `hint` sub block.


## obj related_url



### fn related_url.new

```ts
new()
```


`google.container_analysis_note.related_url.new` constructs a new object with attributes and blocks configured for the `related_url`
Terraform sub block.



**Args**:
  - `label` (`string`): Label to describe usage of the URL When `null`, the `label` field will be omitted from the resulting object.
  - `url` (`string`): Specific URL associated with the resource.

**Returns**:
  - An attribute object that represents the `related_url` sub block.


## obj timeouts



### fn timeouts.new

```ts
new()
```


`google.container_analysis_note.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`
Terraform sub block.



**Args**:
  - `create` (`string`):  When `null`, the `create` field will be omitted from the resulting object.
  - `delete` (`string`):  When `null`, the `delete` field will be omitted from the resulting object.
  - `update` (`string`):  When `null`, the `update` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `timeouts` sub block.
