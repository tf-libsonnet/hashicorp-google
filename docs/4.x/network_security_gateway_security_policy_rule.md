---
permalink: /network_security_gateway_security_policy_rule/
---

# network_security_gateway_security_policy_rule

`network_security_gateway_security_policy_rule` represents the `google_network_security_gateway_security_policy_rule` Terraform resource.



This package contains functions and utilities for setting up the resource using Jsonnet code.


## Index

* [`fn new()`](#fn-new)
* [`fn newAttrs()`](#fn-newattrs)
* [`fn withApplicationMatcher()`](#fn-withapplicationmatcher)
* [`fn withBasicProfile()`](#fn-withbasicprofile)
* [`fn withDescription()`](#fn-withdescription)
* [`fn withEnabled()`](#fn-withenabled)
* [`fn withGatewaySecurityPolicy()`](#fn-withgatewaysecuritypolicy)
* [`fn withLocation()`](#fn-withlocation)
* [`fn withName()`](#fn-withname)
* [`fn withPriority()`](#fn-withpriority)
* [`fn withProject()`](#fn-withproject)
* [`fn withSessionMatcher()`](#fn-withsessionmatcher)
* [`fn withTimeouts()`](#fn-withtimeouts)
* [`fn withTimeoutsMixin()`](#fn-withtimeoutsmixin)
* [`fn withTlsInspectionEnabled()`](#fn-withtlsinspectionenabled)
* [`obj timeouts`](#obj-timeouts)
  * [`fn new()`](#fn-timeoutsnew)

## Fields

### fn new

```ts
new()
```


`google.network_security_gateway_security_policy_rule.new` injects a new `google_network_security_gateway_security_policy_rule` Terraform `resource`
block into the root module document.

Additionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the
resource. For example, if you added a new instance to the root using:

    # arguments omitted for brevity
    google.network_security_gateway_security_policy_rule.new('some_id')

You can get the reference to the `id` field of the created `google.network_security_gateway_security_policy_rule` using the reference:

    $._ref.google_network_security_gateway_security_policy_rule.some_id.get('id')

This is the same as directly entering `"${ google_network_security_gateway_security_policy_rule.some_id.id }"` as the value.

NOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,
or `$` to refer to the root object. Instead, make an explicit outer object using `local`.

**Args**:
  - `resourceLabel` (`string`): The name label of the block.
  - `application_matcher` (`string`): CEL expression for matching on L7/application level criteria. When `null`, the `application_matcher` field will be omitted from the resulting object.
  - `basic_profile` (`string`): Profile which tells what the primitive action should be. Possible values are: * ALLOW * DENY. Possible values: [&#34;BASIC_PROFILE_UNSPECIFIED&#34;, &#34;ALLOW&#34;, &#34;DENY&#34;]
  - `description` (`string`): Free-text description of the resource. When `null`, the `description` field will be omitted from the resulting object.
  - `enabled` (`bool`): Whether the rule is enforced.
  - `gateway_security_policy` (`string`): The name of the gatewat security policy this rule belongs to.
  - `location` (`string`): The location of the gateway security policy.
  - `name` (`string`): Name of the resource. ame is the full resource name so projects/{project}/locations/{location}/gatewaySecurityPolicies/{gateway_security_policy}/rules/{rule}
rule should match the pattern: (^a-z?$).
  - `priority` (`number`): Priority of the rule. Lower number corresponds to higher precedence.
  - `project` (`string`): Set the `project` field on the resulting resource block. When `null`, the `project` field will be omitted from the resulting object.
  - `session_matcher` (`string`): CEL expression for matching on session criteria.
  - `tls_inspection_enabled` (`bool`): Flag to enable TLS inspection of traffic matching on. Can only be true if the
parent GatewaySecurityPolicy references a TLSInspectionConfig. When `null`, the `tls_inspection_enabled` field will be omitted from the resulting object.
  - `timeouts` (`obj`): Set the `timeouts` field on the resulting resource block. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.network_security_gateway_security_policy_rule.timeouts.new](#fn-timeoutsnew) constructor.

**Returns**:
- A mixin object that injects the new resource into the root Terraform configuration.


### fn newAttrs

```ts
newAttrs()
```


`google.network_security_gateway_security_policy_rule.newAttrs` constructs a new object with attributes and blocks configured for the `network_security_gateway_security_policy_rule`
Terraform resource.

Unlike [google.network_security_gateway_security_policy_rule.new](#fn-new), this function will not inject the `resource`
block into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the
[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.

This is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to
injecting into a complete block.

**Args**:
  - `application_matcher` (`string`): CEL expression for matching on L7/application level criteria. When `null`, the `application_matcher` field will be omitted from the resulting object.
  - `basic_profile` (`string`): Profile which tells what the primitive action should be. Possible values are: * ALLOW * DENY. Possible values: [&#34;BASIC_PROFILE_UNSPECIFIED&#34;, &#34;ALLOW&#34;, &#34;DENY&#34;]
  - `description` (`string`): Free-text description of the resource. When `null`, the `description` field will be omitted from the resulting object.
  - `enabled` (`bool`): Whether the rule is enforced.
  - `gateway_security_policy` (`string`): The name of the gatewat security policy this rule belongs to.
  - `location` (`string`): The location of the gateway security policy.
  - `name` (`string`): Name of the resource. ame is the full resource name so projects/{project}/locations/{location}/gatewaySecurityPolicies/{gateway_security_policy}/rules/{rule}
rule should match the pattern: (^a-z?$).
  - `priority` (`number`): Priority of the rule. Lower number corresponds to higher precedence.
  - `project` (`string`): Set the `project` field on the resulting object. When `null`, the `project` field will be omitted from the resulting object.
  - `session_matcher` (`string`): CEL expression for matching on session criteria.
  - `tls_inspection_enabled` (`bool`): Flag to enable TLS inspection of traffic matching on. Can only be true if the
parent GatewaySecurityPolicy references a TLSInspectionConfig. When `null`, the `tls_inspection_enabled` field will be omitted from the resulting object.
  - `timeouts` (`obj`): Set the `timeouts` field on the resulting object. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.network_security_gateway_security_policy_rule.timeouts.new](#fn-timeoutsnew) constructor.

**Returns**:
  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `network_security_gateway_security_policy_rule` resource into the root Terraform configuration.


### fn withApplicationMatcher

```ts
withApplicationMatcher()
```

`google.string.withApplicationMatcher` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the application_matcher field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `application_matcher` field.


### fn withBasicProfile

```ts
withBasicProfile()
```

`google.string.withBasicProfile` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the basic_profile field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `basic_profile` field.


### fn withDescription

```ts
withDescription()
```

`google.string.withDescription` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the description field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `description` field.


### fn withEnabled

```ts
withEnabled()
```

`google.bool.withEnabled` constructs a mixin object that can be merged into the `bool`
Terraform resource block to set or update the enabled field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`bool`): The value to set for the `enabled` field.


### fn withGatewaySecurityPolicy

```ts
withGatewaySecurityPolicy()
```

`google.string.withGatewaySecurityPolicy` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the gateway_security_policy field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `gateway_security_policy` field.


### fn withLocation

```ts
withLocation()
```

`google.string.withLocation` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the location field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `location` field.


### fn withName

```ts
withName()
```

`google.string.withName` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the name field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `name` field.


### fn withPriority

```ts
withPriority()
```

`google.number.withPriority` constructs a mixin object that can be merged into the `number`
Terraform resource block to set or update the priority field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`number`): The value to set for the `priority` field.


### fn withProject

```ts
withProject()
```

`google.string.withProject` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the project field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `project` field.


### fn withSessionMatcher

```ts
withSessionMatcher()
```

`google.string.withSessionMatcher` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the session_matcher field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `session_matcher` field.


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


### fn withTlsInspectionEnabled

```ts
withTlsInspectionEnabled()
```

`google.bool.withTlsInspectionEnabled` constructs a mixin object that can be merged into the `bool`
Terraform resource block to set or update the tls_inspection_enabled field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`bool`): The value to set for the `tls_inspection_enabled` field.


## obj timeouts



### fn timeouts.new

```ts
new()
```


`google.network_security_gateway_security_policy_rule.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`
Terraform sub block.



**Args**:
  - `create` (`string`): Set the `create` field on the resulting object. When `null`, the `create` field will be omitted from the resulting object.
  - `delete` (`string`): Set the `delete` field on the resulting object. When `null`, the `delete` field will be omitted from the resulting object.
  - `update` (`string`): Set the `update` field on the resulting object. When `null`, the `update` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `timeouts` sub block.
