---
permalink: /data/client_openid_userinfo/
---

# data.client_openid_userinfo

`client_openid_userinfo` represents the `google_client_openid_userinfo` Terraform data source.

Get OpenID userinfo about the credentials used with the Google provider, specifically the email.
This datasource enables you to export the email of the account you&#39;ve authenticated the provider with; this can be used alongside data.google_client_config&#39;s access_token to perform OpenID Connect authentication with GKE and configure an RBAC role for the email used.

~&gt; This resource will only work as expected if the provider is configured to use the https://www.googleapis.com/auth/userinfo.email scope! You will receive an error otherwise. The provider uses this scope by default.

This package contains functions and utilities for setting up the data source using Jsonnet code.


## Index

* [`fn new()`](#fn-new)
* [`fn newAttrs()`](#fn-newattrs)

## Fields

### fn new

```ts
new()
```


`google.data.client_openid_userinfo.new` injects a new `data_google_client_openid_userinfo` Terraform `data source`
block into the root module document.

Additionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the
resource. For example, if you added a new instance to the root using:

    # arguments omitted for brevity
    google.data.client_openid_userinfo.new('some_id')

You can get the reference to the `id` field of the created `google.data.client_openid_userinfo` using the reference:

    $._ref.data_google_client_openid_userinfo.some_id.get('id')

This is the same as directly entering `"${ data_google_client_openid_userinfo.some_id.id }"` as the value.

NOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,
or `$` to refer to the root object. Instead, make an explicit outer object using `local`.

**Args**:
  - `dataSrcLabel` (`string`): The name label of the block.

**Returns**:
- A mixin object that injects the new data source into the root Terraform configuration.


### fn newAttrs

```ts
newAttrs()
```


`google.data.client_openid_userinfo.newAttrs` constructs a new object with attributes and blocks configured for the `client_openid_userinfo`
Terraform data source.

Unlike [google.data.client_openid_userinfo.new](#fn-new), this function will not inject the `data source`
block into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the
[tf.withData](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withdata) function to build a complete block.

This is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to
injecting into a complete block.

**Returns**:
  - An attribute object that can be used with [tf.withData](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withdata) to construct a new `client_openid_userinfo` data source into the root Terraform configuration.
