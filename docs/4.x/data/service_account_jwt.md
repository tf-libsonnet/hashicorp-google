---
permalink: /data/service_account_jwt/
---

# data.service_account_jwt

`service_account_jwt` represents the `google_service_account_jwt` Terraform data source.



This package contains functions and utilities for setting up the data source using Jsonnet code.


## Index

* [`fn new()`](#fn-new)
* [`fn newAttrs()`](#fn-newattrs)
* [`fn withDelegates()`](#fn-withdelegates)
* [`fn withExpiresIn()`](#fn-withexpiresin)
* [`fn withPayload()`](#fn-withpayload)
* [`fn withTargetServiceAccount()`](#fn-withtargetserviceaccount)

## Fields

### fn new

```ts
new()
```


`google.data.service_account_jwt.new` injects a new `data_google_service_account_jwt` Terraform `data source`
block into the root module document.

Additionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the
resource. For example, if you added a new instance to the root using:

    # arguments omitted for brevity
    google.data.service_account_jwt.new('some_id')

You can get the reference to the `id` field of the created `google.data.service_account_jwt` using the reference:

    $._ref.data_google_service_account_jwt.some_id.get('id')

This is the same as directly entering `"${ data_google_service_account_jwt.some_id.id }"` as the value.

NOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,
or `$` to refer to the root object. Instead, make an explicit outer object using `local`.

**Args**:
  - `dataSrcLabel` (`string`): The name label of the block.
  - `delegates` (`list`):  When `null`, the `delegates` field will be omitted from the resulting object.
  - `expires_in` (`number`): Number of seconds until the JWT expires. If set and non-zero an `exp` claim will be added to the payload derived from the current timestamp plus expires_in seconds. When `null`, the `expires_in` field will be omitted from the resulting object.
  - `payload` (`string`): A JSON-encoded JWT claims set that will be included in the signed JWT.
  - `target_service_account` (`string`): 

**Returns**:
- A mixin object that injects the new data source into the root Terraform configuration.


### fn newAttrs

```ts
newAttrs()
```


`google.data.service_account_jwt.newAttrs` constructs a new object with attributes and blocks configured for the `service_account_jwt`
Terraform data source.

Unlike [google.data.service_account_jwt.new](#fn-serviceaccountjwtnew), this function will not inject the `data source`
block into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the
[tf.withData](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withdata) function to build a complete block.

This is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to
injecting into a complete block.

**Args**:
  - `delegates` (`list`):  When `null`, the `delegates` field will be omitted from the resulting object.
  - `expires_in` (`number`): Number of seconds until the JWT expires. If set and non-zero an `exp` claim will be added to the payload derived from the current timestamp plus expires_in seconds. When `null`, the `expires_in` field will be omitted from the resulting object.
  - `payload` (`string`): A JSON-encoded JWT claims set that will be included in the signed JWT.
  - `target_service_account` (`string`): 

**Returns**:
  - An attribute object that can be used with [tf.withData](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withdata) to construct a new `service_account_jwt` data source into the root Terraform configuration.


### fn withDelegates

```ts
withDelegates()
```

`google.list.withDelegates` constructs a mixin object that can be merged into the `list`
Terraform data source block to set or update the delegates field.



**Args**:
  - `dataSrcLabel` (`string`): The name label of the block to update.
  - `value` (`list`): The value to set for the `delegates` field.


### fn withExpiresIn

```ts
withExpiresIn()
```

`google.number.withExpiresIn` constructs a mixin object that can be merged into the `number`
Terraform data source block to set or update the expires_in field.



**Args**:
  - `dataSrcLabel` (`string`): The name label of the block to update.
  - `value` (`number`): The value to set for the `expires_in` field.


### fn withPayload

```ts
withPayload()
```

`google.string.withPayload` constructs a mixin object that can be merged into the `string`
Terraform data source block to set or update the payload field.



**Args**:
  - `dataSrcLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `payload` field.


### fn withTargetServiceAccount

```ts
withTargetServiceAccount()
```

`google.string.withTargetServiceAccount` constructs a mixin object that can be merged into the `string`
Terraform data source block to set or update the target_service_account field.



**Args**:
  - `dataSrcLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `target_service_account` field.
