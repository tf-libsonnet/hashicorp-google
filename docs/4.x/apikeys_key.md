---
permalink: /apikeys_key/
---

# apikeys_key

`apikeys_key` represents the `google_apikeys_key` Terraform resource.



This package contains functions and utilities for setting up the resource using Jsonnet code.


## Index

* [`fn new()`](#fn-new)
* [`fn newAttrs()`](#fn-newattrs)
* [`fn withDisplayName()`](#fn-withdisplayname)
* [`fn withName()`](#fn-withname)
* [`fn withProject()`](#fn-withproject)
* [`fn withRestrictions()`](#fn-withrestrictions)
* [`fn withRestrictionsMixin()`](#fn-withrestrictionsmixin)
* [`fn withTimeouts()`](#fn-withtimeouts)
* [`fn withTimeoutsMixin()`](#fn-withtimeoutsmixin)
* [`obj restrictions`](#obj-restrictions)
  * [`fn new()`](#fn-restrictionsnew)
  * [`obj restrictions.android_key_restrictions`](#obj-restrictionsandroid_key_restrictions)
    * [`fn new()`](#fn-restrictionsandroid_key_restrictionsnew)
    * [`obj restrictions.android_key_restrictions.allowed_applications`](#obj-restrictionsandroid_key_restrictionsallowed_applications)
      * [`fn new()`](#fn-restrictionsandroid_key_restrictionsallowed_applicationsnew)
  * [`obj restrictions.api_targets`](#obj-restrictionsapi_targets)
    * [`fn new()`](#fn-restrictionsapi_targetsnew)
  * [`obj restrictions.browser_key_restrictions`](#obj-restrictionsbrowser_key_restrictions)
    * [`fn new()`](#fn-restrictionsbrowser_key_restrictionsnew)
  * [`obj restrictions.ios_key_restrictions`](#obj-restrictionsios_key_restrictions)
    * [`fn new()`](#fn-restrictionsios_key_restrictionsnew)
  * [`obj restrictions.server_key_restrictions`](#obj-restrictionsserver_key_restrictions)
    * [`fn new()`](#fn-restrictionsserver_key_restrictionsnew)
* [`obj timeouts`](#obj-timeouts)
  * [`fn new()`](#fn-timeoutsnew)

## Fields

### fn new

```ts
new()
```


`google.apikeys_key.new` injects a new `google_apikeys_key` Terraform `resource`
block into the root module document.

Additionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the
resource. For example, if you added a new instance to the root using:

    # arguments omitted for brevity
    google.apikeys_key.new('some_id')

You can get the reference to the `id` field of the created `google.apikeys_key` using the reference:

    $._ref.google_apikeys_key.some_id.get('id')

This is the same as directly entering `"${ google_apikeys_key.some_id.id }"` as the value.

NOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,
or `$` to refer to the root object. Instead, make an explicit outer object using `local`.

**Args**:
  - `resourceLabel` (`string`): The name label of the block.
  - `display_name` (`string`): Human-readable display name of this API key. Modifiable by user. When `null`, the `display_name` field will be omitted from the resulting object.
  - `name` (`string`): The resource name of the key. The name must be unique within the project, must conform with RFC-1034, is restricted to lower-cased letters, and has a maximum length of 63 characters. In another word, the name must match the regular expression: `[a-z]([a-z0-9-]{0,61}[a-z0-9])?`.
  - `project` (`string`): The project for the resource When `null`, the `project` field will be omitted from the resulting object.
  - `restrictions` (`list[obj]`): Key restrictions. When `null`, the `restrictions` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.apikeys_key.restrictions.new](#fn-apikeyskeyrestrictionsnew) constructor.
  - `timeouts` (`obj`):  When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.apikeys_key.timeouts.new](#fn-apikeyskeytimeoutsnew) constructor.

**Returns**:
- A mixin object that injects the new resource into the root Terraform configuration.


### fn newAttrs

```ts
newAttrs()
```


`google.apikeys_key.newAttrs` constructs a new object with attributes and blocks configured for the `apikeys_key`
Terraform resource.

Unlike [google.apikeys_key.new](#fn-apikeyskeynew), this function will not inject the `resource`
block into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the
[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.

This is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to
injecting into a complete block.

**Args**:
  - `display_name` (`string`): Human-readable display name of this API key. Modifiable by user. When `null`, the `display_name` field will be omitted from the resulting object.
  - `name` (`string`): The resource name of the key. The name must be unique within the project, must conform with RFC-1034, is restricted to lower-cased letters, and has a maximum length of 63 characters. In another word, the name must match the regular expression: `[a-z]([a-z0-9-]{0,61}[a-z0-9])?`.
  - `project` (`string`): The project for the resource When `null`, the `project` field will be omitted from the resulting object.
  - `restrictions` (`list[obj]`): Key restrictions. When `null`, the `restrictions` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.apikeys_key.restrictions.new](#fn-apikeyskeyrestrictionsnew) constructor.
  - `timeouts` (`obj`):  When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.apikeys_key.timeouts.new](#fn-apikeyskeytimeoutsnew) constructor.

**Returns**:
  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `apikeys_key` resource into the root Terraform configuration.


### fn withDisplayName

```ts
withDisplayName()
```

`google.string.withDisplayName` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the display_name field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `display_name` field.


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


### fn withRestrictions

```ts
withRestrictions()
```

`google.list[obj].withRestrictions` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the restrictions field.

This function will replace the array with the passed in `value`. If you wish to instead append the
passed in value to the existing array, use the [google.list[obj].withRestrictionsMixin](TODO) function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `restrictions` field.


### fn withRestrictionsMixin

```ts
withRestrictionsMixin()
```

`google.list[obj].withRestrictionsMixin` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the restrictions field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google.list[obj].withRestrictions](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `restrictions` field.


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


## obj restrictions



### fn restrictions.new

```ts
new()
```


`google.apikeys_key.restrictions.new` constructs a new object with attributes and blocks configured for the `restrictions`
Terraform sub block.



**Args**:
  - `android_key_restrictions` (`list[obj]`): The Android apps that are allowed to use the key. When `null`, the `android_key_restrictions` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.apikeys_key.restrictions.android_key_restrictions.new](#fn-restrictionsandroidkeyrestrictionsnew) constructor.
  - `api_targets` (`list[obj]`): A restriction for a specific service and optionally one or more specific methods. Requests are allowed if they match any of these restrictions. If no restrictions are specified, all targets are allowed. When `null`, the `api_targets` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.apikeys_key.restrictions.api_targets.new](#fn-restrictionsapitargetsnew) constructor.
  - `browser_key_restrictions` (`list[obj]`): The HTTP referrers (websites) that are allowed to use the key. When `null`, the `browser_key_restrictions` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.apikeys_key.restrictions.browser_key_restrictions.new](#fn-restrictionsbrowserkeyrestrictionsnew) constructor.
  - `ios_key_restrictions` (`list[obj]`): The iOS apps that are allowed to use the key. When `null`, the `ios_key_restrictions` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.apikeys_key.restrictions.ios_key_restrictions.new](#fn-restrictionsioskeyrestrictionsnew) constructor.
  - `server_key_restrictions` (`list[obj]`): The IP addresses of callers that are allowed to use the key. When `null`, the `server_key_restrictions` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.apikeys_key.restrictions.server_key_restrictions.new](#fn-restrictionsserverkeyrestrictionsnew) constructor.

**Returns**:
  - An attribute object that represents the `restrictions` sub block.


## obj restrictions.android_key_restrictions



### fn restrictions.android_key_restrictions.new

```ts
new()
```


`google.apikeys_key.restrictions.android_key_restrictions.new` constructs a new object with attributes and blocks configured for the `android_key_restrictions`
Terraform sub block.



**Args**:
  - `allowed_applications` (`list[obj]`): A list of Android applications that are allowed to make API calls with this key. When `null`, the `allowed_applications` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.apikeys_key.restrictions.android_key_restrictions.allowed_applications.new](#fn-androidkeyrestrictionsallowedapplicationsnew) constructor.

**Returns**:
  - An attribute object that represents the `android_key_restrictions` sub block.


## obj restrictions.android_key_restrictions.allowed_applications



### fn restrictions.android_key_restrictions.allowed_applications.new

```ts
new()
```


`google.apikeys_key.restrictions.android_key_restrictions.allowed_applications.new` constructs a new object with attributes and blocks configured for the `allowed_applications`
Terraform sub block.



**Args**:
  - `package_name` (`string`): The package name of the application.
  - `sha1_fingerprint` (`string`): The SHA1 fingerprint of the application. For example, both sha1 formats are acceptable : DA:39:A3:EE:5E:6B:4B:0D:32:55:BF:EF:95:60:18:90:AF:D8:07:09 or DA39A3EE5E6B4B0D3255BFEF95601890AFD80709. Output format is the latter.

**Returns**:
  - An attribute object that represents the `allowed_applications` sub block.


## obj restrictions.api_targets



### fn restrictions.api_targets.new

```ts
new()
```


`google.apikeys_key.restrictions.api_targets.new` constructs a new object with attributes and blocks configured for the `api_targets`
Terraform sub block.



**Args**:
  - `methods` (`list`): Optional. List of one or more methods that can be called. If empty, all methods for the service are allowed. A wildcard (*) can be used as the last symbol. Valid examples: `google.cloud.translate.v2.TranslateService.GetSupportedLanguage` `TranslateText` `Get*` `translate.googleapis.com.Get*` When `null`, the `methods` field will be omitted from the resulting object.
  - `service` (`string`): The service for this restriction. It should be the canonical service name, for example: `translate.googleapis.com`. You can use `gcloud services list` to get a list of services that are enabled in the project.

**Returns**:
  - An attribute object that represents the `api_targets` sub block.


## obj restrictions.browser_key_restrictions



### fn restrictions.browser_key_restrictions.new

```ts
new()
```


`google.apikeys_key.restrictions.browser_key_restrictions.new` constructs a new object with attributes and blocks configured for the `browser_key_restrictions`
Terraform sub block.



**Args**:
  - `allowed_referrers` (`list`): A list of regular expressions for the referrer URLs that are allowed to make API calls with this key.

**Returns**:
  - An attribute object that represents the `browser_key_restrictions` sub block.


## obj restrictions.ios_key_restrictions



### fn restrictions.ios_key_restrictions.new

```ts
new()
```


`google.apikeys_key.restrictions.ios_key_restrictions.new` constructs a new object with attributes and blocks configured for the `ios_key_restrictions`
Terraform sub block.



**Args**:
  - `allowed_bundle_ids` (`list`): A list of bundle IDs that are allowed when making API calls with this key.

**Returns**:
  - An attribute object that represents the `ios_key_restrictions` sub block.


## obj restrictions.server_key_restrictions



### fn restrictions.server_key_restrictions.new

```ts
new()
```


`google.apikeys_key.restrictions.server_key_restrictions.new` constructs a new object with attributes and blocks configured for the `server_key_restrictions`
Terraform sub block.



**Args**:
  - `allowed_ips` (`list`): A list of the caller IP addresses that are allowed to make API calls with this key.

**Returns**:
  - An attribute object that represents the `server_key_restrictions` sub block.


## obj timeouts



### fn timeouts.new

```ts
new()
```


`google.apikeys_key.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`
Terraform sub block.



**Args**:
  - `create` (`string`):  When `null`, the `create` field will be omitted from the resulting object.
  - `delete` (`string`):  When `null`, the `delete` field will be omitted from the resulting object.
  - `update` (`string`):  When `null`, the `update` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `timeouts` sub block.
