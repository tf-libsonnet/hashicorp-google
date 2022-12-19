---
permalink: /recaptcha_enterprise_key/
---

# recaptcha_enterprise_key

`recaptcha_enterprise_key` represents the `google_recaptcha_enterprise_key` Terraform resource.



This package contains functions and utilities for setting up the resource using Jsonnet code.


## Index

* [`fn new()`](#fn-new)
* [`fn newAttrs()`](#fn-newattrs)
* [`fn withAndroidSettings()`](#fn-withandroidsettings)
* [`fn withAndroidSettingsMixin()`](#fn-withandroidsettingsmixin)
* [`fn withDisplayName()`](#fn-withdisplayname)
* [`fn withIosSettings()`](#fn-withiossettings)
* [`fn withIosSettingsMixin()`](#fn-withiossettingsmixin)
* [`fn withLabels()`](#fn-withlabels)
* [`fn withProject()`](#fn-withproject)
* [`fn withTestingOptions()`](#fn-withtestingoptions)
* [`fn withTestingOptionsMixin()`](#fn-withtestingoptionsmixin)
* [`fn withTimeouts()`](#fn-withtimeouts)
* [`fn withTimeoutsMixin()`](#fn-withtimeoutsmixin)
* [`fn withWebSettings()`](#fn-withwebsettings)
* [`fn withWebSettingsMixin()`](#fn-withwebsettingsmixin)
* [`obj android_settings`](#obj-android_settings)
  * [`fn new()`](#fn-android_settingsnew)
* [`obj ios_settings`](#obj-ios_settings)
  * [`fn new()`](#fn-ios_settingsnew)
* [`obj testing_options`](#obj-testing_options)
  * [`fn new()`](#fn-testing_optionsnew)
* [`obj timeouts`](#obj-timeouts)
  * [`fn new()`](#fn-timeoutsnew)
* [`obj web_settings`](#obj-web_settings)
  * [`fn new()`](#fn-web_settingsnew)

## Fields

### fn new

```ts
new()
```


`google.recaptcha_enterprise_key.new` injects a new `google_recaptcha_enterprise_key` Terraform `resource`
block into the root module document.

Additionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the
resource. For example, if you added a new instance to the root using:

    # arguments omitted for brevity
    google.recaptcha_enterprise_key.new('some_id')

You can get the reference to the `id` field of the created `google.recaptcha_enterprise_key` using the reference:

    $._ref.google_recaptcha_enterprise_key.some_id.get('id')

This is the same as directly entering `"${ google_recaptcha_enterprise_key.some_id.id }"` as the value.

NOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,
or `$` to refer to the root object. Instead, make an explicit outer object using `local`.

**Args**:
  - `resourceLabel` (`string`): The name label of the block.
  - `display_name` (`string`): Human-readable display name of this key. Modifiable by user.
  - `labels` (`obj`): See [Creating and managing labels](https://cloud.google.com/recaptcha-enterprise/docs/labels). When `null`, the `labels` field will be omitted from the resulting object.
  - `project` (`string`): The project for the resource When `null`, the `project` field will be omitted from the resulting object.
  - `android_settings` (`list[obj]`): Settings for keys that can be used by Android apps. When `null`, the `android_settings` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.recaptcha_enterprise_key.android_settings.new](#fn-recaptchaenterprisekeyandroidsettingsnew) constructor.
  - `ios_settings` (`list[obj]`): Settings for keys that can be used by iOS apps. When `null`, the `ios_settings` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.recaptcha_enterprise_key.ios_settings.new](#fn-recaptchaenterprisekeyiossettingsnew) constructor.
  - `testing_options` (`list[obj]`): Options for user acceptance testing. When `null`, the `testing_options` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.recaptcha_enterprise_key.testing_options.new](#fn-recaptchaenterprisekeytestingoptionsnew) constructor.
  - `timeouts` (`obj`):  When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.recaptcha_enterprise_key.timeouts.new](#fn-recaptchaenterprisekeytimeoutsnew) constructor.
  - `web_settings` (`list[obj]`): Settings for keys that can be used by websites. When `null`, the `web_settings` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.recaptcha_enterprise_key.web_settings.new](#fn-recaptchaenterprisekeywebsettingsnew) constructor.

**Returns**:
- A mixin object that injects the new resource into the root Terraform configuration.


### fn newAttrs

```ts
newAttrs()
```


`google.recaptcha_enterprise_key.newAttrs` constructs a new object with attributes and blocks configured for the `recaptcha_enterprise_key`
Terraform resource.

Unlike [google.recaptcha_enterprise_key.new](#fn-recaptchaenterprisekeynew), this function will not inject the `resource`
block into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the
[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.

This is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to
injecting into a complete block.

**Args**:
  - `display_name` (`string`): Human-readable display name of this key. Modifiable by user.
  - `labels` (`obj`): See [Creating and managing labels](https://cloud.google.com/recaptcha-enterprise/docs/labels). When `null`, the `labels` field will be omitted from the resulting object.
  - `project` (`string`): The project for the resource When `null`, the `project` field will be omitted from the resulting object.
  - `android_settings` (`list[obj]`): Settings for keys that can be used by Android apps. When `null`, the `android_settings` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.recaptcha_enterprise_key.android_settings.new](#fn-recaptchaenterprisekeyandroidsettingsnew) constructor.
  - `ios_settings` (`list[obj]`): Settings for keys that can be used by iOS apps. When `null`, the `ios_settings` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.recaptcha_enterprise_key.ios_settings.new](#fn-recaptchaenterprisekeyiossettingsnew) constructor.
  - `testing_options` (`list[obj]`): Options for user acceptance testing. When `null`, the `testing_options` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.recaptcha_enterprise_key.testing_options.new](#fn-recaptchaenterprisekeytestingoptionsnew) constructor.
  - `timeouts` (`obj`):  When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.recaptcha_enterprise_key.timeouts.new](#fn-recaptchaenterprisekeytimeoutsnew) constructor.
  - `web_settings` (`list[obj]`): Settings for keys that can be used by websites. When `null`, the `web_settings` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.recaptcha_enterprise_key.web_settings.new](#fn-recaptchaenterprisekeywebsettingsnew) constructor.

**Returns**:
  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `recaptcha_enterprise_key` resource into the root Terraform configuration.


### fn withAndroidSettings

```ts
withAndroidSettings()
```

`google.list[obj].withAndroidSettings` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the android_settings field.

This function will replace the array with the passed in `value`. If you wish to instead append the
passed in value to the existing array, use the [google.list[obj].withAndroidSettingsMixin](TODO) function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `android_settings` field.


### fn withAndroidSettingsMixin

```ts
withAndroidSettingsMixin()
```

`google.list[obj].withAndroidSettingsMixin` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the android_settings field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google.list[obj].withAndroidSettings](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `android_settings` field.


### fn withDisplayName

```ts
withDisplayName()
```

`google.string.withDisplayName` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the display_name field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `display_name` field.


### fn withIosSettings

```ts
withIosSettings()
```

`google.list[obj].withIosSettings` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the ios_settings field.

This function will replace the array with the passed in `value`. If you wish to instead append the
passed in value to the existing array, use the [google.list[obj].withIosSettingsMixin](TODO) function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `ios_settings` field.


### fn withIosSettingsMixin

```ts
withIosSettingsMixin()
```

`google.list[obj].withIosSettingsMixin` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the ios_settings field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google.list[obj].withIosSettings](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `ios_settings` field.


### fn withLabels

```ts
withLabels()
```

`google.obj.withLabels` constructs a mixin object that can be merged into the `obj`
Terraform resource block to set or update the labels field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`obj`): The value to set for the `labels` field.


### fn withProject

```ts
withProject()
```

`google.string.withProject` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the project field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `project` field.


### fn withTestingOptions

```ts
withTestingOptions()
```

`google.list[obj].withTestingOptions` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the testing_options field.

This function will replace the array with the passed in `value`. If you wish to instead append the
passed in value to the existing array, use the [google.list[obj].withTestingOptionsMixin](TODO) function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `testing_options` field.


### fn withTestingOptionsMixin

```ts
withTestingOptionsMixin()
```

`google.list[obj].withTestingOptionsMixin` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the testing_options field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google.list[obj].withTestingOptions](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `testing_options` field.


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


### fn withWebSettings

```ts
withWebSettings()
```

`google.list[obj].withWebSettings` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the web_settings field.

This function will replace the array with the passed in `value`. If you wish to instead append the
passed in value to the existing array, use the [google.list[obj].withWebSettingsMixin](TODO) function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `web_settings` field.


### fn withWebSettingsMixin

```ts
withWebSettingsMixin()
```

`google.list[obj].withWebSettingsMixin` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the web_settings field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google.list[obj].withWebSettings](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `web_settings` field.


## obj android_settings



### fn android_settings.new

```ts
new()
```


`google.recaptcha_enterprise_key.android_settings.new` constructs a new object with attributes and blocks configured for the `android_settings`
Terraform sub block.



**Args**:
  - `allow_all_package_names` (`bool`): If set to true, it means allowed_package_names will not be enforced. When `null`, the `allow_all_package_names` field will be omitted from the resulting object.
  - `allowed_package_names` (`list`): Android package names of apps allowed to use the key. Example: &#39;com.companyname.appname&#39; When `null`, the `allowed_package_names` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `android_settings` sub block.


## obj ios_settings



### fn ios_settings.new

```ts
new()
```


`google.recaptcha_enterprise_key.ios_settings.new` constructs a new object with attributes and blocks configured for the `ios_settings`
Terraform sub block.



**Args**:
  - `allow_all_bundle_ids` (`bool`): If set to true, it means allowed_bundle_ids will not be enforced. When `null`, the `allow_all_bundle_ids` field will be omitted from the resulting object.
  - `allowed_bundle_ids` (`list`): iOS bundle ids of apps allowed to use the key. Example: &#39;com.companyname.productname.appname&#39; When `null`, the `allowed_bundle_ids` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `ios_settings` sub block.


## obj testing_options



### fn testing_options.new

```ts
new()
```


`google.recaptcha_enterprise_key.testing_options.new` constructs a new object with attributes and blocks configured for the `testing_options`
Terraform sub block.



**Args**:
  - `testing_challenge` (`string`): For challenge-based keys only (CHECKBOX, INVISIBLE), all challenge requests for this site will return nocaptcha if NOCAPTCHA, or an unsolvable challenge if UNSOLVABLE_CHALLENGE. Possible values: TESTING_CHALLENGE_UNSPECIFIED, NOCAPTCHA, UNSOLVABLE_CHALLENGE When `null`, the `testing_challenge` field will be omitted from the resulting object.
  - `testing_score` (`number`): All assessments for this Key will return this score. Must be between 0 (likely not legitimate) and 1 (likely legitimate) inclusive. When `null`, the `testing_score` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `testing_options` sub block.


## obj timeouts



### fn timeouts.new

```ts
new()
```


`google.recaptcha_enterprise_key.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`
Terraform sub block.



**Args**:
  - `create` (`string`):  When `null`, the `create` field will be omitted from the resulting object.
  - `delete` (`string`):  When `null`, the `delete` field will be omitted from the resulting object.
  - `update` (`string`):  When `null`, the `update` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `timeouts` sub block.


## obj web_settings



### fn web_settings.new

```ts
new()
```


`google.recaptcha_enterprise_key.web_settings.new` constructs a new object with attributes and blocks configured for the `web_settings`
Terraform sub block.



**Args**:
  - `allow_all_domains` (`bool`): If set to true, it means allowed_domains will not be enforced. When `null`, the `allow_all_domains` field will be omitted from the resulting object.
  - `allow_amp_traffic` (`bool`): If set to true, the key can be used on AMP (Accelerated Mobile Pages) websites. This is supported only for the SCORE integration type. When `null`, the `allow_amp_traffic` field will be omitted from the resulting object.
  - `allowed_domains` (`list`): Domains or subdomains of websites allowed to use the key. All subdomains of an allowed domain are automatically allowed. A valid domain requires a host and must not include any path, port, query or fragment. Examples: &#39;example.com&#39; or &#39;subdomain.example.com&#39; When `null`, the `allowed_domains` field will be omitted from the resulting object.
  - `challenge_security_preference` (`string`): Settings for the frequency and difficulty at which this key triggers captcha challenges. This should only be specified for IntegrationTypes CHECKBOX and INVISIBLE. Possible values: CHALLENGE_SECURITY_PREFERENCE_UNSPECIFIED, USABILITY, BALANCE, SECURITY When `null`, the `challenge_security_preference` field will be omitted from the resulting object.
  - `integration_type` (`string`): Required. Describes how this key is integrated with the website. Possible values: SCORE, CHECKBOX, INVISIBLE

**Returns**:
  - An attribute object that represents the `web_settings` sub block.
