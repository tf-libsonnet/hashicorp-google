---
permalink: /essential_contacts_contact/
---

# essential_contacts_contact

`essential_contacts_contact` represents the `google_essential_contacts_contact` Terraform resource.



This package contains functions and utilities for setting up the resource using Jsonnet code.


## Index

* [`fn new()`](#fn-new)
* [`fn newAttrs()`](#fn-newattrs)
* [`fn withEmail()`](#fn-withemail)
* [`fn withLanguageTag()`](#fn-withlanguagetag)
* [`fn withNotificationCategorySubscriptions()`](#fn-withnotificationcategorysubscriptions)
* [`fn withParent()`](#fn-withparent)
* [`fn withTimeouts()`](#fn-withtimeouts)
* [`fn withTimeoutsMixin()`](#fn-withtimeoutsmixin)
* [`obj timeouts`](#obj-timeouts)
  * [`fn new()`](#fn-timeoutsnew)

## Fields

### fn new

```ts
new()
```


`google.essential_contacts_contact.new` injects a new `google_essential_contacts_contact` Terraform `resource`
block into the root module document.

Additionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the
resource. For example, if you added a new instance to the root using:

    # arguments omitted for brevity
    google.essential_contacts_contact.new('some_id')

You can get the reference to the `id` field of the created `google.essential_contacts_contact` using the reference:

    $._ref.google_essential_contacts_contact.some_id.get('id')

This is the same as directly entering `"${ google_essential_contacts_contact.some_id.id }"` as the value.

NOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,
or `$` to refer to the root object. Instead, make an explicit outer object using `local`.

**Args**:
  - `resourceLabel` (`string`): The name label of the block.
  - `email` (`string`): The email address to send notifications to. This does not need to be a Google account.
  - `language_tag` (`string`): The preferred language for notifications, as a ISO 639-1 language code. See Supported languages for a list of supported languages.
  - `notification_category_subscriptions` (`list`): The categories of notifications that the contact will receive communications for.
  - `parent` (`string`): The resource to save this contact for. Format: organizations/{organization_id}, folders/{folder_id} or projects/{project_id}
  - `timeouts` (`obj`):  When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.essential_contacts_contact.timeouts.new](#fn-essentialcontactscontacttimeoutsnew) constructor.

**Returns**:
- A mixin object that injects the new resource into the root Terraform configuration.


### fn newAttrs

```ts
newAttrs()
```


`google.essential_contacts_contact.newAttrs` constructs a new object with attributes and blocks configured for the `essential_contacts_contact`
Terraform resource.

Unlike [google.essential_contacts_contact.new](#fn-essentialcontactscontactnew), this function will not inject the `resource`
block into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the
[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.

This is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to
injecting into a complete block.

**Args**:
  - `email` (`string`): The email address to send notifications to. This does not need to be a Google account.
  - `language_tag` (`string`): The preferred language for notifications, as a ISO 639-1 language code. See Supported languages for a list of supported languages.
  - `notification_category_subscriptions` (`list`): The categories of notifications that the contact will receive communications for.
  - `parent` (`string`): The resource to save this contact for. Format: organizations/{organization_id}, folders/{folder_id} or projects/{project_id}
  - `timeouts` (`obj`):  When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.essential_contacts_contact.timeouts.new](#fn-essentialcontactscontacttimeoutsnew) constructor.

**Returns**:
  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `essential_contacts_contact` resource into the root Terraform configuration.


### fn withEmail

```ts
withEmail()
```

`google.string.withEmail` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the email field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `email` field.


### fn withLanguageTag

```ts
withLanguageTag()
```

`google.string.withLanguageTag` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the language_tag field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `language_tag` field.


### fn withNotificationCategorySubscriptions

```ts
withNotificationCategorySubscriptions()
```

`google.list.withNotificationCategorySubscriptions` constructs a mixin object that can be merged into the `list`
Terraform resource block to set or update the notification_category_subscriptions field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list`): The value to set for the `notification_category_subscriptions` field.


### fn withParent

```ts
withParent()
```

`google.string.withParent` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the parent field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `parent` field.


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


## obj timeouts



### fn timeouts.new

```ts
new()
```


`google.essential_contacts_contact.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`
Terraform sub block.



**Args**:
  - `create` (`string`):  When `null`, the `create` field will be omitted from the resulting object.
  - `delete` (`string`):  When `null`, the `delete` field will be omitted from the resulting object.
  - `update` (`string`):  When `null`, the `update` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `timeouts` sub block.
