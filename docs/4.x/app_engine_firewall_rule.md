---
permalink: /app_engine_firewall_rule/
---

# app_engine_firewall_rule

`app_engine_firewall_rule` represents the `google_app_engine_firewall_rule` Terraform resource.



This package contains functions and utilities for setting up the resource using Jsonnet code.


## Index

* [`fn new()`](#fn-new)
* [`fn newAttrs()`](#fn-newattrs)
* [`fn withAction()`](#fn-withaction)
* [`fn withDescription()`](#fn-withdescription)
* [`fn withPriority()`](#fn-withpriority)
* [`fn withProject()`](#fn-withproject)
* [`fn withSourceRange()`](#fn-withsourcerange)
* [`fn withTimeouts()`](#fn-withtimeouts)
* [`fn withTimeoutsMixin()`](#fn-withtimeoutsmixin)
* [`obj timeouts`](#obj-timeouts)
  * [`fn new()`](#fn-timeoutsnew)

## Fields

### fn new

```ts
new()
```


`google.app_engine_firewall_rule.new` injects a new `google_app_engine_firewall_rule` Terraform `resource`
block into the root module document.

Additionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the
resource. For example, if you added a new instance to the root using:

    # arguments omitted for brevity
    google.app_engine_firewall_rule.new('some_id')

You can get the reference to the `id` field of the created `google.app_engine_firewall_rule` using the reference:

    $._ref.google_app_engine_firewall_rule.some_id.get('id')

This is the same as directly entering `"${ google_app_engine_firewall_rule.some_id.id }"` as the value.

NOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,
or `$` to refer to the root object. Instead, make an explicit outer object using `local`.

**Args**:
  - `resourceLabel` (`string`): The name label of the block.
  - `action` (`string`): The action to take if this rule matches. Possible values: [&#34;UNSPECIFIED_ACTION&#34;, &#34;ALLOW&#34;, &#34;DENY&#34;]
  - `description` (`string`): An optional string description of this rule. When `null`, the `description` field will be omitted from the resulting object.
  - `priority` (`number`): A positive integer that defines the order of rule evaluation.
Rules with the lowest priority are evaluated first.

A default rule at priority Int32.MaxValue matches all IPv4 and
IPv6 traffic when no previous rule matches. Only the action of
this rule can be modified by the user. When `null`, the `priority` field will be omitted from the resulting object.
  - `project` (`string`):  When `null`, the `project` field will be omitted from the resulting object.
  - `source_range` (`string`): IP address or range, defined using CIDR notation, of requests that this rule applies to.
  - `timeouts` (`obj`):  When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.app_engine_firewall_rule.timeouts.new](#fn-appenginefirewallruletimeoutsnew) constructor.

**Returns**:
- A mixin object that injects the new resource into the root Terraform configuration.


### fn newAttrs

```ts
newAttrs()
```


`google.app_engine_firewall_rule.newAttrs` constructs a new object with attributes and blocks configured for the `app_engine_firewall_rule`
Terraform resource.

Unlike [google.app_engine_firewall_rule.new](#fn-appenginefirewallrulenew), this function will not inject the `resource`
block into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the
[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.

This is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to
injecting into a complete block.

**Args**:
  - `action` (`string`): The action to take if this rule matches. Possible values: [&#34;UNSPECIFIED_ACTION&#34;, &#34;ALLOW&#34;, &#34;DENY&#34;]
  - `description` (`string`): An optional string description of this rule. When `null`, the `description` field will be omitted from the resulting object.
  - `priority` (`number`): A positive integer that defines the order of rule evaluation.
Rules with the lowest priority are evaluated first.

A default rule at priority Int32.MaxValue matches all IPv4 and
IPv6 traffic when no previous rule matches. Only the action of
this rule can be modified by the user. When `null`, the `priority` field will be omitted from the resulting object.
  - `project` (`string`):  When `null`, the `project` field will be omitted from the resulting object.
  - `source_range` (`string`): IP address or range, defined using CIDR notation, of requests that this rule applies to.
  - `timeouts` (`obj`):  When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.app_engine_firewall_rule.timeouts.new](#fn-appenginefirewallruletimeoutsnew) constructor.

**Returns**:
  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `app_engine_firewall_rule` resource into the root Terraform configuration.


### fn withAction

```ts
withAction()
```

`google.app_engine_firewall_rule.withAction` constructs a mixin object that can be merged into the `app_engine_firewall_rule`
Terraform resource block to set or update the action field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`TODO`): The value to set for the `action` field.


### fn withDescription

```ts
withDescription()
```

`google.app_engine_firewall_rule.withDescription` constructs a mixin object that can be merged into the `app_engine_firewall_rule`
Terraform resource block to set or update the description field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`TODO`): The value to set for the `description` field.


### fn withPriority

```ts
withPriority()
```

`google.app_engine_firewall_rule.withPriority` constructs a mixin object that can be merged into the `app_engine_firewall_rule`
Terraform resource block to set or update the priority field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`TODO`): The value to set for the `priority` field.


### fn withProject

```ts
withProject()
```

`google.app_engine_firewall_rule.withProject` constructs a mixin object that can be merged into the `app_engine_firewall_rule`
Terraform resource block to set or update the project field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`TODO`): The value to set for the `project` field.


### fn withSourceRange

```ts
withSourceRange()
```

`google.app_engine_firewall_rule.withSourceRange` constructs a mixin object that can be merged into the `app_engine_firewall_rule`
Terraform resource block to set or update the source_range field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`TODO`): The value to set for the `source_range` field.


### fn withTimeouts

```ts
withTimeouts()
```

`google.app_engine_firewall_rule.withTimeouts` constructs a mixin object that can be merged into the `app_engine_firewall_rule`
Terraform resource block to set or update the timeouts field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`TODO`): The value to set for the `timeouts` field.


### fn withTimeoutsMixin

```ts
withTimeoutsMixin()
```

`google.app_engine_firewall_rule.withTimeoutsMixin` constructs a mixin object that can be merged into the `app_engine_firewall_rule`
Terraform resource block to set or update the timeouts field.

This function will merge the passed in value to the existing map. If you wish
to instead replace the entire map with the passed in `value`, use the [google.app_engine_firewall_rule.withTimeouts](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`TODO`): The value to set for the `timeouts` field.


## obj timeouts



### fn timeouts.new

```ts
new()
```


`google.app_engine_firewall_rule.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`
Terraform sub block.



**Args**:
  - `create` (`string`):  When `null`, the `create` field will be omitted from the resulting object.
  - `delete` (`string`):  When `null`, the `delete` field will be omitted from the resulting object.
  - `update` (`string`):  When `null`, the `update` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `timeouts` sub block.
