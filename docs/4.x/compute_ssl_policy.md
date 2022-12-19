---
permalink: /compute_ssl_policy/
---

# compute_ssl_policy

`compute_ssl_policy` represents the `google_compute_ssl_policy` Terraform resource.



This package contains functions and utilities for setting up the resource using Jsonnet code.


## Index

* [`fn new()`](#fn-new)
* [`fn newAttrs()`](#fn-newattrs)
* [`fn withCustomFeatures()`](#fn-withcustomfeatures)
* [`fn withDescription()`](#fn-withdescription)
* [`fn withMinTlsVersion()`](#fn-withmintlsversion)
* [`fn withName()`](#fn-withname)
* [`fn withProfile()`](#fn-withprofile)
* [`fn withProject()`](#fn-withproject)
* [`fn withTimeouts()`](#fn-withtimeouts)
* [`fn withTimeoutsMixin()`](#fn-withtimeoutsmixin)
* [`obj timeouts`](#obj-timeouts)
  * [`fn new()`](#fn-timeoutsnew)

## Fields

### fn new

```ts
new()
```


`google.compute_ssl_policy.new` injects a new `google_compute_ssl_policy` Terraform `resource`
block into the root module document.

Additionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the
resource. For example, if you added a new instance to the root using:

    # arguments omitted for brevity
    google.compute_ssl_policy.new('some_id')

You can get the reference to the `id` field of the created `google.compute_ssl_policy` using the reference:

    $._ref.google_compute_ssl_policy.some_id.get('id')

This is the same as directly entering `"${ google_compute_ssl_policy.some_id.id }"` as the value.

NOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,
or `$` to refer to the root object. Instead, make an explicit outer object using `local`.

**Args**:
  - `resourceLabel` (`string`): The name label of the block.
  - `custom_features` (`list`): Profile specifies the set of SSL features that can be used by the
load balancer when negotiating SSL with clients. This can be one of
&#39;COMPATIBLE&#39;, &#39;MODERN&#39;, &#39;RESTRICTED&#39;, or &#39;CUSTOM&#39;. If using &#39;CUSTOM&#39;,
the set of SSL features to enable must be specified in the
&#39;customFeatures&#39; field.

See the [official documentation](https://cloud.google.com/compute/docs/load-balancing/ssl-policies#profilefeaturesupport)
for which ciphers are available to use. **Note**: this argument
*must* be present when using the &#39;CUSTOM&#39; profile. This argument
*must not* be present when using any other profile. When `null`, the `custom_features` field will be omitted from the resulting object.
  - `description` (`string`): An optional description of this resource. When `null`, the `description` field will be omitted from the resulting object.
  - `min_tls_version` (`string`): The minimum version of SSL protocol that can be used by the clients
to establish a connection with the load balancer. Default value: &#34;TLS_1_0&#34; Possible values: [&#34;TLS_1_0&#34;, &#34;TLS_1_1&#34;, &#34;TLS_1_2&#34;] When `null`, the `min_tls_version` field will be omitted from the resulting object.
  - `name` (`string`): Name of the resource. Provided by the client when the resource is
created. The name must be 1-63 characters long, and comply with
RFC1035. Specifically, the name must be 1-63 characters long and match
the regular expression &#39;[a-z]([-a-z0-9]*[a-z0-9])?&#39; which means the
first character must be a lowercase letter, and all following
characters must be a dash, lowercase letter, or digit, except the last
character, which cannot be a dash.
  - `profile` (`string`): Profile specifies the set of SSL features that can be used by the
load balancer when negotiating SSL with clients. If using &#39;CUSTOM&#39;,
the set of SSL features to enable must be specified in the
&#39;customFeatures&#39; field.

See the [official documentation](https://cloud.google.com/compute/docs/load-balancing/ssl-policies#profilefeaturesupport)
for information on what cipher suites each profile provides. If
&#39;CUSTOM&#39; is used, the &#39;custom_features&#39; attribute **must be set**. Default value: &#34;COMPATIBLE&#34; Possible values: [&#34;COMPATIBLE&#34;, &#34;MODERN&#34;, &#34;RESTRICTED&#34;, &#34;CUSTOM&#34;] When `null`, the `profile` field will be omitted from the resulting object.
  - `project` (`string`):  When `null`, the `project` field will be omitted from the resulting object.
  - `timeouts` (`obj`):  When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_ssl_policy.timeouts.new](#fn-computesslpolicytimeoutsnew) constructor.

**Returns**:
- A mixin object that injects the new resource into the root Terraform configuration.


### fn newAttrs

```ts
newAttrs()
```


`google.compute_ssl_policy.newAttrs` constructs a new object with attributes and blocks configured for the `compute_ssl_policy`
Terraform resource.

Unlike [google.compute_ssl_policy.new](#fn-computesslpolicynew), this function will not inject the `resource`
block into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the
[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.

This is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to
injecting into a complete block.

**Args**:
  - `custom_features` (`list`): Profile specifies the set of SSL features that can be used by the
load balancer when negotiating SSL with clients. This can be one of
&#39;COMPATIBLE&#39;, &#39;MODERN&#39;, &#39;RESTRICTED&#39;, or &#39;CUSTOM&#39;. If using &#39;CUSTOM&#39;,
the set of SSL features to enable must be specified in the
&#39;customFeatures&#39; field.

See the [official documentation](https://cloud.google.com/compute/docs/load-balancing/ssl-policies#profilefeaturesupport)
for which ciphers are available to use. **Note**: this argument
*must* be present when using the &#39;CUSTOM&#39; profile. This argument
*must not* be present when using any other profile. When `null`, the `custom_features` field will be omitted from the resulting object.
  - `description` (`string`): An optional description of this resource. When `null`, the `description` field will be omitted from the resulting object.
  - `min_tls_version` (`string`): The minimum version of SSL protocol that can be used by the clients
to establish a connection with the load balancer. Default value: &#34;TLS_1_0&#34; Possible values: [&#34;TLS_1_0&#34;, &#34;TLS_1_1&#34;, &#34;TLS_1_2&#34;] When `null`, the `min_tls_version` field will be omitted from the resulting object.
  - `name` (`string`): Name of the resource. Provided by the client when the resource is
created. The name must be 1-63 characters long, and comply with
RFC1035. Specifically, the name must be 1-63 characters long and match
the regular expression &#39;[a-z]([-a-z0-9]*[a-z0-9])?&#39; which means the
first character must be a lowercase letter, and all following
characters must be a dash, lowercase letter, or digit, except the last
character, which cannot be a dash.
  - `profile` (`string`): Profile specifies the set of SSL features that can be used by the
load balancer when negotiating SSL with clients. If using &#39;CUSTOM&#39;,
the set of SSL features to enable must be specified in the
&#39;customFeatures&#39; field.

See the [official documentation](https://cloud.google.com/compute/docs/load-balancing/ssl-policies#profilefeaturesupport)
for information on what cipher suites each profile provides. If
&#39;CUSTOM&#39; is used, the &#39;custom_features&#39; attribute **must be set**. Default value: &#34;COMPATIBLE&#34; Possible values: [&#34;COMPATIBLE&#34;, &#34;MODERN&#34;, &#34;RESTRICTED&#34;, &#34;CUSTOM&#34;] When `null`, the `profile` field will be omitted from the resulting object.
  - `project` (`string`):  When `null`, the `project` field will be omitted from the resulting object.
  - `timeouts` (`obj`):  When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_ssl_policy.timeouts.new](#fn-computesslpolicytimeoutsnew) constructor.

**Returns**:
  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `compute_ssl_policy` resource into the root Terraform configuration.


### fn withCustomFeatures

```ts
withCustomFeatures()
```

`google.compute_ssl_policy.withCustomFeatures` constructs a mixin object that can be merged into the `compute_ssl_policy`
Terraform resource block to set or update the custom_features field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`TODO`): The value to set for the `custom_features` field.


### fn withDescription

```ts
withDescription()
```

`google.compute_ssl_policy.withDescription` constructs a mixin object that can be merged into the `compute_ssl_policy`
Terraform resource block to set or update the description field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`TODO`): The value to set for the `description` field.


### fn withMinTlsVersion

```ts
withMinTlsVersion()
```

`google.compute_ssl_policy.withMinTlsVersion` constructs a mixin object that can be merged into the `compute_ssl_policy`
Terraform resource block to set or update the min_tls_version field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`TODO`): The value to set for the `min_tls_version` field.


### fn withName

```ts
withName()
```

`google.compute_ssl_policy.withName` constructs a mixin object that can be merged into the `compute_ssl_policy`
Terraform resource block to set or update the name field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`TODO`): The value to set for the `name` field.


### fn withProfile

```ts
withProfile()
```

`google.compute_ssl_policy.withProfile` constructs a mixin object that can be merged into the `compute_ssl_policy`
Terraform resource block to set or update the profile field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`TODO`): The value to set for the `profile` field.


### fn withProject

```ts
withProject()
```

`google.compute_ssl_policy.withProject` constructs a mixin object that can be merged into the `compute_ssl_policy`
Terraform resource block to set or update the project field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`TODO`): The value to set for the `project` field.


### fn withTimeouts

```ts
withTimeouts()
```

`google.compute_ssl_policy.withTimeouts` constructs a mixin object that can be merged into the `compute_ssl_policy`
Terraform resource block to set or update the timeouts field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`TODO`): The value to set for the `timeouts` field.


### fn withTimeoutsMixin

```ts
withTimeoutsMixin()
```

`google.compute_ssl_policy.withTimeoutsMixin` constructs a mixin object that can be merged into the `compute_ssl_policy`
Terraform resource block to set or update the timeouts field.

This function will merge the passed in value to the existing map. If you wish
to instead replace the entire map with the passed in `value`, use the [google.compute_ssl_policy.withTimeouts](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`TODO`): The value to set for the `timeouts` field.


## obj timeouts



### fn timeouts.new

```ts
new()
```


`google.compute_ssl_policy.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`
Terraform sub block.



**Args**:
  - `create` (`string`):  When `null`, the `create` field will be omitted from the resulting object.
  - `delete` (`string`):  When `null`, the `delete` field will be omitted from the resulting object.
  - `update` (`string`):  When `null`, the `update` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `timeouts` sub block.
