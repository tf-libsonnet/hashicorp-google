---
permalink: /billing_subaccount/
---

# billing_subaccount

`billing_subaccount` represents the `google_billing_subaccount` Terraform resource.



This package contains functions and utilities for setting up the resource using Jsonnet code.


## Index

* [`fn new()`](#fn-new)
* [`fn newAttrs()`](#fn-newattrs)
* [`fn withDeletionPolicy()`](#fn-withdeletionpolicy)
* [`fn withDisplayName()`](#fn-withdisplayname)
* [`fn withMasterBillingAccount()`](#fn-withmasterbillingaccount)

## Fields

### fn new

```ts
new()
```


`google.billing_subaccount.new` injects a new `google_billing_subaccount` Terraform `resource`
block into the root module document.

Additionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the
resource. For example, if you added a new instance to the root using:

    # arguments omitted for brevity
    google.billing_subaccount.new('some_id')

You can get the reference to the `id` field of the created `google.billing_subaccount` using the reference:

    $._ref.google_billing_subaccount.some_id.get('id')

This is the same as directly entering `"${ google_billing_subaccount.some_id.id }"` as the value.

NOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,
or `$` to refer to the root object. Instead, make an explicit outer object using `local`.

**Args**:
  - `resourceLabel` (`string`): The name label of the block.
  - `deletion_policy` (`string`):  When `null`, the `deletion_policy` field will be omitted from the resulting object.
  - `display_name` (`string`): 
  - `master_billing_account` (`string`): 

**Returns**:
- A mixin object that injects the new resource into the root Terraform configuration.


### fn newAttrs

```ts
newAttrs()
```


`google.billing_subaccount.newAttrs` constructs a new object with attributes and blocks configured for the `billing_subaccount`
Terraform resource.

Unlike [google.billing_subaccount.new](#fn-new), this function will not inject the `resource`
block into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the
[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.

This is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to
injecting into a complete block.

**Args**:
  - `deletion_policy` (`string`):  When `null`, the `deletion_policy` field will be omitted from the resulting object.
  - `display_name` (`string`): 
  - `master_billing_account` (`string`): 

**Returns**:
  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `billing_subaccount` resource into the root Terraform configuration.


### fn withDeletionPolicy

```ts
withDeletionPolicy()
```

`google.string.withDeletionPolicy` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the deletion_policy field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `deletion_policy` field.


### fn withDisplayName

```ts
withDisplayName()
```

`google.string.withDisplayName` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the display_name field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `display_name` field.


### fn withMasterBillingAccount

```ts
withMasterBillingAccount()
```

`google.string.withMasterBillingAccount` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the master_billing_account field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `master_billing_account` field.
