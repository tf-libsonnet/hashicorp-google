---
permalink: /organization_iam_audit_config/
---

# organization_iam_audit_config

`organization_iam_audit_config` represents the `google_organization_iam_audit_config` Terraform resource.



This package contains functions and utilities for setting up the resource using Jsonnet code.


## Index

* [`fn new()`](#fn-new)
* [`fn newAttrs()`](#fn-newattrs)
* [`fn withAuditLogConfig()`](#fn-withauditlogconfig)
* [`fn withAuditLogConfigMixin()`](#fn-withauditlogconfigmixin)
* [`fn withOrgId()`](#fn-withorgid)
* [`fn withService()`](#fn-withservice)
* [`obj audit_log_config`](#obj-audit_log_config)
  * [`fn new()`](#fn-audit_log_confignew)

## Fields

### fn new

```ts
new()
```


`google.organization_iam_audit_config.new` injects a new `google_organization_iam_audit_config` Terraform `resource`
block into the root module document.

Additionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the
resource. For example, if you added a new instance to the root using:

    # arguments omitted for brevity
    google.organization_iam_audit_config.new('some_id')

You can get the reference to the `id` field of the created `google.organization_iam_audit_config` using the reference:

    $._ref.google_organization_iam_audit_config.some_id.get('id')

This is the same as directly entering `"${ google_organization_iam_audit_config.some_id.id }"` as the value.

NOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,
or `$` to refer to the root object. Instead, make an explicit outer object using `local`.

**Args**:
  - `resourceLabel` (`string`): The name label of the block.
  - `org_id` (`string`): The numeric ID of the organization in which you want to manage the audit logging config.
  - `service` (`string`): Service which will be enabled for audit logging. The special value allServices covers all services.
  - `audit_log_config` (`list[obj]`): The configuration for logging of each type of permission. This can be specified multiple times. When `null`, the `audit_log_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.organization_iam_audit_config.audit_log_config.new](#fn-audit_log_confignew) constructor.

**Returns**:
- A mixin object that injects the new resource into the root Terraform configuration.


### fn newAttrs

```ts
newAttrs()
```


`google.organization_iam_audit_config.newAttrs` constructs a new object with attributes and blocks configured for the `organization_iam_audit_config`
Terraform resource.

Unlike [google.organization_iam_audit_config.new](#fn-new), this function will not inject the `resource`
block into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the
[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.

This is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to
injecting into a complete block.

**Args**:
  - `org_id` (`string`): The numeric ID of the organization in which you want to manage the audit logging config.
  - `service` (`string`): Service which will be enabled for audit logging. The special value allServices covers all services.
  - `audit_log_config` (`list[obj]`): The configuration for logging of each type of permission. This can be specified multiple times. When `null`, the `audit_log_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.organization_iam_audit_config.audit_log_config.new](#fn-audit_log_confignew) constructor.

**Returns**:
  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `organization_iam_audit_config` resource into the root Terraform configuration.


### fn withAuditLogConfig

```ts
withAuditLogConfig()
```

`google.list[obj].withAuditLogConfig` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the audit_log_config field.

This function will replace the array with the passed in `value`. If you wish to instead append the
passed in value to the existing array, use the [google.list[obj].withAuditLogConfigMixin](TODO) function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `audit_log_config` field.


### fn withAuditLogConfigMixin

```ts
withAuditLogConfigMixin()
```

`google.list[obj].withAuditLogConfigMixin` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the audit_log_config field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google.list[obj].withAuditLogConfig](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `audit_log_config` field.


### fn withOrgId

```ts
withOrgId()
```

`google.string.withOrgId` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the org_id field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `org_id` field.


### fn withService

```ts
withService()
```

`google.string.withService` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the service field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `service` field.


## obj audit_log_config



### fn audit_log_config.new

```ts
new()
```


`google.organization_iam_audit_config.audit_log_config.new` constructs a new object with attributes and blocks configured for the `audit_log_config`
Terraform sub block.



**Args**:
  - `exempted_members` (`list`): Identities that do not cause logging for this type of permission. Each entry can have one of the following values:user:{emailid}: An email address that represents a specific Google account. For example, alice@gmail.com or joe@example.com. serviceAccount:{emailid}: An email address that represents a service account. For example, my-other-app@appspot.gserviceaccount.com. group:{emailid}: An email address that represents a Google group. For example, admins@example.com. domain:{domain}: A G Suite domain (primary, instead of alias) name that represents all the users of that domain. For example, google.com or example.com. When `null`, the `exempted_members` field will be omitted from the resulting object.
  - `log_type` (`string`): Permission type for which logging is to be configured. Must be one of DATA_READ, DATA_WRITE, or ADMIN_READ.

**Returns**:
  - An attribute object that represents the `audit_log_config` sub block.
