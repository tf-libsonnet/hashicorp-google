---
permalink: /data/iap_client/
---

# data.iap_client

`iap_client` represents the `google_iap_client` Terraform data source.



This package contains functions and utilities for setting up the data source using Jsonnet code.


## Index

* [`fn new()`](#fn-new)
* [`fn newAttrs()`](#fn-newattrs)
* [`fn withBrand()`](#fn-withbrand)
* [`fn withClientId()`](#fn-withclientid)

## Fields

### fn new

```ts
new()
```


`google.data.iap_client.new` injects a new `data_google_iap_client` Terraform `data source`
block into the root module document.

Additionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the
resource. For example, if you added a new instance to the root using:

    # arguments omitted for brevity
    google.data.iap_client.new('some_id')

You can get the reference to the `id` field of the created `google.data.iap_client` using the reference:

    $._ref.data_google_iap_client.some_id.get('id')

This is the same as directly entering `"${ data_google_iap_client.some_id.id }"` as the value.

NOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,
or `$` to refer to the root object. Instead, make an explicit outer object using `local`.

**Args**:
  - `dataSrcLabel` (`string`): The name label of the block.
  - `brand` (`string`): Identifier of the brand to which this client
is attached to. The format is
&#39;projects/{project_number}/brands/{brand_id}/identityAwareProxyClients/{client_id}&#39;.
  - `client_id` (`string`): Output only. Unique identifier of the OAuth client.

**Returns**:
- A mixin object that injects the new data source into the root Terraform configuration.


### fn newAttrs

```ts
newAttrs()
```


`google.data.iap_client.newAttrs` constructs a new object with attributes and blocks configured for the `iap_client`
Terraform data source.

Unlike [google.data.iap_client.new](#fn-iapclientnew), this function will not inject the `data source`
block into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the
[tf.withData](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withdata) function to build a complete block.

This is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to
injecting into a complete block.

**Args**:
  - `brand` (`string`): Identifier of the brand to which this client
is attached to. The format is
&#39;projects/{project_number}/brands/{brand_id}/identityAwareProxyClients/{client_id}&#39;.
  - `client_id` (`string`): Output only. Unique identifier of the OAuth client.

**Returns**:
  - An attribute object that can be used with [tf.withData](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withdata) to construct a new `iap_client` data source into the root Terraform configuration.


### fn withBrand

```ts
withBrand()
```

`google.iap_client.withBrand` constructs a mixin object that can be merged into the `iap_client`
Terraform data source block to set or update the brand field.



**Args**:
  - `dataSrcLabel` (`string`): The name label of the block to update.
  - `value` (`TODO`): The value to set for the `brand` field.


### fn withClientId

```ts
withClientId()
```

`google.iap_client.withClientId` constructs a mixin object that can be merged into the `iap_client`
Terraform data source block to set or update the client_id field.



**Args**:
  - `dataSrcLabel` (`string`): The name label of the block to update.
  - `value` (`TODO`): The value to set for the `client_id` field.
