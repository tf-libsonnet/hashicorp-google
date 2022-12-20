---
permalink: /app_engine_application/
---

# app_engine_application

`app_engine_application` represents the `google_app_engine_application` Terraform resource.



This package contains functions and utilities for setting up the resource using Jsonnet code.


## Index

* [`fn new()`](#fn-new)
* [`fn newAttrs()`](#fn-newattrs)
* [`fn withAuthDomain()`](#fn-withauthdomain)
* [`fn withDatabaseType()`](#fn-withdatabasetype)
* [`fn withFeatureSettings()`](#fn-withfeaturesettings)
* [`fn withFeatureSettingsMixin()`](#fn-withfeaturesettingsmixin)
* [`fn withIap()`](#fn-withiap)
* [`fn withIapMixin()`](#fn-withiapmixin)
* [`fn withLocationId()`](#fn-withlocationid)
* [`fn withProject()`](#fn-withproject)
* [`fn withServingStatus()`](#fn-withservingstatus)
* [`fn withTimeouts()`](#fn-withtimeouts)
* [`fn withTimeoutsMixin()`](#fn-withtimeoutsmixin)
* [`obj feature_settings`](#obj-feature_settings)
  * [`fn new()`](#fn-feature_settingsnew)
* [`obj iap`](#obj-iap)
  * [`fn new()`](#fn-iapnew)
* [`obj timeouts`](#obj-timeouts)
  * [`fn new()`](#fn-timeoutsnew)

## Fields

### fn new

```ts
new()
```


`google.app_engine_application.new` injects a new `google_app_engine_application` Terraform `resource`
block into the root module document.

Additionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the
resource. For example, if you added a new instance to the root using:

    # arguments omitted for brevity
    google.app_engine_application.new('some_id')

You can get the reference to the `id` field of the created `google.app_engine_application` using the reference:

    $._ref.google_app_engine_application.some_id.get('id')

This is the same as directly entering `"${ google_app_engine_application.some_id.id }"` as the value.

NOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,
or `$` to refer to the root object. Instead, make an explicit outer object using `local`.

**Args**:
  - `resourceLabel` (`string`): The name label of the block.
  - `auth_domain` (`string`): The domain to authenticate users with when using App Engine&#39;s User API. When `null`, the `auth_domain` field will be omitted from the resulting object.
  - `database_type` (`string`):  When `null`, the `database_type` field will be omitted from the resulting object.
  - `location_id` (`string`): The location to serve the app from.
  - `project` (`string`): The project ID to create the application under. When `null`, the `project` field will be omitted from the resulting object.
  - `serving_status` (`string`): The serving status of the app. When `null`, the `serving_status` field will be omitted from the resulting object.
  - `feature_settings` (`list[obj]`): A block of optional settings to configure specific App Engine features: When `null`, the `feature_settings` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.app_engine_application.feature_settings.new](#fn-feature_settingsnew) constructor.
  - `iap` (`list[obj]`): Settings for enabling Cloud Identity Aware Proxy When `null`, the `iap` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.app_engine_application.iap.new](#fn-iapnew) constructor.
  - `timeouts` (`obj`):  When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.app_engine_application.timeouts.new](#fn-timeoutsnew) constructor.

**Returns**:
- A mixin object that injects the new resource into the root Terraform configuration.


### fn newAttrs

```ts
newAttrs()
```


`google.app_engine_application.newAttrs` constructs a new object with attributes and blocks configured for the `app_engine_application`
Terraform resource.

Unlike [google.app_engine_application.new](#fn-new), this function will not inject the `resource`
block into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the
[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.

This is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to
injecting into a complete block.

**Args**:
  - `auth_domain` (`string`): The domain to authenticate users with when using App Engine&#39;s User API. When `null`, the `auth_domain` field will be omitted from the resulting object.
  - `database_type` (`string`):  When `null`, the `database_type` field will be omitted from the resulting object.
  - `location_id` (`string`): The location to serve the app from.
  - `project` (`string`): The project ID to create the application under. When `null`, the `project` field will be omitted from the resulting object.
  - `serving_status` (`string`): The serving status of the app. When `null`, the `serving_status` field will be omitted from the resulting object.
  - `feature_settings` (`list[obj]`): A block of optional settings to configure specific App Engine features: When `null`, the `feature_settings` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.app_engine_application.feature_settings.new](#fn-feature_settingsnew) constructor.
  - `iap` (`list[obj]`): Settings for enabling Cloud Identity Aware Proxy When `null`, the `iap` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.app_engine_application.iap.new](#fn-iapnew) constructor.
  - `timeouts` (`obj`):  When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.app_engine_application.timeouts.new](#fn-timeoutsnew) constructor.

**Returns**:
  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `app_engine_application` resource into the root Terraform configuration.


### fn withAuthDomain

```ts
withAuthDomain()
```

`google.string.withAuthDomain` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the auth_domain field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `auth_domain` field.


### fn withDatabaseType

```ts
withDatabaseType()
```

`google.string.withDatabaseType` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the database_type field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `database_type` field.


### fn withFeatureSettings

```ts
withFeatureSettings()
```

`google.list[obj].withFeatureSettings` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the feature_settings field.

This function will replace the array with the passed in `value`. If you wish to instead append the
passed in value to the existing array, use the [google.list[obj].withFeatureSettingsMixin](TODO) function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `feature_settings` field.


### fn withFeatureSettingsMixin

```ts
withFeatureSettingsMixin()
```

`google.list[obj].withFeatureSettingsMixin` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the feature_settings field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google.list[obj].withFeatureSettings](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `feature_settings` field.


### fn withIap

```ts
withIap()
```

`google.list[obj].withIap` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the iap field.

This function will replace the array with the passed in `value`. If you wish to instead append the
passed in value to the existing array, use the [google.list[obj].withIapMixin](TODO) function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `iap` field.


### fn withIapMixin

```ts
withIapMixin()
```

`google.list[obj].withIapMixin` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the iap field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google.list[obj].withIap](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `iap` field.


### fn withLocationId

```ts
withLocationId()
```

`google.string.withLocationId` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the location_id field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `location_id` field.


### fn withProject

```ts
withProject()
```

`google.string.withProject` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the project field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `project` field.


### fn withServingStatus

```ts
withServingStatus()
```

`google.string.withServingStatus` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the serving_status field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `serving_status` field.


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


## obj feature_settings



### fn feature_settings.new

```ts
new()
```


`google.app_engine_application.feature_settings.new` constructs a new object with attributes and blocks configured for the `feature_settings`
Terraform sub block.



**Args**:
  - `split_health_checks` (`bool`): 

**Returns**:
  - An attribute object that represents the `feature_settings` sub block.


## obj iap



### fn iap.new

```ts
new()
```


`google.app_engine_application.iap.new` constructs a new object with attributes and blocks configured for the `iap`
Terraform sub block.



**Args**:
  - `enabled` (`bool`): Adapted for use with the app When `null`, the `enabled` field will be omitted from the resulting object.
  - `oauth2_client_id` (`string`): OAuth2 client ID to use for the authentication flow.
  - `oauth2_client_secret` (`string`): OAuth2 client secret to use for the authentication flow. The SHA-256 hash of the value is returned in the oauth2ClientSecretSha256 field.

**Returns**:
  - An attribute object that represents the `iap` sub block.


## obj timeouts



### fn timeouts.new

```ts
new()
```


`google.app_engine_application.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`
Terraform sub block.



**Args**:
  - `create` (`string`):  When `null`, the `create` field will be omitted from the resulting object.
  - `update` (`string`):  When `null`, the `update` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `timeouts` sub block.
