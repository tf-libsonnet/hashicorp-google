---
permalink: /app_engine_application_url_dispatch_rules/
---

# app_engine_application_url_dispatch_rules

`app_engine_application_url_dispatch_rules` represents the `google_app_engine_application_url_dispatch_rules` Terraform resource.



This package contains functions and utilities for setting up the resource using Jsonnet code.


## Index

* [`fn new()`](#fn-new)
* [`fn newAttrs()`](#fn-newattrs)
* [`fn withDispatchRules()`](#fn-withdispatchrules)
* [`fn withDispatchRulesMixin()`](#fn-withdispatchrulesmixin)
* [`fn withProject()`](#fn-withproject)
* [`fn withTimeouts()`](#fn-withtimeouts)
* [`fn withTimeoutsMixin()`](#fn-withtimeoutsmixin)
* [`obj dispatch_rules`](#obj-dispatch_rules)
  * [`fn new()`](#fn-dispatch_rulesnew)
* [`obj timeouts`](#obj-timeouts)
  * [`fn new()`](#fn-timeoutsnew)

## Fields

### fn new

```ts
new()
```


`google.app_engine_application_url_dispatch_rules.new` injects a new `google_app_engine_application_url_dispatch_rules` Terraform `resource`
block into the root module document.

Additionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the
resource. For example, if you added a new instance to the root using:

    # arguments omitted for brevity
    google.app_engine_application_url_dispatch_rules.new('some_id')

You can get the reference to the `id` field of the created `google.app_engine_application_url_dispatch_rules` using the reference:

    $._ref.google_app_engine_application_url_dispatch_rules.some_id.get('id')

This is the same as directly entering `"${ google_app_engine_application_url_dispatch_rules.some_id.id }"` as the value.

NOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,
or `$` to refer to the root object. Instead, make an explicit outer object using `local`.

**Args**:
  - `resourceLabel` (`string`): The name label of the block.
  - `project` (`string`): Set the `project` field on the resulting resource block. When `null`, the `project` field will be omitted from the resulting object.
  - `dispatch_rules` (`list[obj]`): Rules to match an HTTP request and dispatch that request to a service. When `null`, the `dispatch_rules` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.app_engine_application_url_dispatch_rules.dispatch_rules.new](#fn-dispatch_rulesnew) constructor.
  - `timeouts` (`obj`): Set the `timeouts` field on the resulting resource block. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.app_engine_application_url_dispatch_rules.timeouts.new](#fn-timeoutsnew) constructor.

**Returns**:
- A mixin object that injects the new resource into the root Terraform configuration.


### fn newAttrs

```ts
newAttrs()
```


`google.app_engine_application_url_dispatch_rules.newAttrs` constructs a new object with attributes and blocks configured for the `app_engine_application_url_dispatch_rules`
Terraform resource.

Unlike [google.app_engine_application_url_dispatch_rules.new](#fn-new), this function will not inject the `resource`
block into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the
[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.

This is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to
injecting into a complete block.

**Args**:
  - `project` (`string`): Set the `project` field on the resulting object. When `null`, the `project` field will be omitted from the resulting object.
  - `dispatch_rules` (`list[obj]`): Rules to match an HTTP request and dispatch that request to a service. When `null`, the `dispatch_rules` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.app_engine_application_url_dispatch_rules.dispatch_rules.new](#fn-dispatch_rulesnew) constructor.
  - `timeouts` (`obj`): Set the `timeouts` field on the resulting object. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.app_engine_application_url_dispatch_rules.timeouts.new](#fn-timeoutsnew) constructor.

**Returns**:
  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `app_engine_application_url_dispatch_rules` resource into the root Terraform configuration.


### fn withDispatchRules

```ts
withDispatchRules()
```

`google.list[obj].withDispatchRules` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the dispatch_rules field.

This function will replace the array with the passed in `value`. If you wish to instead append the
passed in value to the existing array, use the [google.list[obj].withDispatchRulesMixin](TODO) function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `dispatch_rules` field.


### fn withDispatchRulesMixin

```ts
withDispatchRulesMixin()
```

`google.list[obj].withDispatchRulesMixin` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the dispatch_rules field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google.list[obj].withDispatchRules](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `dispatch_rules` field.


### fn withProject

```ts
withProject()
```

`google.string.withProject` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the project field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `project` field.


### fn withTimeouts

```ts
withTimeouts()
```

`google.obj.withTimeouts` constructs a mixin object that can be merged into the `obj`
Terraform resource block to set or update the timeouts field.

This function will replace the map with the passed in `value`. If you wish to instead merge the
passed in value to the existing map, use the [google.obj.withTimeoutsMixin](TODO) function.

**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`obj`): The value to set for the `timeouts` field.


### fn withTimeoutsMixin

```ts
withTimeoutsMixin()
```

`google.obj.withTimeoutsMixin` constructs a mixin object that can be merged into the `obj`
Terraform resource block to set or update the timeouts field.

This function will merge the passed in value to the existing map. If you wish
to instead replace the entire map with the passed in `value`, use the [google.obj.withTimeouts](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`obj`): The value to set for the `timeouts` field.


## obj dispatch_rules



### fn dispatch_rules.new

```ts
new()
```


`google.app_engine_application_url_dispatch_rules.dispatch_rules.new` constructs a new object with attributes and blocks configured for the `dispatch_rules`
Terraform sub block.



**Args**:
  - `domain` (`string`): Domain name to match against. The wildcard &#34;*&#34; is supported if specified before a period: &#34;*.&#34;.
Defaults to matching all domains: &#34;*&#34;. When `null`, the `domain` field will be omitted from the resulting object.
  - `path` (`string`): Pathname within the host. Must start with a &#34;/&#34;. A single &#34;*&#34; can be included at the end of the path.
The sum of the lengths of the domain and path may not exceed 100 characters.
  - `service` (`string`): Pathname within the host. Must start with a &#34;/&#34;. A single &#34;*&#34; can be included at the end of the path.
The sum of the lengths of the domain and path may not exceed 100 characters.

**Returns**:
  - An attribute object that represents the `dispatch_rules` sub block.


## obj timeouts



### fn timeouts.new

```ts
new()
```


`google.app_engine_application_url_dispatch_rules.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`
Terraform sub block.



**Args**:
  - `create` (`string`): Set the `create` field on the resulting object. When `null`, the `create` field will be omitted from the resulting object.
  - `delete` (`string`): Set the `delete` field on the resulting object. When `null`, the `delete` field will be omitted from the resulting object.
  - `update` (`string`): Set the `update` field on the resulting object. When `null`, the `update` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `timeouts` sub block.
