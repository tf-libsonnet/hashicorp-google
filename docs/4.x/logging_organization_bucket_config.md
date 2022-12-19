---
permalink: /logging_organization_bucket_config/
---

# logging_organization_bucket_config

`logging_organization_bucket_config` represents the `google_logging_organization_bucket_config` Terraform resource.



This package contains functions and utilities for setting up the resource using Jsonnet code.


## Index

* [`fn new()`](#fn-new)
* [`fn newAttrs()`](#fn-newattrs)
* [`fn withBucketId()`](#fn-withbucketid)
* [`fn withCmekSettings()`](#fn-withcmeksettings)
* [`fn withCmekSettingsMixin()`](#fn-withcmeksettingsmixin)
* [`fn withDescription()`](#fn-withdescription)
* [`fn withLocation()`](#fn-withlocation)
* [`fn withOrganization()`](#fn-withorganization)
* [`fn withRetentionDays()`](#fn-withretentiondays)
* [`obj cmek_settings`](#obj-cmek_settings)
  * [`fn new()`](#fn-cmek_settingsnew)

## Fields

### fn new

```ts
new()
```


`google.logging_organization_bucket_config.new` injects a new `google_logging_organization_bucket_config` Terraform `resource`
block into the root module document.

Additionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the
resource. For example, if you added a new instance to the root using:

    # arguments omitted for brevity
    google.logging_organization_bucket_config.new('some_id')

You can get the reference to the `id` field of the created `google.logging_organization_bucket_config` using the reference:

    $._ref.google_logging_organization_bucket_config.some_id.get('id')

This is the same as directly entering `"${ google_logging_organization_bucket_config.some_id.id }"` as the value.

NOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,
or `$` to refer to the root object. Instead, make an explicit outer object using `local`.

**Args**:
  - `resourceLabel` (`string`): The name label of the block.
  - `bucket_id` (`string`): The name of the logging bucket. Logging automatically creates two log buckets: _Required and _Default.
  - `description` (`string`): An optional description for this bucket. When `null`, the `description` field will be omitted from the resulting object.
  - `location` (`string`): The location of the bucket.
  - `organization` (`string`): The parent resource that contains the logging bucket.
  - `retention_days` (`number`): Logs will be retained by default for this amount of time, after which they will automatically be deleted. The minimum retention period is 1 day. If this value is set to zero at bucket creation time, the default time of 30 days will be used. When `null`, the `retention_days` field will be omitted from the resulting object.
  - `cmek_settings` (`list[obj]`): The CMEK settings of the log bucket. If present, new log entries written to this log bucket are encrypted using the CMEK key provided in this configuration. If a log bucket has CMEK settings, the CMEK settings cannot be disabled later by updating the log bucket. Changing the KMS key is allowed. When `null`, the `cmek_settings` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.logging_organization_bucket_config.cmek_settings.new](#fn-loggingorganizationbucketconfigcmeksettingsnew) constructor.

**Returns**:
- A mixin object that injects the new resource into the root Terraform configuration.


### fn newAttrs

```ts
newAttrs()
```


`google.logging_organization_bucket_config.newAttrs` constructs a new object with attributes and blocks configured for the `logging_organization_bucket_config`
Terraform resource.

Unlike [google.logging_organization_bucket_config.new](#fn-loggingorganizationbucketconfignew), this function will not inject the `resource`
block into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the
[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.

This is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to
injecting into a complete block.

**Args**:
  - `bucket_id` (`string`): The name of the logging bucket. Logging automatically creates two log buckets: _Required and _Default.
  - `description` (`string`): An optional description for this bucket. When `null`, the `description` field will be omitted from the resulting object.
  - `location` (`string`): The location of the bucket.
  - `organization` (`string`): The parent resource that contains the logging bucket.
  - `retention_days` (`number`): Logs will be retained by default for this amount of time, after which they will automatically be deleted. The minimum retention period is 1 day. If this value is set to zero at bucket creation time, the default time of 30 days will be used. When `null`, the `retention_days` field will be omitted from the resulting object.
  - `cmek_settings` (`list[obj]`): The CMEK settings of the log bucket. If present, new log entries written to this log bucket are encrypted using the CMEK key provided in this configuration. If a log bucket has CMEK settings, the CMEK settings cannot be disabled later by updating the log bucket. Changing the KMS key is allowed. When `null`, the `cmek_settings` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.logging_organization_bucket_config.cmek_settings.new](#fn-loggingorganizationbucketconfigcmeksettingsnew) constructor.

**Returns**:
  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `logging_organization_bucket_config` resource into the root Terraform configuration.


### fn withBucketId

```ts
withBucketId()
```

`google.logging_organization_bucket_config.withBucketId` constructs a mixin object that can be merged into the `logging_organization_bucket_config`
Terraform resource block to set or update the bucket_id field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`TODO`): The value to set for the `bucket_id` field.


### fn withCmekSettings

```ts
withCmekSettings()
```

`google.logging_organization_bucket_config.withCmekSettings` constructs a mixin object that can be merged into the `logging_organization_bucket_config`
Terraform resource block to set or update the cmek_settings field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`TODO`): The value to set for the `cmek_settings` field.


### fn withCmekSettingsMixin

```ts
withCmekSettingsMixin()
```

`google.logging_organization_bucket_config.withCmekSettingsMixin` constructs a mixin object that can be merged into the `logging_organization_bucket_config`
Terraform resource block to set or update the cmek_settings field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google.logging_organization_bucket_config.withCmekSettings](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`TODO`): The value to set for the `cmek_settings` field.


### fn withDescription

```ts
withDescription()
```

`google.logging_organization_bucket_config.withDescription` constructs a mixin object that can be merged into the `logging_organization_bucket_config`
Terraform resource block to set or update the description field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`TODO`): The value to set for the `description` field.


### fn withLocation

```ts
withLocation()
```

`google.logging_organization_bucket_config.withLocation` constructs a mixin object that can be merged into the `logging_organization_bucket_config`
Terraform resource block to set or update the location field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`TODO`): The value to set for the `location` field.


### fn withOrganization

```ts
withOrganization()
```

`google.logging_organization_bucket_config.withOrganization` constructs a mixin object that can be merged into the `logging_organization_bucket_config`
Terraform resource block to set or update the organization field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`TODO`): The value to set for the `organization` field.


### fn withRetentionDays

```ts
withRetentionDays()
```

`google.logging_organization_bucket_config.withRetentionDays` constructs a mixin object that can be merged into the `logging_organization_bucket_config`
Terraform resource block to set or update the retention_days field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`TODO`): The value to set for the `retention_days` field.


## obj cmek_settings



### fn cmek_settings.new

```ts
new()
```


`google.logging_organization_bucket_config.cmek_settings.new` constructs a new object with attributes and blocks configured for the `cmek_settings`
Terraform sub block.



**Args**:
  - `kms_key_name` (`string`): The resource name for the configured Cloud KMS key.
KMS key name format:
&#34;projects/[PROJECT_ID]/locations/[LOCATION]/keyRings/[KEYRING]/cryptoKeys/[KEY]&#34;
To enable CMEK for the bucket, set this field to a valid kmsKeyName for which the associated service account has the required cloudkms.cryptoKeyEncrypterDecrypter roles assigned for the key.
The Cloud KMS key used by the bucket can be updated by changing the kmsKeyName to a new valid key name. Encryption operations that are in progress will be completed with the key that was in use when they started. Decryption operations will be completed using the key that was used at the time of encryption unless access to that key has been revoked.
See [Enabling CMEK for Logging Buckets](https://cloud.google.com/logging/docs/routing/managed-encryption-storage) for more information.

**Returns**:
  - An attribute object that represents the `cmek_settings` sub block.
