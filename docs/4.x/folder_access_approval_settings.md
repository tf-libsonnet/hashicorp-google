---
permalink: /folder_access_approval_settings/
---

# folder_access_approval_settings

`folder_access_approval_settings` represents the `google_folder_access_approval_settings` Terraform resource.



This package contains functions and utilities for setting up the resource using Jsonnet code.


## Index

* [`fn new()`](#fn-new)
* [`fn newAttrs()`](#fn-newattrs)
* [`fn withActiveKeyVersion()`](#fn-withactivekeyversion)
* [`fn withEnrolledServices()`](#fn-withenrolledservices)
* [`fn withEnrolledServicesMixin()`](#fn-withenrolledservicesmixin)
* [`fn withFolderId()`](#fn-withfolderid)
* [`fn withNotificationEmails()`](#fn-withnotificationemails)
* [`fn withTimeouts()`](#fn-withtimeouts)
* [`fn withTimeoutsMixin()`](#fn-withtimeoutsmixin)
* [`obj enrolled_services`](#obj-enrolled_services)
  * [`fn new()`](#fn-enrolled_servicesnew)
* [`obj timeouts`](#obj-timeouts)
  * [`fn new()`](#fn-timeoutsnew)

## Fields

### fn new

```ts
new()
```


`google.folder_access_approval_settings.new` injects a new `google_folder_access_approval_settings` Terraform `resource`
block into the root module document.

Additionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the
resource. For example, if you added a new instance to the root using:

    # arguments omitted for brevity
    google.folder_access_approval_settings.new('some_id')

You can get the reference to the `id` field of the created `google.folder_access_approval_settings` using the reference:

    $._ref.google_folder_access_approval_settings.some_id.get('id')

This is the same as directly entering `"${ google_folder_access_approval_settings.some_id.id }"` as the value.

NOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,
or `$` to refer to the root object. Instead, make an explicit outer object using `local`.

**Args**:
  - `resourceLabel` (`string`): The name label of the block.
  - `active_key_version` (`string`): The asymmetric crypto key version to use for signing approval requests.
Empty active_key_version indicates that a Google-managed key should be used for signing.
This property will be ignored if set by an ancestor of the resource, and new non-empty values may not be set. When `null`, the `active_key_version` field will be omitted from the resulting object.
  - `folder_id` (`string`): ID of the folder of the access approval settings.
  - `notification_emails` (`list`): A list of email addresses to which notifications relating to approval requests should be sent.
Notifications relating to a resource will be sent to all emails in the settings of ancestor
resources of that resource. A maximum of 50 email addresses are allowed. When `null`, the `notification_emails` field will be omitted from the resulting object.
  - `enrolled_services` (`list[obj]`): A list of Google Cloud Services for which the given resource has Access Approval enrolled.
Access requests for the resource given by name against any of these services contained here will be required
to have explicit approval. Enrollment can only be done on an all or nothing basis.

A maximum of 10 enrolled services will be enforced, to be expanded as the set of supported services is expanded. When `null`, the `enrolled_services` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.folder_access_approval_settings.enrolled_services.new](#fn-folderaccessapprovalsettingsenrolledservicesnew) constructor.
  - `timeouts` (`obj`):  When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.folder_access_approval_settings.timeouts.new](#fn-folderaccessapprovalsettingstimeoutsnew) constructor.

**Returns**:
- A mixin object that injects the new resource into the root Terraform configuration.


### fn newAttrs

```ts
newAttrs()
```


`google.folder_access_approval_settings.newAttrs` constructs a new object with attributes and blocks configured for the `folder_access_approval_settings`
Terraform resource.

Unlike [google.folder_access_approval_settings.new](#fn-folderaccessapprovalsettingsnew), this function will not inject the `resource`
block into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the
[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.

This is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to
injecting into a complete block.

**Args**:
  - `active_key_version` (`string`): The asymmetric crypto key version to use for signing approval requests.
Empty active_key_version indicates that a Google-managed key should be used for signing.
This property will be ignored if set by an ancestor of the resource, and new non-empty values may not be set. When `null`, the `active_key_version` field will be omitted from the resulting object.
  - `folder_id` (`string`): ID of the folder of the access approval settings.
  - `notification_emails` (`list`): A list of email addresses to which notifications relating to approval requests should be sent.
Notifications relating to a resource will be sent to all emails in the settings of ancestor
resources of that resource. A maximum of 50 email addresses are allowed. When `null`, the `notification_emails` field will be omitted from the resulting object.
  - `enrolled_services` (`list[obj]`): A list of Google Cloud Services for which the given resource has Access Approval enrolled.
Access requests for the resource given by name against any of these services contained here will be required
to have explicit approval. Enrollment can only be done on an all or nothing basis.

A maximum of 10 enrolled services will be enforced, to be expanded as the set of supported services is expanded. When `null`, the `enrolled_services` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.folder_access_approval_settings.enrolled_services.new](#fn-folderaccessapprovalsettingsenrolledservicesnew) constructor.
  - `timeouts` (`obj`):  When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.folder_access_approval_settings.timeouts.new](#fn-folderaccessapprovalsettingstimeoutsnew) constructor.

**Returns**:
  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `folder_access_approval_settings` resource into the root Terraform configuration.


### fn withActiveKeyVersion

```ts
withActiveKeyVersion()
```

`google.folder_access_approval_settings.withActiveKeyVersion` constructs a mixin object that can be merged into the `folder_access_approval_settings`
Terraform resource block to set or update the active_key_version field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`TODO`): The value to set for the `active_key_version` field.


### fn withEnrolledServices

```ts
withEnrolledServices()
```

`google.folder_access_approval_settings.withEnrolledServices` constructs a mixin object that can be merged into the `folder_access_approval_settings`
Terraform resource block to set or update the enrolled_services field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`TODO`): The value to set for the `enrolled_services` field.


### fn withEnrolledServicesMixin

```ts
withEnrolledServicesMixin()
```

`google.folder_access_approval_settings.withEnrolledServicesMixin` constructs a mixin object that can be merged into the `folder_access_approval_settings`
Terraform resource block to set or update the enrolled_services field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google.folder_access_approval_settings.withEnrolledServices](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`TODO`): The value to set for the `enrolled_services` field.


### fn withFolderId

```ts
withFolderId()
```

`google.folder_access_approval_settings.withFolderId` constructs a mixin object that can be merged into the `folder_access_approval_settings`
Terraform resource block to set or update the folder_id field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`TODO`): The value to set for the `folder_id` field.


### fn withNotificationEmails

```ts
withNotificationEmails()
```

`google.folder_access_approval_settings.withNotificationEmails` constructs a mixin object that can be merged into the `folder_access_approval_settings`
Terraform resource block to set or update the notification_emails field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`TODO`): The value to set for the `notification_emails` field.


### fn withTimeouts

```ts
withTimeouts()
```

`google.folder_access_approval_settings.withTimeouts` constructs a mixin object that can be merged into the `folder_access_approval_settings`
Terraform resource block to set or update the timeouts field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`TODO`): The value to set for the `timeouts` field.


### fn withTimeoutsMixin

```ts
withTimeoutsMixin()
```

`google.folder_access_approval_settings.withTimeoutsMixin` constructs a mixin object that can be merged into the `folder_access_approval_settings`
Terraform resource block to set or update the timeouts field.

This function will merge the passed in value to the existing map. If you wish
to instead replace the entire map with the passed in `value`, use the [google.folder_access_approval_settings.withTimeouts](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`TODO`): The value to set for the `timeouts` field.


## obj enrolled_services



### fn enrolled_services.new

```ts
new()
```


`google.folder_access_approval_settings.enrolled_services.new` constructs a new object with attributes and blocks configured for the `enrolled_services`
Terraform sub block.



**Args**:
  - `cloud_product` (`string`): The product for which Access Approval will be enrolled. Allowed values are listed (case-sensitive):
  * all
  * App Engine
  * BigQuery
  * Cloud Bigtable
  * Cloud Key Management Service
  * Compute Engine
  * Cloud Dataflow
  * Cloud Identity and Access Management
  * Cloud Pub/Sub
  * Cloud Storage
  * Persistent Disk

Note: These values are supported as input, but considered a legacy format:
  * all
  * appengine.googleapis.com
  * bigquery.googleapis.com
  * bigtable.googleapis.com
  * cloudkms.googleapis.com
  * compute.googleapis.com
  * dataflow.googleapis.com
  * iam.googleapis.com
  * pubsub.googleapis.com
  * storage.googleapis.com
  - `enrollment_level` (`string`): The enrollment level of the service. Default value: &#34;BLOCK_ALL&#34; Possible values: [&#34;BLOCK_ALL&#34;] When `null`, the `enrollment_level` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `enrolled_services` sub block.


## obj timeouts



### fn timeouts.new

```ts
new()
```


`google.folder_access_approval_settings.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`
Terraform sub block.



**Args**:
  - `create` (`string`):  When `null`, the `create` field will be omitted from the resulting object.
  - `delete` (`string`):  When `null`, the `delete` field will be omitted from the resulting object.
  - `update` (`string`):  When `null`, the `update` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `timeouts` sub block.
