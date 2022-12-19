---
permalink: /compute_global_forwarding_rule/
---

# compute_global_forwarding_rule

`compute_global_forwarding_rule` represents the `google_compute_global_forwarding_rule` Terraform resource.



This package contains functions and utilities for setting up the resource using Jsonnet code.


## Index

* [`fn new()`](#fn-new)
* [`fn newAttrs()`](#fn-newattrs)
* [`fn withDescription()`](#fn-withdescription)
* [`fn withIpAddress()`](#fn-withipaddress)
* [`fn withIpProtocol()`](#fn-withipprotocol)
* [`fn withIpVersion()`](#fn-withipversion)
* [`fn withLabels()`](#fn-withlabels)
* [`fn withLoadBalancingScheme()`](#fn-withloadbalancingscheme)
* [`fn withMetadataFilters()`](#fn-withmetadatafilters)
* [`fn withMetadataFiltersMixin()`](#fn-withmetadatafiltersmixin)
* [`fn withName()`](#fn-withname)
* [`fn withNetwork()`](#fn-withnetwork)
* [`fn withPortRange()`](#fn-withportrange)
* [`fn withProject()`](#fn-withproject)
* [`fn withTarget()`](#fn-withtarget)
* [`fn withTimeouts()`](#fn-withtimeouts)
* [`fn withTimeoutsMixin()`](#fn-withtimeoutsmixin)
* [`obj metadata_filters`](#obj-metadata_filters)
  * [`fn new()`](#fn-metadata_filtersnew)
  * [`obj metadata_filters.filter_labels`](#obj-metadata_filtersfilter_labels)
    * [`fn new()`](#fn-metadata_filtersfilter_labelsnew)
* [`obj timeouts`](#obj-timeouts)
  * [`fn new()`](#fn-timeoutsnew)

## Fields

### fn new

```ts
new()
```


`google.compute_global_forwarding_rule.new` injects a new `google_compute_global_forwarding_rule` Terraform `resource`
block into the root module document.

Additionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the
resource. For example, if you added a new instance to the root using:

    # arguments omitted for brevity
    google.compute_global_forwarding_rule.new('some_id')

You can get the reference to the `id` field of the created `google.compute_global_forwarding_rule` using the reference:

    $._ref.google_compute_global_forwarding_rule.some_id.get('id')

This is the same as directly entering `"${ google_compute_global_forwarding_rule.some_id.id }"` as the value.

NOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,
or `$` to refer to the root object. Instead, make an explicit outer object using `local`.

**Args**:
  - `resourceLabel` (`string`): The name label of the block.
  - `description` (`string`): An optional description of this resource. Provide this property when you create the resource. When `null`, the `description` field will be omitted from the resulting object.
  - `ip_address` (`string`): IP address that this forwarding rule serves. When a client sends traffic to this IP address, the forwarding rule directs the traffic to the target that you specify in the forwarding rule. If you don&#39;t specify a reserved IP address, an ephemeral IP address is assigned. Methods for specifying an IP address: * IPv4 dotted decimal, as in `100.1.2.3` * Full URL, as in `https://www.googleapis.com/compute/v1/projects/project_id/regions/region/addresses/address-name` * Partial URL or by name, as in: * `projects/project_id/regions/region/addresses/address-name` * `regions/region/addresses/address-name` * `global/addresses/address-name` * `address-name` The loadBalancingScheme and the forwarding rule&#39;s target determine the type of IP address that you can use. For detailed information, refer to [IP address specifications](/load-balancing/docs/forwarding-rule-concepts#ip_address_specifications). When `null`, the `ip_address` field will be omitted from the resulting object.
  - `ip_protocol` (`string`): The IP protocol to which this rule applies. For protocol forwarding, valid options are `TCP`, `UDP`, `ESP`, `AH`, `SCTP` or `ICMP`. For Internal TCP/UDP Load Balancing, the load balancing scheme is `INTERNAL`, and one of `TCP` or `UDP` are valid. For Traffic Director, the load balancing scheme is `INTERNAL_SELF_MANAGED`, and only `TCP`is valid. For Internal HTTP(S) Load Balancing, the load balancing scheme is `INTERNAL_MANAGED`, and only `TCP` is valid. For HTTP(S), SSL Proxy, and TCP Proxy Load Balancing, the load balancing scheme is `EXTERNAL` and only `TCP` is valid. For Network TCP/UDP Load Balancing, the load balancing scheme is `EXTERNAL`, and one of `TCP` or `UDP` is valid. When `null`, the `ip_protocol` field will be omitted from the resulting object.
  - `ip_version` (`string`): The IP Version that will be used by this forwarding rule. Valid options are `IPV4` or `IPV6`. This can only be specified for an external global forwarding rule. Possible values: UNSPECIFIED_VERSION, IPV4, IPV6 When `null`, the `ip_version` field will be omitted from the resulting object.
  - `labels` (`obj`): Labels to apply to this rule. When `null`, the `labels` field will be omitted from the resulting object.
  - `load_balancing_scheme` (`string`): Specifies the forwarding rule type.

*   `EXTERNAL` is used for:
    *   Classic Cloud VPN gateways
    *   Protocol forwarding to VMs from an external IP address
    *   The following load balancers: HTTP(S), SSL Proxy, TCP Proxy, and Network TCP/UDP
*   `INTERNAL` is used for:
    *   Protocol forwarding to VMs from an internal IP address
    *   Internal TCP/UDP load balancers
*   `INTERNAL_MANAGED` is used for:
    *   Internal HTTP(S) load balancers
*   `INTERNAL_SELF_MANAGED` is used for:
    *   Traffic Director
*   `EXTERNAL_MANAGED` is used for:
    *   Global external HTTP(S) load balancers 

For more information about forwarding rules, refer to [Forwarding rule concepts](/load-balancing/docs/forwarding-rule-concepts). Possible values: INVALID, INTERNAL, INTERNAL_MANAGED, INTERNAL_SELF_MANAGED, EXTERNAL, EXTERNAL_MANAGED When `null`, the `load_balancing_scheme` field will be omitted from the resulting object.
  - `name` (`string`): Name of the resource; provided by the client when the resource is created. The name must be 1-63 characters long, and comply with [RFC1035](https://www.ietf.org/rfc/rfc1035.txt). Specifically, the name must be 1-63 characters long and match the regular expression `[a-z]([-a-z0-9]*[a-z0-9])?` which means the first character must be a lowercase letter, and all following characters must be a dash, lowercase letter, or digit, except the last character, which cannot be a dash.
  - `network` (`string`): This field is not used for external load balancing. For `INTERNAL` and `INTERNAL_SELF_MANAGED` load balancing, this field identifies the network that the load balanced IP should belong to for this Forwarding Rule. If this field is not specified, the default network will be used. When `null`, the `network` field will be omitted from the resulting object.
  - `port_range` (`string`): When the load balancing scheme is `EXTERNAL`, `INTERNAL_SELF_MANAGED` and `INTERNAL_MANAGED`, you can specify a `port_range`. Use with a forwarding rule that points to a target proxy or a target pool. Do not use with a forwarding rule that points to a backend service. This field is used along with the `target` field for TargetHttpProxy, TargetHttpsProxy, TargetSslProxy, TargetTcpProxy, TargetVpnGateway, TargetPool, TargetInstance. Applicable only when `IPProtocol` is `TCP`, `UDP`, or `SCTP`, only packets addressed to ports in the specified range will be forwarded to `target`. Forwarding rules with the same `[IPAddress, IPProtocol]` pair must have disjoint port ranges. Some types of forwarding target have constraints on the acceptable ports:

*   TargetHttpProxy: 80, 8080
*   TargetHttpsProxy: 443
*   TargetTcpProxy: 25, 43, 110, 143, 195, 443, 465, 587, 700, 993, 995, 1688, 1883, 5222
*   TargetSslProxy: 25, 43, 110, 143, 195, 443, 465, 587, 700, 993, 995, 1688, 1883, 5222
*   TargetVpnGateway: 500, 4500

@pattern: d&#43;(?:-d&#43;)? When `null`, the `port_range` field will be omitted from the resulting object.
  - `project` (`string`): The project this resource belongs in. When `null`, the `project` field will be omitted from the resulting object.
  - `target` (`string`): The URL of the target resource to receive the matched traffic. For regional forwarding rules, this target must live in the same region as the forwarding rule. For global forwarding rules, this target must be a global load balancing resource. The forwarded traffic must be of a type appropriate to the target object. For `INTERNAL_SELF_MANAGED` load balancing, only `targetHttpProxy` is valid, not `targetHttpsProxy`.
  - `metadata_filters` (`list[obj]`): Opaque filter criteria used by Loadbalancer to restrict routing configuration to a limited set of [xDS](https://github.com/envoyproxy/data-plane-api/blob/master/XDS_PROTOCOL.md) compliant clients. In their xDS requests to Loadbalancer, xDS clients present [node metadata](https://github.com/envoyproxy/data-plane-api/search?q=%22message&#43;Node%22&#43;in%3A%2Fenvoy%2Fapi%2Fv2%2Fcore%2Fbase.proto&amp;). If a match takes place, the relevant configuration is made available to those proxies. Otherwise, all the resources (e.g. `TargetHttpProxy`, `UrlMap`) referenced by the `ForwardingRule` will not be visible to those proxies.

For each `metadataFilter` in this list, if its `filterMatchCriteria` is set to MATCH_ANY, at least one of the `filterLabel`s must match the corresponding label provided in the metadata. If its `filterMatchCriteria` is set to MATCH_ALL, then all of its `filterLabel`s must match with corresponding labels provided in the metadata.

`metadataFilters` specified here will be applifed before those specified in the `UrlMap` that this `ForwardingRule` references.

`metadataFilters` only applies to Loadbalancers that have their loadBalancingScheme set to `INTERNAL_SELF_MANAGED`. When `null`, the `metadata_filters` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_global_forwarding_rule.metadata_filters.new](#fn-metadata_filtersnew) constructor.
  - `timeouts` (`obj`): Set the `timeouts` field on the resulting resource block. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_global_forwarding_rule.timeouts.new](#fn-timeoutsnew) constructor.

**Returns**:
- A mixin object that injects the new resource into the root Terraform configuration.


### fn newAttrs

```ts
newAttrs()
```


`google.compute_global_forwarding_rule.newAttrs` constructs a new object with attributes and blocks configured for the `compute_global_forwarding_rule`
Terraform resource.

Unlike [google.compute_global_forwarding_rule.new](#fn-new), this function will not inject the `resource`
block into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the
[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.

This is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to
injecting into a complete block.

**Args**:
  - `description` (`string`): An optional description of this resource. Provide this property when you create the resource. When `null`, the `description` field will be omitted from the resulting object.
  - `ip_address` (`string`): IP address that this forwarding rule serves. When a client sends traffic to this IP address, the forwarding rule directs the traffic to the target that you specify in the forwarding rule. If you don&#39;t specify a reserved IP address, an ephemeral IP address is assigned. Methods for specifying an IP address: * IPv4 dotted decimal, as in `100.1.2.3` * Full URL, as in `https://www.googleapis.com/compute/v1/projects/project_id/regions/region/addresses/address-name` * Partial URL or by name, as in: * `projects/project_id/regions/region/addresses/address-name` * `regions/region/addresses/address-name` * `global/addresses/address-name` * `address-name` The loadBalancingScheme and the forwarding rule&#39;s target determine the type of IP address that you can use. For detailed information, refer to [IP address specifications](/load-balancing/docs/forwarding-rule-concepts#ip_address_specifications). When `null`, the `ip_address` field will be omitted from the resulting object.
  - `ip_protocol` (`string`): The IP protocol to which this rule applies. For protocol forwarding, valid options are `TCP`, `UDP`, `ESP`, `AH`, `SCTP` or `ICMP`. For Internal TCP/UDP Load Balancing, the load balancing scheme is `INTERNAL`, and one of `TCP` or `UDP` are valid. For Traffic Director, the load balancing scheme is `INTERNAL_SELF_MANAGED`, and only `TCP`is valid. For Internal HTTP(S) Load Balancing, the load balancing scheme is `INTERNAL_MANAGED`, and only `TCP` is valid. For HTTP(S), SSL Proxy, and TCP Proxy Load Balancing, the load balancing scheme is `EXTERNAL` and only `TCP` is valid. For Network TCP/UDP Load Balancing, the load balancing scheme is `EXTERNAL`, and one of `TCP` or `UDP` is valid. When `null`, the `ip_protocol` field will be omitted from the resulting object.
  - `ip_version` (`string`): The IP Version that will be used by this forwarding rule. Valid options are `IPV4` or `IPV6`. This can only be specified for an external global forwarding rule. Possible values: UNSPECIFIED_VERSION, IPV4, IPV6 When `null`, the `ip_version` field will be omitted from the resulting object.
  - `labels` (`obj`): Labels to apply to this rule. When `null`, the `labels` field will be omitted from the resulting object.
  - `load_balancing_scheme` (`string`): Specifies the forwarding rule type.

*   `EXTERNAL` is used for:
    *   Classic Cloud VPN gateways
    *   Protocol forwarding to VMs from an external IP address
    *   The following load balancers: HTTP(S), SSL Proxy, TCP Proxy, and Network TCP/UDP
*   `INTERNAL` is used for:
    *   Protocol forwarding to VMs from an internal IP address
    *   Internal TCP/UDP load balancers
*   `INTERNAL_MANAGED` is used for:
    *   Internal HTTP(S) load balancers
*   `INTERNAL_SELF_MANAGED` is used for:
    *   Traffic Director
*   `EXTERNAL_MANAGED` is used for:
    *   Global external HTTP(S) load balancers 

For more information about forwarding rules, refer to [Forwarding rule concepts](/load-balancing/docs/forwarding-rule-concepts). Possible values: INVALID, INTERNAL, INTERNAL_MANAGED, INTERNAL_SELF_MANAGED, EXTERNAL, EXTERNAL_MANAGED When `null`, the `load_balancing_scheme` field will be omitted from the resulting object.
  - `name` (`string`): Name of the resource; provided by the client when the resource is created. The name must be 1-63 characters long, and comply with [RFC1035](https://www.ietf.org/rfc/rfc1035.txt). Specifically, the name must be 1-63 characters long and match the regular expression `[a-z]([-a-z0-9]*[a-z0-9])?` which means the first character must be a lowercase letter, and all following characters must be a dash, lowercase letter, or digit, except the last character, which cannot be a dash.
  - `network` (`string`): This field is not used for external load balancing. For `INTERNAL` and `INTERNAL_SELF_MANAGED` load balancing, this field identifies the network that the load balanced IP should belong to for this Forwarding Rule. If this field is not specified, the default network will be used. When `null`, the `network` field will be omitted from the resulting object.
  - `port_range` (`string`): When the load balancing scheme is `EXTERNAL`, `INTERNAL_SELF_MANAGED` and `INTERNAL_MANAGED`, you can specify a `port_range`. Use with a forwarding rule that points to a target proxy or a target pool. Do not use with a forwarding rule that points to a backend service. This field is used along with the `target` field for TargetHttpProxy, TargetHttpsProxy, TargetSslProxy, TargetTcpProxy, TargetVpnGateway, TargetPool, TargetInstance. Applicable only when `IPProtocol` is `TCP`, `UDP`, or `SCTP`, only packets addressed to ports in the specified range will be forwarded to `target`. Forwarding rules with the same `[IPAddress, IPProtocol]` pair must have disjoint port ranges. Some types of forwarding target have constraints on the acceptable ports:

*   TargetHttpProxy: 80, 8080
*   TargetHttpsProxy: 443
*   TargetTcpProxy: 25, 43, 110, 143, 195, 443, 465, 587, 700, 993, 995, 1688, 1883, 5222
*   TargetSslProxy: 25, 43, 110, 143, 195, 443, 465, 587, 700, 993, 995, 1688, 1883, 5222
*   TargetVpnGateway: 500, 4500

@pattern: d&#43;(?:-d&#43;)? When `null`, the `port_range` field will be omitted from the resulting object.
  - `project` (`string`): The project this resource belongs in. When `null`, the `project` field will be omitted from the resulting object.
  - `target` (`string`): The URL of the target resource to receive the matched traffic. For regional forwarding rules, this target must live in the same region as the forwarding rule. For global forwarding rules, this target must be a global load balancing resource. The forwarded traffic must be of a type appropriate to the target object. For `INTERNAL_SELF_MANAGED` load balancing, only `targetHttpProxy` is valid, not `targetHttpsProxy`.
  - `metadata_filters` (`list[obj]`): Opaque filter criteria used by Loadbalancer to restrict routing configuration to a limited set of [xDS](https://github.com/envoyproxy/data-plane-api/blob/master/XDS_PROTOCOL.md) compliant clients. In their xDS requests to Loadbalancer, xDS clients present [node metadata](https://github.com/envoyproxy/data-plane-api/search?q=%22message&#43;Node%22&#43;in%3A%2Fenvoy%2Fapi%2Fv2%2Fcore%2Fbase.proto&amp;). If a match takes place, the relevant configuration is made available to those proxies. Otherwise, all the resources (e.g. `TargetHttpProxy`, `UrlMap`) referenced by the `ForwardingRule` will not be visible to those proxies.

For each `metadataFilter` in this list, if its `filterMatchCriteria` is set to MATCH_ANY, at least one of the `filterLabel`s must match the corresponding label provided in the metadata. If its `filterMatchCriteria` is set to MATCH_ALL, then all of its `filterLabel`s must match with corresponding labels provided in the metadata.

`metadataFilters` specified here will be applifed before those specified in the `UrlMap` that this `ForwardingRule` references.

`metadataFilters` only applies to Loadbalancers that have their loadBalancingScheme set to `INTERNAL_SELF_MANAGED`. When `null`, the `metadata_filters` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_global_forwarding_rule.metadata_filters.new](#fn-metadata_filtersnew) constructor.
  - `timeouts` (`obj`): Set the `timeouts` field on the resulting object. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_global_forwarding_rule.timeouts.new](#fn-timeoutsnew) constructor.

**Returns**:
  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `compute_global_forwarding_rule` resource into the root Terraform configuration.


### fn withDescription

```ts
withDescription()
```

`google.string.withDescription` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the description field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `description` field.


### fn withIpAddress

```ts
withIpAddress()
```

`google.string.withIpAddress` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the ip_address field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `ip_address` field.


### fn withIpProtocol

```ts
withIpProtocol()
```

`google.string.withIpProtocol` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the ip_protocol field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `ip_protocol` field.


### fn withIpVersion

```ts
withIpVersion()
```

`google.string.withIpVersion` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the ip_version field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `ip_version` field.


### fn withLabels

```ts
withLabels()
```

`google.obj.withLabels` constructs a mixin object that can be merged into the `obj`
Terraform resource block to set or update the labels field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`obj`): The value to set for the `labels` field.


### fn withLoadBalancingScheme

```ts
withLoadBalancingScheme()
```

`google.string.withLoadBalancingScheme` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the load_balancing_scheme field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `load_balancing_scheme` field.


### fn withMetadataFilters

```ts
withMetadataFilters()
```

`google.list[obj].withMetadataFilters` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the metadata_filters field.

This function will replace the array with the passed in `value`. If you wish to instead append the
passed in value to the existing array, use the [google.list[obj].withMetadataFiltersMixin](TODO) function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `metadata_filters` field.


### fn withMetadataFiltersMixin

```ts
withMetadataFiltersMixin()
```

`google.list[obj].withMetadataFiltersMixin` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the metadata_filters field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google.list[obj].withMetadataFilters](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `metadata_filters` field.


### fn withName

```ts
withName()
```

`google.string.withName` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the name field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `name` field.


### fn withNetwork

```ts
withNetwork()
```

`google.string.withNetwork` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the network field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `network` field.


### fn withPortRange

```ts
withPortRange()
```

`google.string.withPortRange` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the port_range field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `port_range` field.


### fn withProject

```ts
withProject()
```

`google.string.withProject` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the project field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `project` field.


### fn withTarget

```ts
withTarget()
```

`google.string.withTarget` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the target field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `target` field.


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


## obj metadata_filters



### fn metadata_filters.new

```ts
new()
```


`google.compute_global_forwarding_rule.metadata_filters.new` constructs a new object with attributes and blocks configured for the `metadata_filters`
Terraform sub block.



**Args**:
  - `filter_match_criteria` (`string`): Specifies how individual `filterLabel` matches within the list of `filterLabel`s contribute towards the overall `metadataFilter` match.

Supported values are:

*   MATCH_ANY: At least one of the `filterLabels` must have a matching label in the provided metadata.
*   MATCH_ALL: All `filterLabels` must have matching labels in the provided metadata. Possible values: NOT_SET, MATCH_ALL, MATCH_ANY
  - `filter_labels` (`list[obj]`): The list of label value pairs that must match labels in the provided metadata based on `filterMatchCriteria`

This list must not be empty and can have at the most 64 entries. When `null`, the `filter_labels` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_global_forwarding_rule.metadata_filters.filter_labels.new](#fn-metadata_filtersfilter_labelsnew) constructor.

**Returns**:
  - An attribute object that represents the `metadata_filters` sub block.


## obj metadata_filters.filter_labels



### fn metadata_filters.filter_labels.new

```ts
new()
```


`google.compute_global_forwarding_rule.metadata_filters.filter_labels.new` constructs a new object with attributes and blocks configured for the `filter_labels`
Terraform sub block.



**Args**:
  - `name` (`string`): Name of metadata label.

The name can have a maximum length of 1024 characters and must be at least 1 character long.
  - `value` (`string`): The value of the label must match the specified value.

value can have a maximum length of 1024 characters.

**Returns**:
  - An attribute object that represents the `filter_labels` sub block.


## obj timeouts



### fn timeouts.new

```ts
new()
```


`google.compute_global_forwarding_rule.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`
Terraform sub block.



**Args**:
  - `create` (`string`): Set the `create` field on the resulting object. When `null`, the `create` field will be omitted from the resulting object.
  - `delete` (`string`): Set the `delete` field on the resulting object. When `null`, the `delete` field will be omitted from the resulting object.
  - `update` (`string`): Set the `update` field on the resulting object. When `null`, the `update` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `timeouts` sub block.
