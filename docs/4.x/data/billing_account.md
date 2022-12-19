---
permalink: /data/billing_account/
---

# data.billing_account

`billing_account` represents the `google_billing_account` Terraform data source.



This package contains functions and utilities for setting up the data source using Jsonnet code.


## Index

* [`fn new()`](#fn-new)
* [`fn newAttrs()`](#fn-newattrs)
* [`fn withBillingAccount()`](#fn-withbillingaccount)
* [`fn withDisplayName()`](#fn-withdisplayname)
* [`fn withOpen()`](#fn-withopen)

## Fields

### fn new

```ts
new()
```


`google.data.billing_account.new` injects a new `data_google_billing_account` Terraform `data source`
block into the root module document.

Additionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the
resource. For example, if you added a new instance to the root using:

    # arguments omitted for brevity
    google.data.billing_account.new('some_id')

You can get the reference to the `id` field of the created `google.data.billing_account` using the reference:

    $._ref.data_google_billing_account.some_id.get('id')

This is the same as directly entering `"${ data_google_billing_account.some_id.id }"` as the value.

NOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,
or `$` to refer to the root object. Instead, make an explicit outer object using `local`.

**Args**:
  - `dataSrcLabel` (`string`): The name label of the block.
  - `billing_account` (`string`):  When `null`, the `billing_account` field will be omitted from the resulting object.
  - `display_name` (`string`):  When `null`, the `display_name` field will be omitted from the resulting object.
  - `open` (`bool`):  When `null`, the `open` field will be omitted from the resulting object.

**Returns**:
- A mixin object that injects the new data source into the root Terraform configuration.


### fn newAttrs

```ts
newAttrs()
```


`google.data.billing_account.newAttrs` constructs a new object with attributes and blocks configured for the `billing_account`
Terraform data source.

Unlike [google.data.billing_account.new](#fn-billing_accountnew), this function will not inject the `data source`
block into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the
[tf.withData](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withdata) function to build a complete block.

This is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to
injecting into a complete block.

**Args**:
  - `billing_account` (`string`):  When `null`, the `billing_account` field will be omitted from the resulting object.
  - `display_name` (`string`):  When `null`, the `display_name` field will be omitted from the resulting object.
  - `open` (`bool`):  When `null`, the `open` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that can be used with [tf.withData](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withdata) to construct a new `billing_account` data source into the root Terraform configuration.


### fn withBillingAccount

```ts
withBillingAccount()
```

`google.string.withBillingAccount` constructs a mixin object that can be merged into the `string`
Terraform data source block to set or update the billing_account field.



**Args**:
  - `dataSrcLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `billing_account` field.


### fn withDisplayName

```ts
withDisplayName()
```

`google.string.withDisplayName` constructs a mixin object that can be merged into the `string`
Terraform data source block to set or update the display_name field.



**Args**:
  - `dataSrcLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `display_name` field.


### fn withOpen

```ts
withOpen()
```

`google.bool.withOpen` constructs a mixin object that can be merged into the `bool`
Terraform data source block to set or update the open field.



**Args**:
  - `dataSrcLabel` (`string`): The name label of the block to update.
  - `value` (`bool`): The value to set for the `open` field.
