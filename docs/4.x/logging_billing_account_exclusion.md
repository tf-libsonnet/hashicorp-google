---
permalink: /logging_billing_account_exclusion/
---

# logging_billing_account_exclusion

`logging_billing_account_exclusion` represents the `google_logging_billing_account_exclusion` Terraform resource.



This package contains functions and utilities for setting up the resource using Jsonnet code.


## Index

* [`fn new()`](#fn-new)
* [`fn newAttrs()`](#fn-newattrs)
* [`fn withBillingAccount()`](#fn-withbillingaccount)
* [`fn withDescription()`](#fn-withdescription)
* [`fn withDisabled()`](#fn-withdisabled)
* [`fn withFilter()`](#fn-withfilter)
* [`fn withName()`](#fn-withname)

## Fields

### fn new

```ts
new()
```


`google.logging_billing_account_exclusion.new` injects a new `google_logging_billing_account_exclusion` Terraform `resource`
block into the root module document.

Additionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the
resource. For example, if you added a new instance to the root using:

    # arguments omitted for brevity
    google.logging_billing_account_exclusion.new('some_id')

You can get the reference to the `id` field of the created `google.logging_billing_account_exclusion` using the reference:

    $._ref.google_logging_billing_account_exclusion.some_id.get('id')

This is the same as directly entering `"${ google_logging_billing_account_exclusion.some_id.id }"` as the value.

NOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,
or `$` to refer to the root object. Instead, make an explicit outer object using `local`.

**Args**:
  - `resourceLabel` (`string`): The name label of the block.
  - `billing_account` (`string`): 
  - `description` (`string`): A human-readable description. When `null`, the `description` field will be omitted from the resulting object.
  - `disabled` (`bool`): Whether this exclusion rule should be disabled or not. This defaults to false. When `null`, the `disabled` field will be omitted from the resulting object.
  - `filter` (`string`): The filter to apply when excluding logs. Only log entries that match the filter are excluded.
  - `name` (`string`): The name of the logging exclusion.

**Returns**:
- A mixin object that injects the new resource into the root Terraform configuration.


### fn newAttrs

```ts
newAttrs()
```


`google.logging_billing_account_exclusion.newAttrs` constructs a new object with attributes and blocks configured for the `logging_billing_account_exclusion`
Terraform resource.

Unlike [google.logging_billing_account_exclusion.new](#fn-logging_billing_account_exclusionnew), this function will not inject the `resource`
block into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the
[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.

This is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to
injecting into a complete block.

**Args**:
  - `billing_account` (`string`): 
  - `description` (`string`): A human-readable description. When `null`, the `description` field will be omitted from the resulting object.
  - `disabled` (`bool`): Whether this exclusion rule should be disabled or not. This defaults to false. When `null`, the `disabled` field will be omitted from the resulting object.
  - `filter` (`string`): The filter to apply when excluding logs. Only log entries that match the filter are excluded.
  - `name` (`string`): The name of the logging exclusion.

**Returns**:
  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `logging_billing_account_exclusion` resource into the root Terraform configuration.


### fn withBillingAccount

```ts
withBillingAccount()
```

`google.string.withBillingAccount` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the billing_account field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `billing_account` field.


### fn withDescription

```ts
withDescription()
```

`google.string.withDescription` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the description field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `description` field.


### fn withDisabled

```ts
withDisabled()
```

`google.bool.withDisabled` constructs a mixin object that can be merged into the `bool`
Terraform resource block to set or update the disabled field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`bool`): The value to set for the `disabled` field.


### fn withFilter

```ts
withFilter()
```

`google.string.withFilter` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the filter field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `filter` field.


### fn withName

```ts
withName()
```

`google.string.withName` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the name field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `name` field.
