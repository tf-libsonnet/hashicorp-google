---
permalink: /iam_workforce_pool_provider/
---

# iam_workforce_pool_provider

`iam_workforce_pool_provider` represents the `google_iam_workforce_pool_provider` Terraform resource.



This package contains functions and utilities for setting up the resource using Jsonnet code.


## Index

* [`fn new()`](#fn-new)
* [`fn newAttrs()`](#fn-newattrs)
* [`fn withAttributeCondition()`](#fn-withattributecondition)
* [`fn withAttributeMapping()`](#fn-withattributemapping)
* [`fn withDescription()`](#fn-withdescription)
* [`fn withDisabled()`](#fn-withdisabled)
* [`fn withDisplayName()`](#fn-withdisplayname)
* [`fn withLocation()`](#fn-withlocation)
* [`fn withOidc()`](#fn-withoidc)
* [`fn withOidcMixin()`](#fn-withoidcmixin)
* [`fn withProviderId()`](#fn-withproviderid)
* [`fn withSaml()`](#fn-withsaml)
* [`fn withSamlMixin()`](#fn-withsamlmixin)
* [`fn withTimeouts()`](#fn-withtimeouts)
* [`fn withTimeoutsMixin()`](#fn-withtimeoutsmixin)
* [`fn withWorkforcePoolId()`](#fn-withworkforcepoolid)
* [`obj oidc`](#obj-oidc)
  * [`fn new()`](#fn-oidcnew)
  * [`obj oidc.web_sso_config`](#obj-oidcweb_sso_config)
    * [`fn new()`](#fn-oidcweb_sso_confignew)
* [`obj saml`](#obj-saml)
  * [`fn new()`](#fn-samlnew)
* [`obj timeouts`](#obj-timeouts)
  * [`fn new()`](#fn-timeoutsnew)

## Fields

### fn new

```ts
new()
```


`google.iam_workforce_pool_provider.new` injects a new `google_iam_workforce_pool_provider` Terraform `resource`
block into the root module document.

Additionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the
resource. For example, if you added a new instance to the root using:

    # arguments omitted for brevity
    google.iam_workforce_pool_provider.new('some_id')

You can get the reference to the `id` field of the created `google.iam_workforce_pool_provider` using the reference:

    $._ref.google_iam_workforce_pool_provider.some_id.get('id')

This is the same as directly entering `"${ google_iam_workforce_pool_provider.some_id.id }"` as the value.

NOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,
or `$` to refer to the root object. Instead, make an explicit outer object using `local`.

**Args**:
  - `resourceLabel` (`string`): The name label of the block.
  - `attribute_condition` (`string`): A [Common Expression Language](https://opensource.google/projects/cel) expression, in
plain text, to restrict what otherwise valid authentication credentials issued by the
provider should not be accepted.

The expression must output a boolean representing whether to allow the federation.

The following keywords may be referenced in the expressions:
  * &#39;assertion&#39;: JSON representing the authentication credential issued by the provider.
  * &#39;google&#39;: The Google attributes mapped from the assertion in the &#39;attribute_mappings&#39;.
    &#39;google.profile_photo&#39; and &#39;google.display_name&#39; are not supported.
  * &#39;attribute&#39;: The custom attributes mapped from the assertion in the &#39;attribute_mappings&#39;.

The maximum length of the attribute condition expression is 4096 characters.
If unspecified, all valid authentication credentials will be accepted.

The following example shows how to only allow credentials with a mapped &#39;google.groups&#39; value of &#39;admins&#39;:
&#39;&#39;&#39;
&#34;&#39;admins&#39; in google.groups&#34;
&#39;&#39;&#39; When `null`, the `attribute_condition` field will be omitted from the resulting object.
  - `attribute_mapping` (`obj`): Maps attributes from the authentication credentials issued by an external identity provider
to Google Cloud attributes, such as &#39;subject&#39; and &#39;segment&#39;.

Each key must be a string specifying the Google Cloud IAM attribute to map to.

The following keys are supported:
  * &#39;google.subject&#39;: The principal IAM is authenticating. You can reference this value in IAM bindings.
    This is also the subject that appears in Cloud Logging logs. This is a required field and
    the mapped subject cannot exceed 127 bytes.
  * &#39;google.groups&#39;: Groups the authenticating user belongs to. You can grant groups access to
    resources using an IAM &#39;principalSet&#39; binding; access applies to all members of the group.
  * &#39;google.display_name&#39;: The name of the authenticated user. This is an optional field and
    the mapped display name cannot exceed 100 bytes. If not set, &#39;google.subject&#39; will be displayed instead.
    This attribute cannot be referenced in IAM bindings.
  * &#39;google.profile_photo&#39;: The URL that specifies the authenticated user&#39;s thumbnail photo.
    This is an optional field. When set, the image will be visible as the user&#39;s profile picture.
    If not set, a generic user icon will be displayed instead.
    This attribute cannot be referenced in IAM bindings.

You can also provide custom attributes by specifying &#39;attribute.{custom_attribute}&#39;, where {custom_attribute}
is the name of the custom attribute to be mapped. You can define a maximum of 50 custom attributes.
The maximum length of a mapped attribute key is 100 characters, and the key may only contain the characters [a-z0-9_].

You can reference these attributes in IAM policies to define fine-grained access for a workforce pool
to Google Cloud resources. For example:
  * &#39;google.subject&#39;:
    &#39;principal://iam.googleapis.com/locations/{location}/workforcePools/{pool}/subject/{value}&#39;
  * &#39;google.groups&#39;:
    &#39;principalSet://iam.googleapis.com/locations/{location}/workforcePools/{pool}/group/{value}&#39;
  * &#39;attribute.{custom_attribute}&#39;:
    &#39;principalSet://iam.googleapis.com/locations/{location}/workforcePools/{pool}/attribute.{custom_attribute}/{value}&#39;

Each value must be a [Common Expression Language](https://opensource.google/projects/cel)
function that maps an identity provider credential to the normalized attribute specified
by the corresponding map key.

You can use the &#39;assertion&#39; keyword in the expression to access a JSON representation of
the authentication credential issued by the provider.

The maximum length of an attribute mapping expression is 2048 characters. When evaluated,
the total size of all mapped attributes must not exceed 8KB.

For OIDC providers, you must supply a custom mapping that includes the &#39;google.subject&#39; attribute.
For example, the following maps the sub claim of the incoming credential to the &#39;subject&#39; attribute
on a Google token:
&#39;&#39;&#39;
{&#34;google.subject&#34;: &#34;assertion.sub&#34;}
&#39;&#39;&#39;

An object containing a list of &#39;&#34;key&#34;: value&#39; pairs.
Example: &#39;{ &#34;name&#34;: &#34;wrench&#34;, &#34;mass&#34;: &#34;1.3kg&#34;, &#34;count&#34;: &#34;3&#34; }&#39;. When `null`, the `attribute_mapping` field will be omitted from the resulting object.
  - `description` (`string`): A user-specified description of the provider. Cannot exceed 256 characters. When `null`, the `description` field will be omitted from the resulting object.
  - `disabled` (`bool`): Whether the provider is disabled. You cannot use a disabled provider to exchange tokens.
However, existing tokens still grant access. When `null`, the `disabled` field will be omitted from the resulting object.
  - `display_name` (`string`): A user-specified display name for the provider. Cannot exceed 32 characters. When `null`, the `display_name` field will be omitted from the resulting object.
  - `location` (`string`): The location for the resource.
  - `provider_id` (`string`): The ID for the provider, which becomes the final component of the resource name.
This value must be 4-32 characters, and may contain the characters [a-z0-9-].
The prefix &#39;gcp-&#39; is reserved for use by Google, and may not be specified.
  - `workforce_pool_id` (`string`): The ID to use for the pool, which becomes the final component of the resource name.
The IDs must be a globally unique string of 6 to 63 lowercase letters, digits, or hyphens.
It must start with a letter, and cannot have a trailing hyphen.
The prefix &#39;gcp-&#39; is reserved for use by Google, and may not be specified.
  - `oidc` (`list[obj]`): Represents an OpenId Connect 1.0 identity provider. When `null`, the `oidc` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.iam_workforce_pool_provider.oidc.new](#fn-oidcnew) constructor.
  - `saml` (`list[obj]`): Represents a SAML identity provider. When `null`, the `saml` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.iam_workforce_pool_provider.saml.new](#fn-samlnew) constructor.
  - `timeouts` (`obj`): Set the `timeouts` field on the resulting resource block. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.iam_workforce_pool_provider.timeouts.new](#fn-timeoutsnew) constructor.

**Returns**:
- A mixin object that injects the new resource into the root Terraform configuration.


### fn newAttrs

```ts
newAttrs()
```


`google.iam_workforce_pool_provider.newAttrs` constructs a new object with attributes and blocks configured for the `iam_workforce_pool_provider`
Terraform resource.

Unlike [google.iam_workforce_pool_provider.new](#fn-new), this function will not inject the `resource`
block into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the
[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.

This is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to
injecting into a complete block.

**Args**:
  - `attribute_condition` (`string`): A [Common Expression Language](https://opensource.google/projects/cel) expression, in
plain text, to restrict what otherwise valid authentication credentials issued by the
provider should not be accepted.

The expression must output a boolean representing whether to allow the federation.

The following keywords may be referenced in the expressions:
  * &#39;assertion&#39;: JSON representing the authentication credential issued by the provider.
  * &#39;google&#39;: The Google attributes mapped from the assertion in the &#39;attribute_mappings&#39;.
    &#39;google.profile_photo&#39; and &#39;google.display_name&#39; are not supported.
  * &#39;attribute&#39;: The custom attributes mapped from the assertion in the &#39;attribute_mappings&#39;.

The maximum length of the attribute condition expression is 4096 characters.
If unspecified, all valid authentication credentials will be accepted.

The following example shows how to only allow credentials with a mapped &#39;google.groups&#39; value of &#39;admins&#39;:
&#39;&#39;&#39;
&#34;&#39;admins&#39; in google.groups&#34;
&#39;&#39;&#39; When `null`, the `attribute_condition` field will be omitted from the resulting object.
  - `attribute_mapping` (`obj`): Maps attributes from the authentication credentials issued by an external identity provider
to Google Cloud attributes, such as &#39;subject&#39; and &#39;segment&#39;.

Each key must be a string specifying the Google Cloud IAM attribute to map to.

The following keys are supported:
  * &#39;google.subject&#39;: The principal IAM is authenticating. You can reference this value in IAM bindings.
    This is also the subject that appears in Cloud Logging logs. This is a required field and
    the mapped subject cannot exceed 127 bytes.
  * &#39;google.groups&#39;: Groups the authenticating user belongs to. You can grant groups access to
    resources using an IAM &#39;principalSet&#39; binding; access applies to all members of the group.
  * &#39;google.display_name&#39;: The name of the authenticated user. This is an optional field and
    the mapped display name cannot exceed 100 bytes. If not set, &#39;google.subject&#39; will be displayed instead.
    This attribute cannot be referenced in IAM bindings.
  * &#39;google.profile_photo&#39;: The URL that specifies the authenticated user&#39;s thumbnail photo.
    This is an optional field. When set, the image will be visible as the user&#39;s profile picture.
    If not set, a generic user icon will be displayed instead.
    This attribute cannot be referenced in IAM bindings.

You can also provide custom attributes by specifying &#39;attribute.{custom_attribute}&#39;, where {custom_attribute}
is the name of the custom attribute to be mapped. You can define a maximum of 50 custom attributes.
The maximum length of a mapped attribute key is 100 characters, and the key may only contain the characters [a-z0-9_].

You can reference these attributes in IAM policies to define fine-grained access for a workforce pool
to Google Cloud resources. For example:
  * &#39;google.subject&#39;:
    &#39;principal://iam.googleapis.com/locations/{location}/workforcePools/{pool}/subject/{value}&#39;
  * &#39;google.groups&#39;:
    &#39;principalSet://iam.googleapis.com/locations/{location}/workforcePools/{pool}/group/{value}&#39;
  * &#39;attribute.{custom_attribute}&#39;:
    &#39;principalSet://iam.googleapis.com/locations/{location}/workforcePools/{pool}/attribute.{custom_attribute}/{value}&#39;

Each value must be a [Common Expression Language](https://opensource.google/projects/cel)
function that maps an identity provider credential to the normalized attribute specified
by the corresponding map key.

You can use the &#39;assertion&#39; keyword in the expression to access a JSON representation of
the authentication credential issued by the provider.

The maximum length of an attribute mapping expression is 2048 characters. When evaluated,
the total size of all mapped attributes must not exceed 8KB.

For OIDC providers, you must supply a custom mapping that includes the &#39;google.subject&#39; attribute.
For example, the following maps the sub claim of the incoming credential to the &#39;subject&#39; attribute
on a Google token:
&#39;&#39;&#39;
{&#34;google.subject&#34;: &#34;assertion.sub&#34;}
&#39;&#39;&#39;

An object containing a list of &#39;&#34;key&#34;: value&#39; pairs.
Example: &#39;{ &#34;name&#34;: &#34;wrench&#34;, &#34;mass&#34;: &#34;1.3kg&#34;, &#34;count&#34;: &#34;3&#34; }&#39;. When `null`, the `attribute_mapping` field will be omitted from the resulting object.
  - `description` (`string`): A user-specified description of the provider. Cannot exceed 256 characters. When `null`, the `description` field will be omitted from the resulting object.
  - `disabled` (`bool`): Whether the provider is disabled. You cannot use a disabled provider to exchange tokens.
However, existing tokens still grant access. When `null`, the `disabled` field will be omitted from the resulting object.
  - `display_name` (`string`): A user-specified display name for the provider. Cannot exceed 32 characters. When `null`, the `display_name` field will be omitted from the resulting object.
  - `location` (`string`): The location for the resource.
  - `provider_id` (`string`): The ID for the provider, which becomes the final component of the resource name.
This value must be 4-32 characters, and may contain the characters [a-z0-9-].
The prefix &#39;gcp-&#39; is reserved for use by Google, and may not be specified.
  - `workforce_pool_id` (`string`): The ID to use for the pool, which becomes the final component of the resource name.
The IDs must be a globally unique string of 6 to 63 lowercase letters, digits, or hyphens.
It must start with a letter, and cannot have a trailing hyphen.
The prefix &#39;gcp-&#39; is reserved for use by Google, and may not be specified.
  - `oidc` (`list[obj]`): Represents an OpenId Connect 1.0 identity provider. When `null`, the `oidc` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.iam_workforce_pool_provider.oidc.new](#fn-oidcnew) constructor.
  - `saml` (`list[obj]`): Represents a SAML identity provider. When `null`, the `saml` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.iam_workforce_pool_provider.saml.new](#fn-samlnew) constructor.
  - `timeouts` (`obj`): Set the `timeouts` field on the resulting object. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.iam_workforce_pool_provider.timeouts.new](#fn-timeoutsnew) constructor.

**Returns**:
  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `iam_workforce_pool_provider` resource into the root Terraform configuration.


### fn withAttributeCondition

```ts
withAttributeCondition()
```

`google.string.withAttributeCondition` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the attribute_condition field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `attribute_condition` field.


### fn withAttributeMapping

```ts
withAttributeMapping()
```

`google.obj.withAttributeMapping` constructs a mixin object that can be merged into the `obj`
Terraform resource block to set or update the attribute_mapping field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`obj`): The value to set for the `attribute_mapping` field.


### fn withDescription

```ts
withDescription()
```

`google.string.withDescription` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the description field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `description` field.


### fn withDisabled

```ts
withDisabled()
```

`google.bool.withDisabled` constructs a mixin object that can be merged into the `bool`
Terraform resource block to set or update the disabled field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`bool`): The value to set for the `disabled` field.


### fn withDisplayName

```ts
withDisplayName()
```

`google.string.withDisplayName` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the display_name field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `display_name` field.


### fn withLocation

```ts
withLocation()
```

`google.string.withLocation` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the location field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `location` field.


### fn withOidc

```ts
withOidc()
```

`google.list[obj].withOidc` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the oidc field.

This function will replace the array with the passed in `value`. If you wish to instead append the
passed in value to the existing array, use the [google.list[obj].withOidcMixin](TODO) function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `oidc` field.


### fn withOidcMixin

```ts
withOidcMixin()
```

`google.list[obj].withOidcMixin` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the oidc field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google.list[obj].withOidc](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `oidc` field.


### fn withProviderId

```ts
withProviderId()
```

`google.string.withProviderId` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the provider_id field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `provider_id` field.


### fn withSaml

```ts
withSaml()
```

`google.list[obj].withSaml` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the saml field.

This function will replace the array with the passed in `value`. If you wish to instead append the
passed in value to the existing array, use the [google.list[obj].withSamlMixin](TODO) function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `saml` field.


### fn withSamlMixin

```ts
withSamlMixin()
```

`google.list[obj].withSamlMixin` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the saml field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google.list[obj].withSaml](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `saml` field.


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


### fn withWorkforcePoolId

```ts
withWorkforcePoolId()
```

`google.string.withWorkforcePoolId` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the workforce_pool_id field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `workforce_pool_id` field.


## obj oidc



### fn oidc.new

```ts
new()
```


`google.iam_workforce_pool_provider.oidc.new` constructs a new object with attributes and blocks configured for the `oidc`
Terraform sub block.



**Args**:
  - `client_id` (`string`): The client ID. Must match the audience claim of the JWT issued by the identity provider.
  - `issuer_uri` (`string`): The OIDC issuer URI. Must be a valid URI using the &#39;https&#39; scheme.
  - `web_sso_config` (`list[obj]`): Configuration for web single sign-on for the OIDC provider. Here, web sign-in refers to console sign-in and gcloud sign-in through the browser. When `null`, the `web_sso_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.iam_workforce_pool_provider.oidc.web_sso_config.new](#fn-oidcweb_sso_confignew) constructor.

**Returns**:
  - An attribute object that represents the `oidc` sub block.


## obj oidc.web_sso_config



### fn oidc.web_sso_config.new

```ts
new()
```


`google.iam_workforce_pool_provider.oidc.web_sso_config.new` constructs a new object with attributes and blocks configured for the `web_sso_config`
Terraform sub block.



**Args**:
  - `assertion_claims_behavior` (`string`): The behavior for how OIDC Claims are included in the &#39;assertion&#39; object used for attribute mapping and attribute condition.
* ONLY_ID_TOKEN_CLAIMS: Only include ID Token Claims. Possible values: [&#34;ONLY_ID_TOKEN_CLAIMS&#34;]
  - `response_type` (`string`): The Response Type to request for in the OIDC Authorization Request for web sign-in.
* ID_TOKEN: The &#39;response_type=id_token&#39; selection uses the Implicit Flow for web sign-in. Possible values: [&#34;ID_TOKEN&#34;]

**Returns**:
  - An attribute object that represents the `web_sso_config` sub block.


## obj saml



### fn saml.new

```ts
new()
```


`google.iam_workforce_pool_provider.saml.new` constructs a new object with attributes and blocks configured for the `saml`
Terraform sub block.



**Args**:
  - `idp_metadata_xml` (`string`): SAML Identity provider configuration metadata xml doc.
The xml document should comply with [SAML 2.0 specification](https://docs.oasis-open.org/security/saml/v2.0/saml-metadata-2.0-os.pdf).
The max size of the acceptable xml document will be bounded to 128k characters.

The metadata xml document should satisfy the following constraints:
1) Must contain an Identity Provider Entity ID.
2) Must contain at least one non-expired signing key certificate.
3) For each signing key:
  a) Valid from should be no more than 7 days from now.
  b) Valid to should be no more than 10 years in the future.
4) Up to 3 IdP signing keys are allowed in the metadata xml.

When updating the provider&#39;s metadata xml, at least one non-expired signing key
must overlap with the existing metadata. This requirement is skipped if there are
no non-expired signing keys present in the existing metadata.

**Returns**:
  - An attribute object that represents the `saml` sub block.


## obj timeouts



### fn timeouts.new

```ts
new()
```


`google.iam_workforce_pool_provider.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`
Terraform sub block.



**Args**:
  - `create` (`string`): Set the `create` field on the resulting object. When `null`, the `create` field will be omitted from the resulting object.
  - `delete` (`string`): Set the `delete` field on the resulting object. When `null`, the `delete` field will be omitted from the resulting object.
  - `update` (`string`): Set the `update` field on the resulting object. When `null`, the `update` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `timeouts` sub block.
