---
permalink: /vmwareengine_external_access_rule/
---

# vmwareengine_external_access_rule

`vmwareengine_external_access_rule` represents the `google_vmwareengine_external_access_rule` Terraform resource.



This package contains functions and utilities for setting up the resource using Jsonnet code.


## Index

* [`fn new()`](#fn-new)
* [`fn newAttrs()`](#fn-newattrs)
* [`fn withAction()`](#fn-withaction)
* [`fn withDescription()`](#fn-withdescription)
* [`fn withDestinationIpRanges()`](#fn-withdestinationipranges)
* [`fn withDestinationIpRangesMixin()`](#fn-withdestinationiprangesmixin)
* [`fn withDestinationPorts()`](#fn-withdestinationports)
* [`fn withIpProtocol()`](#fn-withipprotocol)
* [`fn withName()`](#fn-withname)
* [`fn withParent()`](#fn-withparent)
* [`fn withPriority()`](#fn-withpriority)
* [`fn withSourceIpRanges()`](#fn-withsourceipranges)
* [`fn withSourceIpRangesMixin()`](#fn-withsourceiprangesmixin)
* [`fn withSourcePorts()`](#fn-withsourceports)
* [`fn withTimeouts()`](#fn-withtimeouts)
* [`fn withTimeoutsMixin()`](#fn-withtimeoutsmixin)
* [`obj destination_ip_ranges`](#obj-destination_ip_ranges)
  * [`fn new()`](#fn-destination_ip_rangesnew)
* [`obj source_ip_ranges`](#obj-source_ip_ranges)
  * [`fn new()`](#fn-source_ip_rangesnew)
* [`obj timeouts`](#obj-timeouts)
  * [`fn new()`](#fn-timeoutsnew)

## Fields

### fn new

```ts
new()
```


`google.vmwareengine_external_access_rule.new` injects a new `google_vmwareengine_external_access_rule` Terraform `resource`
block into the root module document.

Additionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the
resource. For example, if you added a new instance to the root using:

    # arguments omitted for brevity
    google.vmwareengine_external_access_rule.new('some_id')

You can get the reference to the `id` field of the created `google.vmwareengine_external_access_rule` using the reference:

    $._ref.google_vmwareengine_external_access_rule.some_id.get('id')

This is the same as directly entering `"${ google_vmwareengine_external_access_rule.some_id.id }"` as the value.

NOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,
or `$` to refer to the root object. Instead, make an explicit outer object using `local`.

**Args**:
  - `resourceLabel` (`string`): The name label of the block.
  - `action` (`string`): The action that the external access rule performs. Possible values: [&#34;ALLOW&#34;, &#34;DENY&#34;]
  - `description` (`string`): User-provided description for the external access rule. When `null`, the `description` field will be omitted from the resulting object.
  - `destination_ports` (`list`): A list of destination ports to which the external access rule applies.
  - `ip_protocol` (`string`): The IP protocol to which the external access rule applies.
  - `name` (`string`): The ID of the external access rule.
  - `parent` (`string`): The resource name of the network policy.
Resource names are schemeless URIs that follow the conventions in https://cloud.google.com/apis/design/resource_names.
For example: projects/my-project/locations/us-west1-a/networkPolicies/my-policy
  - `priority` (`number`): External access rule priority, which determines the external access rule to use when multiple rules apply.
  - `source_ports` (`list`): A list of source ports to which the external access rule applies.
  - `destination_ip_ranges` (`list[obj]`): If destination ranges are specified, the external access rule applies only to
traffic that has a destination IP address in these ranges. When `null`, the `destination_ip_ranges` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.vmwareengine_external_access_rule.destination_ip_ranges.new](#fn-destination_ip_rangesnew) constructor.
  - `source_ip_ranges` (`list[obj]`): If source ranges are specified, the external access rule applies only to
traffic that has a source IP address in these ranges. When `null`, the `source_ip_ranges` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.vmwareengine_external_access_rule.source_ip_ranges.new](#fn-source_ip_rangesnew) constructor.
  - `timeouts` (`obj`): Set the `timeouts` field on the resulting resource block. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.vmwareengine_external_access_rule.timeouts.new](#fn-timeoutsnew) constructor.

**Returns**:
- A mixin object that injects the new resource into the root Terraform configuration.


### fn newAttrs

```ts
newAttrs()
```


`google.vmwareengine_external_access_rule.newAttrs` constructs a new object with attributes and blocks configured for the `vmwareengine_external_access_rule`
Terraform resource.

Unlike [google.vmwareengine_external_access_rule.new](#fn-new), this function will not inject the `resource`
block into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the
[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.

This is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to
injecting into a complete block.

**Args**:
  - `action` (`string`): The action that the external access rule performs. Possible values: [&#34;ALLOW&#34;, &#34;DENY&#34;]
  - `description` (`string`): User-provided description for the external access rule. When `null`, the `description` field will be omitted from the resulting object.
  - `destination_ports` (`list`): A list of destination ports to which the external access rule applies.
  - `ip_protocol` (`string`): The IP protocol to which the external access rule applies.
  - `name` (`string`): The ID of the external access rule.
  - `parent` (`string`): The resource name of the network policy.
Resource names are schemeless URIs that follow the conventions in https://cloud.google.com/apis/design/resource_names.
For example: projects/my-project/locations/us-west1-a/networkPolicies/my-policy
  - `priority` (`number`): External access rule priority, which determines the external access rule to use when multiple rules apply.
  - `source_ports` (`list`): A list of source ports to which the external access rule applies.
  - `destination_ip_ranges` (`list[obj]`): If destination ranges are specified, the external access rule applies only to
traffic that has a destination IP address in these ranges. When `null`, the `destination_ip_ranges` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.vmwareengine_external_access_rule.destination_ip_ranges.new](#fn-destination_ip_rangesnew) constructor.
  - `source_ip_ranges` (`list[obj]`): If source ranges are specified, the external access rule applies only to
traffic that has a source IP address in these ranges. When `null`, the `source_ip_ranges` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.vmwareengine_external_access_rule.source_ip_ranges.new](#fn-source_ip_rangesnew) constructor.
  - `timeouts` (`obj`): Set the `timeouts` field on the resulting object. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.vmwareengine_external_access_rule.timeouts.new](#fn-timeoutsnew) constructor.

**Returns**:
  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `vmwareengine_external_access_rule` resource into the root Terraform configuration.


### fn withAction

```ts
withAction()
```

`google.string.withAction` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the action field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `action` field.


### fn withDescription

```ts
withDescription()
```

`google.string.withDescription` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the description field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `description` field.


### fn withDestinationIpRanges

```ts
withDestinationIpRanges()
```

`google.list[obj].withDestinationIpRanges` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the destination_ip_ranges field.

This function will replace the array with the passed in `value`. If you wish to instead append the
passed in value to the existing array, use the [google.list[obj].withDestinationIpRangesMixin](TODO) function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `destination_ip_ranges` field.


### fn withDestinationIpRangesMixin

```ts
withDestinationIpRangesMixin()
```

`google.list[obj].withDestinationIpRangesMixin` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the destination_ip_ranges field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google.list[obj].withDestinationIpRanges](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `destination_ip_ranges` field.


### fn withDestinationPorts

```ts
withDestinationPorts()
```

`google.list.withDestinationPorts` constructs a mixin object that can be merged into the `list`
Terraform resource block to set or update the destination_ports field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list`): The value to set for the `destination_ports` field.


### fn withIpProtocol

```ts
withIpProtocol()
```

`google.string.withIpProtocol` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the ip_protocol field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `ip_protocol` field.


### fn withName

```ts
withName()
```

`google.string.withName` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the name field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `name` field.


### fn withParent

```ts
withParent()
```

`google.string.withParent` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the parent field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `parent` field.


### fn withPriority

```ts
withPriority()
```

`google.number.withPriority` constructs a mixin object that can be merged into the `number`
Terraform resource block to set or update the priority field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`number`): The value to set for the `priority` field.


### fn withSourceIpRanges

```ts
withSourceIpRanges()
```

`google.list[obj].withSourceIpRanges` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the source_ip_ranges field.

This function will replace the array with the passed in `value`. If you wish to instead append the
passed in value to the existing array, use the [google.list[obj].withSourceIpRangesMixin](TODO) function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `source_ip_ranges` field.


### fn withSourceIpRangesMixin

```ts
withSourceIpRangesMixin()
```

`google.list[obj].withSourceIpRangesMixin` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the source_ip_ranges field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google.list[obj].withSourceIpRanges](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `source_ip_ranges` field.


### fn withSourcePorts

```ts
withSourcePorts()
```

`google.list.withSourcePorts` constructs a mixin object that can be merged into the `list`
Terraform resource block to set or update the source_ports field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list`): The value to set for the `source_ports` field.


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


## obj destination_ip_ranges



### fn destination_ip_ranges.new

```ts
new()
```


`google.vmwareengine_external_access_rule.destination_ip_ranges.new` constructs a new object with attributes and blocks configured for the `destination_ip_ranges`
Terraform sub block.



**Args**:
  - `external_address` (`string`): The name of an &#39;ExternalAddress&#39; resource. When `null`, the `external_address` field will be omitted from the resulting object.
  - `ip_address_range` (`string`): An IP address range in the CIDR format. When `null`, the `ip_address_range` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `destination_ip_ranges` sub block.


## obj source_ip_ranges



### fn source_ip_ranges.new

```ts
new()
```


`google.vmwareengine_external_access_rule.source_ip_ranges.new` constructs a new object with attributes and blocks configured for the `source_ip_ranges`
Terraform sub block.



**Args**:
  - `ip_address` (`string`): A single IP address. When `null`, the `ip_address` field will be omitted from the resulting object.
  - `ip_address_range` (`string`): An IP address range in the CIDR format. When `null`, the `ip_address_range` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `source_ip_ranges` sub block.


## obj timeouts



### fn timeouts.new

```ts
new()
```


`google.vmwareengine_external_access_rule.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`
Terraform sub block.



**Args**:
  - `create` (`string`): Set the `create` field on the resulting object. When `null`, the `create` field will be omitted from the resulting object.
  - `delete` (`string`): Set the `delete` field on the resulting object. When `null`, the `delete` field will be omitted from the resulting object.
  - `update` (`string`): Set the `update` field on the resulting object. When `null`, the `update` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `timeouts` sub block.
