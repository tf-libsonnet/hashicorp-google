---
permalink: /compute_router_nat/
---

# compute_router_nat

`compute_router_nat` represents the `google_compute_router_nat` Terraform resource.



This package contains functions and utilities for setting up the resource using Jsonnet code.


## Index

* [`fn new()`](#fn-new)
* [`fn newAttrs()`](#fn-newattrs)
* [`fn withDrainNatIps()`](#fn-withdrainnatips)
* [`fn withEnableDynamicPortAllocation()`](#fn-withenabledynamicportallocation)
* [`fn withEnableEndpointIndependentMapping()`](#fn-withenableendpointindependentmapping)
* [`fn withIcmpIdleTimeoutSec()`](#fn-withicmpidletimeoutsec)
* [`fn withLogConfig()`](#fn-withlogconfig)
* [`fn withLogConfigMixin()`](#fn-withlogconfigmixin)
* [`fn withMaxPortsPerVm()`](#fn-withmaxportspervm)
* [`fn withMinPortsPerVm()`](#fn-withminportspervm)
* [`fn withName()`](#fn-withname)
* [`fn withNatIpAllocateOption()`](#fn-withnatipallocateoption)
* [`fn withNatIps()`](#fn-withnatips)
* [`fn withProject()`](#fn-withproject)
* [`fn withRegion()`](#fn-withregion)
* [`fn withRouter()`](#fn-withrouter)
* [`fn withRules()`](#fn-withrules)
* [`fn withRulesMixin()`](#fn-withrulesmixin)
* [`fn withSourceSubnetworkIpRangesToNat()`](#fn-withsourcesubnetworkiprangestonat)
* [`fn withSubnetwork()`](#fn-withsubnetwork)
* [`fn withSubnetworkMixin()`](#fn-withsubnetworkmixin)
* [`fn withTcpEstablishedIdleTimeoutSec()`](#fn-withtcpestablishedidletimeoutsec)
* [`fn withTcpTransitoryIdleTimeoutSec()`](#fn-withtcptransitoryidletimeoutsec)
* [`fn withTimeouts()`](#fn-withtimeouts)
* [`fn withTimeoutsMixin()`](#fn-withtimeoutsmixin)
* [`fn withUdpIdleTimeoutSec()`](#fn-withudpidletimeoutsec)
* [`obj log_config`](#obj-log_config)
  * [`fn new()`](#fn-log_confignew)
* [`obj rules`](#obj-rules)
  * [`fn new()`](#fn-rulesnew)
  * [`obj rules.action`](#obj-rulesaction)
    * [`fn new()`](#fn-rulesactionnew)
* [`obj subnetwork`](#obj-subnetwork)
  * [`fn new()`](#fn-subnetworknew)
* [`obj timeouts`](#obj-timeouts)
  * [`fn new()`](#fn-timeoutsnew)

## Fields

### fn new

```ts
new()
```


`google.compute_router_nat.new` injects a new `google_compute_router_nat` Terraform `resource`
block into the root module document.

Additionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the
resource. For example, if you added a new instance to the root using:

    # arguments omitted for brevity
    google.compute_router_nat.new('some_id')

You can get the reference to the `id` field of the created `google.compute_router_nat` using the reference:

    $._ref.google_compute_router_nat.some_id.get('id')

This is the same as directly entering `"${ google_compute_router_nat.some_id.id }"` as the value.

NOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,
or `$` to refer to the root object. Instead, make an explicit outer object using `local`.

**Args**:
  - `resourceLabel` (`string`): The name label of the block.
  - `drain_nat_ips` (`list`): A list of URLs of the IP resources to be drained. These IPs must be
valid static external IPs that have been assigned to the NAT. When `null`, the `drain_nat_ips` field will be omitted from the resulting object.
  - `enable_dynamic_port_allocation` (`bool`): Enable Dynamic Port Allocation.
If minPortsPerVm is set, minPortsPerVm must be set to a power of two greater than or equal to 32.
If minPortsPerVm is not set, a minimum of 32 ports will be allocated to a VM from this NAT config.
If maxPortsPerVm is set, maxPortsPerVm must be set to a power of two greater than minPortsPerVm.
If maxPortsPerVm is not set, a maximum of 65536 ports will be allocated to a VM from this NAT config.

Mutually exclusive with enableEndpointIndependentMapping. When `null`, the `enable_dynamic_port_allocation` field will be omitted from the resulting object.
  - `enable_endpoint_independent_mapping` (`bool`): Specifies if endpoint independent mapping is enabled. This is enabled by default. For more information
see the [official documentation](https://cloud.google.com/nat/docs/overview#specs-rfcs). When `null`, the `enable_endpoint_independent_mapping` field will be omitted from the resulting object.
  - `icmp_idle_timeout_sec` (`number`): Timeout (in seconds) for ICMP connections. Defaults to 30s if not set. When `null`, the `icmp_idle_timeout_sec` field will be omitted from the resulting object.
  - `max_ports_per_vm` (`number`): Maximum number of ports allocated to a VM from this NAT.
This field can only be set when enableDynamicPortAllocation is enabled. When `null`, the `max_ports_per_vm` field will be omitted from the resulting object.
  - `min_ports_per_vm` (`number`): Minimum number of ports allocated to a VM from this NAT. When `null`, the `min_ports_per_vm` field will be omitted from the resulting object.
  - `name` (`string`): Name of the NAT service. The name must be 1-63 characters long and
comply with RFC1035.
  - `nat_ip_allocate_option` (`string`): How external IPs should be allocated for this NAT. Valid values are
&#39;AUTO_ONLY&#39; for only allowing NAT IPs allocated by Google Cloud
Platform, or &#39;MANUAL_ONLY&#39; for only user-allocated NAT IP addresses. Possible values: [&#34;MANUAL_ONLY&#34;, &#34;AUTO_ONLY&#34;]
  - `nat_ips` (`list`): Self-links of NAT IPs. Only valid if natIpAllocateOption
is set to MANUAL_ONLY. When `null`, the `nat_ips` field will be omitted from the resulting object.
  - `project` (`string`):  When `null`, the `project` field will be omitted from the resulting object.
  - `region` (`string`): Region where the router and NAT reside. When `null`, the `region` field will be omitted from the resulting object.
  - `router` (`string`): The name of the Cloud Router in which this NAT will be configured.
  - `source_subnetwork_ip_ranges_to_nat` (`string`): How NAT should be configured per Subnetwork.
If &#39;ALL_SUBNETWORKS_ALL_IP_RANGES&#39;, all of the
IP ranges in every Subnetwork are allowed to Nat.
If &#39;ALL_SUBNETWORKS_ALL_PRIMARY_IP_RANGES&#39;, all of the primary IP
ranges in every Subnetwork are allowed to Nat.
&#39;LIST_OF_SUBNETWORKS&#39;: A list of Subnetworks are allowed to Nat
(specified in the field subnetwork below). Note that if this field
contains ALL_SUBNETWORKS_ALL_IP_RANGES or
ALL_SUBNETWORKS_ALL_PRIMARY_IP_RANGES, then there should not be any
other RouterNat section in any Router for this network in this region. Possible values: [&#34;ALL_SUBNETWORKS_ALL_IP_RANGES&#34;, &#34;ALL_SUBNETWORKS_ALL_PRIMARY_IP_RANGES&#34;, &#34;LIST_OF_SUBNETWORKS&#34;]
  - `tcp_established_idle_timeout_sec` (`number`): Timeout (in seconds) for TCP established connections.
Defaults to 1200s if not set. When `null`, the `tcp_established_idle_timeout_sec` field will be omitted from the resulting object.
  - `tcp_transitory_idle_timeout_sec` (`number`): Timeout (in seconds) for TCP transitory connections.
Defaults to 30s if not set. When `null`, the `tcp_transitory_idle_timeout_sec` field will be omitted from the resulting object.
  - `udp_idle_timeout_sec` (`number`): Timeout (in seconds) for UDP connections. Defaults to 30s if not set. When `null`, the `udp_idle_timeout_sec` field will be omitted from the resulting object.
  - `log_config` (`list[obj]`): Configuration for logging on NAT When `null`, the `log_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_router_nat.log_config.new](#fn-log_confignew) constructor.
  - `rules` (`list[obj]`): A list of rules associated with this NAT. When `null`, the `rules` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_router_nat.rules.new](#fn-rulesnew) constructor.
  - `subnetwork` (`list[obj]`): One or more subnetwork NAT configurations. Only used if
&#39;source_subnetwork_ip_ranges_to_nat&#39; is set to &#39;LIST_OF_SUBNETWORKS&#39; When `null`, the `subnetwork` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_router_nat.subnetwork.new](#fn-subnetworknew) constructor.
  - `timeouts` (`obj`):  When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_router_nat.timeouts.new](#fn-timeoutsnew) constructor.

**Returns**:
- A mixin object that injects the new resource into the root Terraform configuration.


### fn newAttrs

```ts
newAttrs()
```


`google.compute_router_nat.newAttrs` constructs a new object with attributes and blocks configured for the `compute_router_nat`
Terraform resource.

Unlike [google.compute_router_nat.new](#fn-new), this function will not inject the `resource`
block into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the
[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.

This is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to
injecting into a complete block.

**Args**:
  - `drain_nat_ips` (`list`): A list of URLs of the IP resources to be drained. These IPs must be
valid static external IPs that have been assigned to the NAT. When `null`, the `drain_nat_ips` field will be omitted from the resulting object.
  - `enable_dynamic_port_allocation` (`bool`): Enable Dynamic Port Allocation.
If minPortsPerVm is set, minPortsPerVm must be set to a power of two greater than or equal to 32.
If minPortsPerVm is not set, a minimum of 32 ports will be allocated to a VM from this NAT config.
If maxPortsPerVm is set, maxPortsPerVm must be set to a power of two greater than minPortsPerVm.
If maxPortsPerVm is not set, a maximum of 65536 ports will be allocated to a VM from this NAT config.

Mutually exclusive with enableEndpointIndependentMapping. When `null`, the `enable_dynamic_port_allocation` field will be omitted from the resulting object.
  - `enable_endpoint_independent_mapping` (`bool`): Specifies if endpoint independent mapping is enabled. This is enabled by default. For more information
see the [official documentation](https://cloud.google.com/nat/docs/overview#specs-rfcs). When `null`, the `enable_endpoint_independent_mapping` field will be omitted from the resulting object.
  - `icmp_idle_timeout_sec` (`number`): Timeout (in seconds) for ICMP connections. Defaults to 30s if not set. When `null`, the `icmp_idle_timeout_sec` field will be omitted from the resulting object.
  - `max_ports_per_vm` (`number`): Maximum number of ports allocated to a VM from this NAT.
This field can only be set when enableDynamicPortAllocation is enabled. When `null`, the `max_ports_per_vm` field will be omitted from the resulting object.
  - `min_ports_per_vm` (`number`): Minimum number of ports allocated to a VM from this NAT. When `null`, the `min_ports_per_vm` field will be omitted from the resulting object.
  - `name` (`string`): Name of the NAT service. The name must be 1-63 characters long and
comply with RFC1035.
  - `nat_ip_allocate_option` (`string`): How external IPs should be allocated for this NAT. Valid values are
&#39;AUTO_ONLY&#39; for only allowing NAT IPs allocated by Google Cloud
Platform, or &#39;MANUAL_ONLY&#39; for only user-allocated NAT IP addresses. Possible values: [&#34;MANUAL_ONLY&#34;, &#34;AUTO_ONLY&#34;]
  - `nat_ips` (`list`): Self-links of NAT IPs. Only valid if natIpAllocateOption
is set to MANUAL_ONLY. When `null`, the `nat_ips` field will be omitted from the resulting object.
  - `project` (`string`):  When `null`, the `project` field will be omitted from the resulting object.
  - `region` (`string`): Region where the router and NAT reside. When `null`, the `region` field will be omitted from the resulting object.
  - `router` (`string`): The name of the Cloud Router in which this NAT will be configured.
  - `source_subnetwork_ip_ranges_to_nat` (`string`): How NAT should be configured per Subnetwork.
If &#39;ALL_SUBNETWORKS_ALL_IP_RANGES&#39;, all of the
IP ranges in every Subnetwork are allowed to Nat.
If &#39;ALL_SUBNETWORKS_ALL_PRIMARY_IP_RANGES&#39;, all of the primary IP
ranges in every Subnetwork are allowed to Nat.
&#39;LIST_OF_SUBNETWORKS&#39;: A list of Subnetworks are allowed to Nat
(specified in the field subnetwork below). Note that if this field
contains ALL_SUBNETWORKS_ALL_IP_RANGES or
ALL_SUBNETWORKS_ALL_PRIMARY_IP_RANGES, then there should not be any
other RouterNat section in any Router for this network in this region. Possible values: [&#34;ALL_SUBNETWORKS_ALL_IP_RANGES&#34;, &#34;ALL_SUBNETWORKS_ALL_PRIMARY_IP_RANGES&#34;, &#34;LIST_OF_SUBNETWORKS&#34;]
  - `tcp_established_idle_timeout_sec` (`number`): Timeout (in seconds) for TCP established connections.
Defaults to 1200s if not set. When `null`, the `tcp_established_idle_timeout_sec` field will be omitted from the resulting object.
  - `tcp_transitory_idle_timeout_sec` (`number`): Timeout (in seconds) for TCP transitory connections.
Defaults to 30s if not set. When `null`, the `tcp_transitory_idle_timeout_sec` field will be omitted from the resulting object.
  - `udp_idle_timeout_sec` (`number`): Timeout (in seconds) for UDP connections. Defaults to 30s if not set. When `null`, the `udp_idle_timeout_sec` field will be omitted from the resulting object.
  - `log_config` (`list[obj]`): Configuration for logging on NAT When `null`, the `log_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_router_nat.log_config.new](#fn-log_confignew) constructor.
  - `rules` (`list[obj]`): A list of rules associated with this NAT. When `null`, the `rules` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_router_nat.rules.new](#fn-rulesnew) constructor.
  - `subnetwork` (`list[obj]`): One or more subnetwork NAT configurations. Only used if
&#39;source_subnetwork_ip_ranges_to_nat&#39; is set to &#39;LIST_OF_SUBNETWORKS&#39; When `null`, the `subnetwork` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_router_nat.subnetwork.new](#fn-subnetworknew) constructor.
  - `timeouts` (`obj`):  When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_router_nat.timeouts.new](#fn-timeoutsnew) constructor.

**Returns**:
  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `compute_router_nat` resource into the root Terraform configuration.


### fn withDrainNatIps

```ts
withDrainNatIps()
```

`google.list.withDrainNatIps` constructs a mixin object that can be merged into the `list`
Terraform resource block to set or update the drain_nat_ips field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list`): The value to set for the `drain_nat_ips` field.


### fn withEnableDynamicPortAllocation

```ts
withEnableDynamicPortAllocation()
```

`google.bool.withEnableDynamicPortAllocation` constructs a mixin object that can be merged into the `bool`
Terraform resource block to set or update the enable_dynamic_port_allocation field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`bool`): The value to set for the `enable_dynamic_port_allocation` field.


### fn withEnableEndpointIndependentMapping

```ts
withEnableEndpointIndependentMapping()
```

`google.bool.withEnableEndpointIndependentMapping` constructs a mixin object that can be merged into the `bool`
Terraform resource block to set or update the enable_endpoint_independent_mapping field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`bool`): The value to set for the `enable_endpoint_independent_mapping` field.


### fn withIcmpIdleTimeoutSec

```ts
withIcmpIdleTimeoutSec()
```

`google.number.withIcmpIdleTimeoutSec` constructs a mixin object that can be merged into the `number`
Terraform resource block to set or update the icmp_idle_timeout_sec field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`number`): The value to set for the `icmp_idle_timeout_sec` field.


### fn withLogConfig

```ts
withLogConfig()
```

`google.list[obj].withLogConfig` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the log_config field.

This function will replace the array with the passed in `value`. If you wish to instead append the
passed in value to the existing array, use the [google.list[obj].withLogConfigMixin](TODO) function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `log_config` field.


### fn withLogConfigMixin

```ts
withLogConfigMixin()
```

`google.list[obj].withLogConfigMixin` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the log_config field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google.list[obj].withLogConfig](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `log_config` field.


### fn withMaxPortsPerVm

```ts
withMaxPortsPerVm()
```

`google.number.withMaxPortsPerVm` constructs a mixin object that can be merged into the `number`
Terraform resource block to set or update the max_ports_per_vm field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`number`): The value to set for the `max_ports_per_vm` field.


### fn withMinPortsPerVm

```ts
withMinPortsPerVm()
```

`google.number.withMinPortsPerVm` constructs a mixin object that can be merged into the `number`
Terraform resource block to set or update the min_ports_per_vm field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`number`): The value to set for the `min_ports_per_vm` field.


### fn withName

```ts
withName()
```

`google.string.withName` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the name field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `name` field.


### fn withNatIpAllocateOption

```ts
withNatIpAllocateOption()
```

`google.string.withNatIpAllocateOption` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the nat_ip_allocate_option field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `nat_ip_allocate_option` field.


### fn withNatIps

```ts
withNatIps()
```

`google.list.withNatIps` constructs a mixin object that can be merged into the `list`
Terraform resource block to set or update the nat_ips field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list`): The value to set for the `nat_ips` field.


### fn withProject

```ts
withProject()
```

`google.string.withProject` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the project field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `project` field.


### fn withRegion

```ts
withRegion()
```

`google.string.withRegion` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the region field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `region` field.


### fn withRouter

```ts
withRouter()
```

`google.string.withRouter` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the router field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `router` field.


### fn withRules

```ts
withRules()
```

`google.list[obj].withRules` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the rules field.

This function will replace the array with the passed in `value`. If you wish to instead append the
passed in value to the existing array, use the [google.list[obj].withRulesMixin](TODO) function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `rules` field.


### fn withRulesMixin

```ts
withRulesMixin()
```

`google.list[obj].withRulesMixin` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the rules field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google.list[obj].withRules](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `rules` field.


### fn withSourceSubnetworkIpRangesToNat

```ts
withSourceSubnetworkIpRangesToNat()
```

`google.string.withSourceSubnetworkIpRangesToNat` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the source_subnetwork_ip_ranges_to_nat field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `source_subnetwork_ip_ranges_to_nat` field.


### fn withSubnetwork

```ts
withSubnetwork()
```

`google.list[obj].withSubnetwork` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the subnetwork field.

This function will replace the array with the passed in `value`. If you wish to instead append the
passed in value to the existing array, use the [google.list[obj].withSubnetworkMixin](TODO) function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `subnetwork` field.


### fn withSubnetworkMixin

```ts
withSubnetworkMixin()
```

`google.list[obj].withSubnetworkMixin` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the subnetwork field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google.list[obj].withSubnetwork](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `subnetwork` field.


### fn withTcpEstablishedIdleTimeoutSec

```ts
withTcpEstablishedIdleTimeoutSec()
```

`google.number.withTcpEstablishedIdleTimeoutSec` constructs a mixin object that can be merged into the `number`
Terraform resource block to set or update the tcp_established_idle_timeout_sec field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`number`): The value to set for the `tcp_established_idle_timeout_sec` field.


### fn withTcpTransitoryIdleTimeoutSec

```ts
withTcpTransitoryIdleTimeoutSec()
```

`google.number.withTcpTransitoryIdleTimeoutSec` constructs a mixin object that can be merged into the `number`
Terraform resource block to set or update the tcp_transitory_idle_timeout_sec field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`number`): The value to set for the `tcp_transitory_idle_timeout_sec` field.


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


### fn withUdpIdleTimeoutSec

```ts
withUdpIdleTimeoutSec()
```

`google.number.withUdpIdleTimeoutSec` constructs a mixin object that can be merged into the `number`
Terraform resource block to set or update the udp_idle_timeout_sec field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`number`): The value to set for the `udp_idle_timeout_sec` field.


## obj log_config



### fn log_config.new

```ts
new()
```


`google.compute_router_nat.log_config.new` constructs a new object with attributes and blocks configured for the `log_config`
Terraform sub block.



**Args**:
  - `enable` (`bool`): Indicates whether or not to export logs.
  - `filter` (`string`): Specifies the desired filtering of logs on this NAT. Possible values: [&#34;ERRORS_ONLY&#34;, &#34;TRANSLATIONS_ONLY&#34;, &#34;ALL&#34;]

**Returns**:
  - An attribute object that represents the `log_config` sub block.


## obj rules



### fn rules.new

```ts
new()
```


`google.compute_router_nat.rules.new` constructs a new object with attributes and blocks configured for the `rules`
Terraform sub block.



**Args**:
  - `description` (`string`): An optional description of this rule. When `null`, the `description` field will be omitted from the resulting object.
  - `match` (`string`): CEL expression that specifies the match condition that egress traffic from a VM is evaluated against.
If it evaluates to true, the corresponding action is enforced.

The following examples are valid match expressions for public NAT:

&#34;inIpRange(destination.ip, &#39;1.1.0.0/16&#39;) || inIpRange(destination.ip, &#39;2.2.0.0/16&#39;)&#34;

&#34;destination.ip == &#39;1.1.0.1&#39; || destination.ip == &#39;8.8.8.8&#39;&#34;

The following example is a valid match expression for private NAT:

&#34;nexthop.hub == &#39;https://networkconnectivity.googleapis.com/v1alpha1/projects/my-project/global/hub/hub-1&#39;&#34;
  - `rule_number` (`number`): An integer uniquely identifying a rule in the list.
The rule number must be a positive value between 0 and 65000, and must be unique among rules within a NAT.
  - `action` (`list[obj]`): The action to be enforced for traffic that matches this rule. When `null`, the `action` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_router_nat.rules.action.new](#fn-compute_router_natactionnew) constructor.

**Returns**:
  - An attribute object that represents the `rules` sub block.


## obj rules.action



### fn rules.action.new

```ts
new()
```


`google.compute_router_nat.rules.action.new` constructs a new object with attributes and blocks configured for the `action`
Terraform sub block.



**Args**:
  - `source_nat_active_ips` (`list`): A list of URLs of the IP resources used for this NAT rule.
These IP addresses must be valid static external IP addresses assigned to the project.
This field is used for public NAT. When `null`, the `source_nat_active_ips` field will be omitted from the resulting object.
  - `source_nat_drain_ips` (`list`): A list of URLs of the IP resources to be drained.
These IPs must be valid static external IPs that have been assigned to the NAT.
These IPs should be used for updating/patching a NAT rule only.
This field is used for public NAT. When `null`, the `source_nat_drain_ips` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `action` sub block.


## obj subnetwork



### fn subnetwork.new

```ts
new()
```


`google.compute_router_nat.subnetwork.new` constructs a new object with attributes and blocks configured for the `subnetwork`
Terraform sub block.



**Args**:
  - `name` (`string`): Self-link of subnetwork to NAT
  - `secondary_ip_range_names` (`list`): List of the secondary ranges of the subnetwork that are allowed
to use NAT. This can be populated only if
&#39;LIST_OF_SECONDARY_IP_RANGES&#39; is one of the values in
sourceIpRangesToNat When `null`, the `secondary_ip_range_names` field will be omitted from the resulting object.
  - `source_ip_ranges_to_nat` (`list`): List of options for which source IPs in the subnetwork
should have NAT enabled. Supported values include:
&#39;ALL_IP_RANGES&#39;, &#39;LIST_OF_SECONDARY_IP_RANGES&#39;,
&#39;PRIMARY_IP_RANGE&#39;.

**Returns**:
  - An attribute object that represents the `subnetwork` sub block.


## obj timeouts



### fn timeouts.new

```ts
new()
```


`google.compute_router_nat.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`
Terraform sub block.



**Args**:
  - `create` (`string`):  When `null`, the `create` field will be omitted from the resulting object.
  - `delete` (`string`):  When `null`, the `delete` field will be omitted from the resulting object.
  - `update` (`string`):  When `null`, the `update` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `timeouts` sub block.
