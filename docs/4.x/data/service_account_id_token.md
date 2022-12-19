---
permalink: /data/service_account_id_token/
---

# data.service_account_id_token

`service_account_id_token` represents the `google_service_account_id_token` Terraform data source.



This package contains functions and utilities for setting up the data source using Jsonnet code.


## Index

* [`fn new()`](#fn-new)
* [`fn newAttrs()`](#fn-newattrs)
* [`fn withDelegates()`](#fn-withdelegates)
* [`fn withIncludeEmail()`](#fn-withincludeemail)
* [`fn withTargetAudience()`](#fn-withtargetaudience)
* [`fn withTargetServiceAccount()`](#fn-withtargetserviceaccount)

## Fields

### fn new

```ts
new()
```


`google.data.service_account_id_token.new` injects a new `data_google_service_account_id_token` Terraform `data source`
block into the root module document.

Additionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the
resource. For example, if you added a new instance to the root using:

    # arguments omitted for brevity
    google.data.service_account_id_token.new('some_id')

You can get the reference to the `id` field of the created `google.data.service_account_id_token` using the reference:

    $._ref.data_google_service_account_id_token.some_id.get('id')

This is the same as directly entering `"${ data_google_service_account_id_token.some_id.id }"` as the value.

NOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,
or `$` to refer to the root object. Instead, make an explicit outer object using `local`.

**Args**:
  - `dataSrcLabel` (`string`): The name label of the block.
  - `delegates` (`list`):  When `null`, the `delegates` field will be omitted from the resulting object.
  - `include_email` (`bool`):  When `null`, the `include_email` field will be omitted from the resulting object.
  - `target_audience` (`string`): 
  - `target_service_account` (`string`):  When `null`, the `target_service_account` field will be omitted from the resulting object.

**Returns**:
- A mixin object that injects the new data source into the root Terraform configuration.


### fn newAttrs

```ts
newAttrs()
```


`google.data.service_account_id_token.newAttrs` constructs a new object with attributes and blocks configured for the `service_account_id_token`
Terraform data source.

Unlike [google.data.service_account_id_token.new](#fn-serviceaccountidtokennew), this function will not inject the `data source`
block into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the
[tf.withData](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withdata) function to build a complete block.

This is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to
injecting into a complete block.

**Args**:
  - `delegates` (`list`):  When `null`, the `delegates` field will be omitted from the resulting object.
  - `include_email` (`bool`):  When `null`, the `include_email` field will be omitted from the resulting object.
  - `target_audience` (`string`): 
  - `target_service_account` (`string`):  When `null`, the `target_service_account` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that can be used with [tf.withData](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withdata) to construct a new `service_account_id_token` data source into the root Terraform configuration.


### fn withDelegates

```ts
withDelegates()
```

`google.service_account_id_token.withDelegates` constructs a mixin object that can be merged into the `service_account_id_token`
Terraform data source block to set or update the delegates field.



**Args**:
  - `dataSrcLabel` (`string`): The name label of the block to update.
  - `value` (`TODO`): The value to set for the `delegates` field.


### fn withIncludeEmail

```ts
withIncludeEmail()
```

`google.service_account_id_token.withIncludeEmail` constructs a mixin object that can be merged into the `service_account_id_token`
Terraform data source block to set or update the include_email field.



**Args**:
  - `dataSrcLabel` (`string`): The name label of the block to update.
  - `value` (`TODO`): The value to set for the `include_email` field.


### fn withTargetAudience

```ts
withTargetAudience()
```

`google.service_account_id_token.withTargetAudience` constructs a mixin object that can be merged into the `service_account_id_token`
Terraform data source block to set or update the target_audience field.



**Args**:
  - `dataSrcLabel` (`string`): The name label of the block to update.
  - `value` (`TODO`): The value to set for the `target_audience` field.


### fn withTargetServiceAccount

```ts
withTargetServiceAccount()
```

`google.service_account_id_token.withTargetServiceAccount` constructs a mixin object that can be merged into the `service_account_id_token`
Terraform data source block to set or update the target_service_account field.



**Args**:
  - `dataSrcLabel` (`string`): The name label of the block to update.
  - `value` (`TODO`): The value to set for the `target_service_account` field.
