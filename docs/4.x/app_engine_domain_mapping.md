---
permalink: /app_engine_domain_mapping/
---

# app_engine_domain_mapping

`app_engine_domain_mapping` represents the `google_app_engine_domain_mapping` Terraform resource.



This package contains functions and utilities for setting up the resource using Jsonnet code.


## Index

* [`fn new()`](#fn-new)
* [`fn newAttrs()`](#fn-newattrs)
* [`fn withDomainName()`](#fn-withdomainname)
* [`fn withOverrideStrategy()`](#fn-withoverridestrategy)
* [`fn withProject()`](#fn-withproject)
* [`fn withSslSettings()`](#fn-withsslsettings)
* [`fn withSslSettingsMixin()`](#fn-withsslsettingsmixin)
* [`fn withTimeouts()`](#fn-withtimeouts)
* [`fn withTimeoutsMixin()`](#fn-withtimeoutsmixin)
* [`obj ssl_settings`](#obj-ssl_settings)
  * [`fn new()`](#fn-ssl_settingsnew)
* [`obj timeouts`](#obj-timeouts)
  * [`fn new()`](#fn-timeoutsnew)

## Fields

### fn new

```ts
new()
```


`google.app_engine_domain_mapping.new` injects a new `google_app_engine_domain_mapping` Terraform `resource`
block into the root module document.

Additionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the
resource. For example, if you added a new instance to the root using:

    # arguments omitted for brevity
    google.app_engine_domain_mapping.new('some_id')

You can get the reference to the `id` field of the created `google.app_engine_domain_mapping` using the reference:

    $._ref.google_app_engine_domain_mapping.some_id.get('id')

This is the same as directly entering `"${ google_app_engine_domain_mapping.some_id.id }"` as the value.

NOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,
or `$` to refer to the root object. Instead, make an explicit outer object using `local`.

**Args**:
  - `resourceLabel` (`string`): The name label of the block.
  - `domain_name` (`string`): Relative name of the domain serving the application. Example: example.com.
  - `override_strategy` (`string`): Whether the domain creation should override any existing mappings for this domain.
By default, overrides are rejected. Default value: &#34;STRICT&#34; Possible values: [&#34;STRICT&#34;, &#34;OVERRIDE&#34;] When `null`, the `override_strategy` field will be omitted from the resulting object.
  - `project` (`string`):  When `null`, the `project` field will be omitted from the resulting object.
  - `ssl_settings` (`list[obj]`): SSL configuration for this domain. If unconfigured, this domain will not serve with SSL. When `null`, the `ssl_settings` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.app_engine_domain_mapping.ssl_settings.new](#fn-appenginedomainmappingsslsettingsnew) constructor.
  - `timeouts` (`obj`):  When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.app_engine_domain_mapping.timeouts.new](#fn-appenginedomainmappingtimeoutsnew) constructor.

**Returns**:
- A mixin object that injects the new resource into the root Terraform configuration.


### fn newAttrs

```ts
newAttrs()
```


`google.app_engine_domain_mapping.newAttrs` constructs a new object with attributes and blocks configured for the `app_engine_domain_mapping`
Terraform resource.

Unlike [google.app_engine_domain_mapping.new](#fn-appenginedomainmappingnew), this function will not inject the `resource`
block into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the
[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.

This is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to
injecting into a complete block.

**Args**:
  - `domain_name` (`string`): Relative name of the domain serving the application. Example: example.com.
  - `override_strategy` (`string`): Whether the domain creation should override any existing mappings for this domain.
By default, overrides are rejected. Default value: &#34;STRICT&#34; Possible values: [&#34;STRICT&#34;, &#34;OVERRIDE&#34;] When `null`, the `override_strategy` field will be omitted from the resulting object.
  - `project` (`string`):  When `null`, the `project` field will be omitted from the resulting object.
  - `ssl_settings` (`list[obj]`): SSL configuration for this domain. If unconfigured, this domain will not serve with SSL. When `null`, the `ssl_settings` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.app_engine_domain_mapping.ssl_settings.new](#fn-appenginedomainmappingsslsettingsnew) constructor.
  - `timeouts` (`obj`):  When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.app_engine_domain_mapping.timeouts.new](#fn-appenginedomainmappingtimeoutsnew) constructor.

**Returns**:
  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `app_engine_domain_mapping` resource into the root Terraform configuration.


### fn withDomainName

```ts
withDomainName()
```

`google.string.withDomainName` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the domain_name field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `domain_name` field.


### fn withOverrideStrategy

```ts
withOverrideStrategy()
```

`google.string.withOverrideStrategy` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the override_strategy field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `override_strategy` field.


### fn withProject

```ts
withProject()
```

`google.string.withProject` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the project field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `project` field.


### fn withSslSettings

```ts
withSslSettings()
```

`google.list[obj].withSslSettings` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the ssl_settings field.

This function will replace the array with the passed in `value`. If you wish to instead append the
passed in value to the existing array, use the [google.list[obj].withSslSettingsMixin](TODO) function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `ssl_settings` field.


### fn withSslSettingsMixin

```ts
withSslSettingsMixin()
```

`google.list[obj].withSslSettingsMixin` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the ssl_settings field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google.list[obj].withSslSettings](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `ssl_settings` field.


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


## obj ssl_settings



### fn ssl_settings.new

```ts
new()
```


`google.app_engine_domain_mapping.ssl_settings.new` constructs a new object with attributes and blocks configured for the `ssl_settings`
Terraform sub block.



**Args**:
  - `certificate_id` (`string`): ID of the AuthorizedCertificate resource configuring SSL for the application. Clearing this field will
remove SSL support.
By default, a managed certificate is automatically created for every domain mapping. To omit SSL support
or to configure SSL manually, specify &#39;SslManagementType.MANUAL&#39; on a &#39;CREATE&#39; or &#39;UPDATE&#39; request. You must be
authorized to administer the &#39;AuthorizedCertificate&#39; resource to manually map it to a DomainMapping resource.
Example: 12345. When `null`, the `certificate_id` field will be omitted from the resulting object.
  - `ssl_management_type` (`string`): SSL management type for this domain. If &#39;AUTOMATIC&#39;, a managed certificate is automatically provisioned.
If &#39;MANUAL&#39;, &#39;certificateId&#39; must be manually specified in order to configure SSL for this domain. Possible values: [&#34;AUTOMATIC&#34;, &#34;MANUAL&#34;]

**Returns**:
  - An attribute object that represents the `ssl_settings` sub block.


## obj timeouts



### fn timeouts.new

```ts
new()
```


`google.app_engine_domain_mapping.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`
Terraform sub block.



**Args**:
  - `create` (`string`):  When `null`, the `create` field will be omitted from the resulting object.
  - `delete` (`string`):  When `null`, the `delete` field will be omitted from the resulting object.
  - `update` (`string`):  When `null`, the `update` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `timeouts` sub block.
