---
permalink: /identity_platform_tenant_inbound_saml_config/
---

# identity_platform_tenant_inbound_saml_config

`identity_platform_tenant_inbound_saml_config` represents the `google_identity_platform_tenant_inbound_saml_config` Terraform resource.



This package contains functions and utilities for setting up the resource using Jsonnet code.


## Index

* [`fn new()`](#fn-new)
* [`fn newAttrs()`](#fn-newattrs)
* [`fn withDisplayName()`](#fn-withdisplayname)
* [`fn withEnabled()`](#fn-withenabled)
* [`fn withIdpConfig()`](#fn-withidpconfig)
* [`fn withIdpConfigMixin()`](#fn-withidpconfigmixin)
* [`fn withName()`](#fn-withname)
* [`fn withProject()`](#fn-withproject)
* [`fn withSpConfig()`](#fn-withspconfig)
* [`fn withSpConfigMixin()`](#fn-withspconfigmixin)
* [`fn withTenant()`](#fn-withtenant)
* [`fn withTimeouts()`](#fn-withtimeouts)
* [`fn withTimeoutsMixin()`](#fn-withtimeoutsmixin)
* [`obj idp_config`](#obj-idp_config)
  * [`fn new()`](#fn-idp_confignew)
  * [`obj idp_config.idp_certificates`](#obj-idp_configidp_certificates)
    * [`fn new()`](#fn-idp_configidp_certificatesnew)
* [`obj sp_config`](#obj-sp_config)
  * [`fn new()`](#fn-sp_confignew)
* [`obj timeouts`](#obj-timeouts)
  * [`fn new()`](#fn-timeoutsnew)

## Fields

### fn new

```ts
new()
```


`google.identity_platform_tenant_inbound_saml_config.new` injects a new `google_identity_platform_tenant_inbound_saml_config` Terraform `resource`
block into the root module document.

Additionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the
resource. For example, if you added a new instance to the root using:

    # arguments omitted for brevity
    google.identity_platform_tenant_inbound_saml_config.new('some_id')

You can get the reference to the `id` field of the created `google.identity_platform_tenant_inbound_saml_config` using the reference:

    $._ref.google_identity_platform_tenant_inbound_saml_config.some_id.get('id')

This is the same as directly entering `"${ google_identity_platform_tenant_inbound_saml_config.some_id.id }"` as the value.

NOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,
or `$` to refer to the root object. Instead, make an explicit outer object using `local`.

**Args**:
  - `resourceLabel` (`string`): The name label of the block.
  - `display_name` (`string`): Human friendly display name.
  - `enabled` (`bool`): If this config allows users to sign in with the provider. When `null`, the `enabled` field will be omitted from the resulting object.
  - `name` (`string`): The name of the InboundSamlConfig resource. Must start with &#39;saml.&#39; and can only have alphanumeric characters,
hyphens, underscores or periods. The part after &#39;saml.&#39; must also start with a lowercase letter, end with an
alphanumeric character, and have at least 2 characters.
  - `project` (`string`): Set the `project` field on the resulting resource block. When `null`, the `project` field will be omitted from the resulting object.
  - `tenant` (`string`): The name of the tenant where this inbound SAML config resource exists
  - `idp_config` (`list[obj]`): SAML IdP configuration when the project acts as the relying party When `null`, the `idp_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.identity_platform_tenant_inbound_saml_config.idp_config.new](#fn-idp_confignew) constructor.
  - `sp_config` (`list[obj]`): SAML SP (Service Provider) configuration when the project acts as the relying party to receive
and accept an authentication assertion issued by a SAML identity provider. When `null`, the `sp_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.identity_platform_tenant_inbound_saml_config.sp_config.new](#fn-sp_confignew) constructor.
  - `timeouts` (`obj`): Set the `timeouts` field on the resulting resource block. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.identity_platform_tenant_inbound_saml_config.timeouts.new](#fn-timeoutsnew) constructor.

**Returns**:
- A mixin object that injects the new resource into the root Terraform configuration.


### fn newAttrs

```ts
newAttrs()
```


`google.identity_platform_tenant_inbound_saml_config.newAttrs` constructs a new object with attributes and blocks configured for the `identity_platform_tenant_inbound_saml_config`
Terraform resource.

Unlike [google.identity_platform_tenant_inbound_saml_config.new](#fn-new), this function will not inject the `resource`
block into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the
[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.

This is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to
injecting into a complete block.

**Args**:
  - `display_name` (`string`): Human friendly display name.
  - `enabled` (`bool`): If this config allows users to sign in with the provider. When `null`, the `enabled` field will be omitted from the resulting object.
  - `name` (`string`): The name of the InboundSamlConfig resource. Must start with &#39;saml.&#39; and can only have alphanumeric characters,
hyphens, underscores or periods. The part after &#39;saml.&#39; must also start with a lowercase letter, end with an
alphanumeric character, and have at least 2 characters.
  - `project` (`string`): Set the `project` field on the resulting object. When `null`, the `project` field will be omitted from the resulting object.
  - `tenant` (`string`): The name of the tenant where this inbound SAML config resource exists
  - `idp_config` (`list[obj]`): SAML IdP configuration when the project acts as the relying party When `null`, the `idp_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.identity_platform_tenant_inbound_saml_config.idp_config.new](#fn-idp_confignew) constructor.
  - `sp_config` (`list[obj]`): SAML SP (Service Provider) configuration when the project acts as the relying party to receive
and accept an authentication assertion issued by a SAML identity provider. When `null`, the `sp_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.identity_platform_tenant_inbound_saml_config.sp_config.new](#fn-sp_confignew) constructor.
  - `timeouts` (`obj`): Set the `timeouts` field on the resulting object. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.identity_platform_tenant_inbound_saml_config.timeouts.new](#fn-timeoutsnew) constructor.

**Returns**:
  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `identity_platform_tenant_inbound_saml_config` resource into the root Terraform configuration.


### fn withDisplayName

```ts
withDisplayName()
```

`google.string.withDisplayName` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the display_name field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `display_name` field.


### fn withEnabled

```ts
withEnabled()
```

`google.bool.withEnabled` constructs a mixin object that can be merged into the `bool`
Terraform resource block to set or update the enabled field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`bool`): The value to set for the `enabled` field.


### fn withIdpConfig

```ts
withIdpConfig()
```

`google.list[obj].withIdpConfig` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the idp_config field.

This function will replace the array with the passed in `value`. If you wish to instead append the
passed in value to the existing array, use the [google.list[obj].withIdpConfigMixin](TODO) function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `idp_config` field.


### fn withIdpConfigMixin

```ts
withIdpConfigMixin()
```

`google.list[obj].withIdpConfigMixin` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the idp_config field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google.list[obj].withIdpConfig](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `idp_config` field.


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


### fn withSpConfig

```ts
withSpConfig()
```

`google.list[obj].withSpConfig` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the sp_config field.

This function will replace the array with the passed in `value`. If you wish to instead append the
passed in value to the existing array, use the [google.list[obj].withSpConfigMixin](TODO) function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `sp_config` field.


### fn withSpConfigMixin

```ts
withSpConfigMixin()
```

`google.list[obj].withSpConfigMixin` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the sp_config field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google.list[obj].withSpConfig](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `sp_config` field.


### fn withTenant

```ts
withTenant()
```

`google.string.withTenant` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the tenant field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `tenant` field.


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


## obj idp_config



### fn idp_config.new

```ts
new()
```


`google.identity_platform_tenant_inbound_saml_config.idp_config.new` constructs a new object with attributes and blocks configured for the `idp_config`
Terraform sub block.



**Args**:
  - `idp_entity_id` (`string`): Unique identifier for all SAML entities
  - `sign_request` (`bool`): Indicates if outbounding SAMLRequest should be signed. When `null`, the `sign_request` field will be omitted from the resulting object.
  - `sso_url` (`string`): URL to send Authentication request to.
  - `idp_certificates` (`list[obj]`): The IDP&#39;s certificate data to verify the signature in the SAMLResponse issued by the IDP. When `null`, the `idp_certificates` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.identity_platform_tenant_inbound_saml_config.idp_config.idp_certificates.new](#fn-idp_configidp_certificatesnew) constructor.

**Returns**:
  - An attribute object that represents the `idp_config` sub block.


## obj idp_config.idp_certificates



### fn idp_config.idp_certificates.new

```ts
new()
```


`google.identity_platform_tenant_inbound_saml_config.idp_config.idp_certificates.new` constructs a new object with attributes and blocks configured for the `idp_certificates`
Terraform sub block.



**Args**:
  - `x509_certificate` (`string`): The x509 certificate When `null`, the `x509_certificate` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `idp_certificates` sub block.


## obj sp_config



### fn sp_config.new

```ts
new()
```


`google.identity_platform_tenant_inbound_saml_config.sp_config.new` constructs a new object with attributes and blocks configured for the `sp_config`
Terraform sub block.



**Args**:
  - `callback_uri` (`string`): Callback URI where responses from IDP are handled. Must start with &#39;https://&#39;.
  - `sp_entity_id` (`string`): Unique identifier for all SAML entities.

**Returns**:
  - An attribute object that represents the `sp_config` sub block.


## obj timeouts



### fn timeouts.new

```ts
new()
```


`google.identity_platform_tenant_inbound_saml_config.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`
Terraform sub block.



**Args**:
  - `create` (`string`): Set the `create` field on the resulting object. When `null`, the `create` field will be omitted from the resulting object.
  - `delete` (`string`): Set the `delete` field on the resulting object. When `null`, the `delete` field will be omitted from the resulting object.
  - `update` (`string`): Set the `update` field on the resulting object. When `null`, the `update` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `timeouts` sub block.
