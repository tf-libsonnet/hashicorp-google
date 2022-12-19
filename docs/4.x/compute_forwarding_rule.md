---
permalink: /compute_forwarding_rule/
---

# compute_forwarding_rule

`compute_forwarding_rule` represents the `google_compute_forwarding_rule` Terraform resource.



This package contains functions and utilities for setting up the resource using Jsonnet code.


## Index

* [`fn new()`](#fn-new)
* [`fn newAttrs()`](#fn-newattrs)
* [`fn withAllPorts()`](#fn-withallports)
* [`fn withAllowGlobalAccess()`](#fn-withallowglobalaccess)
* [`fn withBackendService()`](#fn-withbackendservice)
* [`fn withDescription()`](#fn-withdescription)
* [`fn withIpAddress()`](#fn-withipaddress)
* [`fn withIpProtocol()`](#fn-withipprotocol)
* [`fn withIsMirroringCollector()`](#fn-withismirroringcollector)
* [`fn withLabels()`](#fn-withlabels)
* [`fn withLoadBalancingScheme()`](#fn-withloadbalancingscheme)
* [`fn withName()`](#fn-withname)
* [`fn withNetwork()`](#fn-withnetwork)
* [`fn withNetworkTier()`](#fn-withnetworktier)
* [`fn withPortRange()`](#fn-withportrange)
* [`fn withPorts()`](#fn-withports)
* [`fn withProject()`](#fn-withproject)
* [`fn withRegion()`](#fn-withregion)
* [`fn withServiceDirectoryRegistrations()`](#fn-withservicedirectoryregistrations)
* [`fn withServiceDirectoryRegistrationsMixin()`](#fn-withservicedirectoryregistrationsmixin)
* [`fn withServiceLabel()`](#fn-withservicelabel)
* [`fn withSubnetwork()`](#fn-withsubnetwork)
* [`fn withTarget()`](#fn-withtarget)
* [`fn withTimeouts()`](#fn-withtimeouts)
* [`fn withTimeoutsMixin()`](#fn-withtimeoutsmixin)
* [`obj service_directory_registrations`](#obj-service_directory_registrations)
  * [`fn new()`](#fn-service_directory_registrationsnew)
* [`obj timeouts`](#obj-timeouts)
  * [`fn new()`](#fn-timeoutsnew)

## Fields

### fn new

```ts
new()
```


`google.compute_forwarding_rule.new` injects a new `google_compute_forwarding_rule` Terraform `resource`
block into the root module document.

Additionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the
resource. For example, if you added a new instance to the root using:

    # arguments omitted for brevity
    google.compute_forwarding_rule.new('some_id')

You can get the reference to the `id` field of the created `google.compute_forwarding_rule` using the reference:

    $._ref.google_compute_forwarding_rule.some_id.get('id')

This is the same as directly entering `"${ google_compute_forwarding_rule.some_id.id }"` as the value.

NOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,
or `$` to refer to the root object. Instead, make an explicit outer object using `local`.

**Args**:
  - `resourceLabel` (`string`): The name label of the block.
  - `all_ports` (`bool`): This field is used along with the `backend_service` field for internal load balancing or with the `target` field for internal TargetInstance. This field cannot be used with `port` or `portRange` fields. When the load balancing scheme is `INTERNAL` and protocol is TCP/UDP, specify this field to allow packets addressed to any ports will be forwarded to the backends configured with this forwarding rule. When `null`, the `all_ports` field will be omitted from the resulting object.
  - `allow_global_access` (`bool`): This field is used along with the `backend_service` field for internal load balancing or with the `target` field for internal TargetInstance. If the field is set to `TRUE`, clients can access ILB from all regions. Otherwise only allows access from clients in the same region as the internal load balancer. When `null`, the `allow_global_access` field will be omitted from the resulting object.
  - `backend_service` (`string`): This field is only used for `INTERNAL` load balancing. For internal load balancing, this field identifies the BackendService resource to receive the matched traffic. When `null`, the `backend_service` field will be omitted from the resulting object.
  - `description` (`string`): An optional description of this resource. Provide this property when you create the resource. When `null`, the `description` field will be omitted from the resulting object.
  - `ip_address` (`string`): IP address that this forwarding rule serves. When a client sends traffic to this IP address, the forwarding rule directs the traffic to the target that you specify in the forwarding rule. If you don&#39;t specify a reserved IP address, an ephemeral IP address is assigned. Methods for specifying an IP address: * IPv4 dotted decimal, as in `100.1.2.3` * Full URL, as in `https://www.googleapis.com/compute/v1/projects/project_id/regions/region/addresses/address-name` * Partial URL or by name, as in: * `projects/project_id/regions/region/addresses/address-name` * `regions/region/addresses/address-name` * `global/addresses/address-name` * `address-name` The loadBalancingScheme and the forwarding rule&#39;s target determine the type of IP address that you can use. For detailed information, refer to [IP address specifications](/load-balancing/docs/forwarding-rule-concepts#ip_address_specifications). When `null`, the `ip_address` field will be omitted from the resulting object.
  - `ip_protocol` (`string`): The IP protocol to which this rule applies. For protocol forwarding, valid options are `TCP`, `UDP`, `ESP`, `AH`, `SCTP` or `ICMP`. For Internal TCP/UDP Load Balancing, the load balancing scheme is `INTERNAL`, and one of `TCP` or `UDP` are valid. For Traffic Director, the load balancing scheme is `INTERNAL_SELF_MANAGED`, and only `TCP`is valid. For Internal HTTP(S) Load Balancing, the load balancing scheme is `INTERNAL_MANAGED`, and only `TCP` is valid. For HTTP(S), SSL Proxy, and TCP Proxy Load Balancing, the load balancing scheme is `EXTERNAL` and only `TCP` is valid. For Network TCP/UDP Load Balancing, the load balancing scheme is `EXTERNAL`, and one of `TCP` or `UDP` is valid. When `null`, the `ip_protocol` field will be omitted from the resulting object.
  - `is_mirroring_collector` (`bool`): Indicates whether or not this load balancer can be used as a collector for packet mirroring. To prevent mirroring loops, instances behind this load balancer will not have their traffic mirrored even if a `PacketMirroring` rule applies to them. This can only be set to true for load balancers that have their `loadBalancingScheme` set to `INTERNAL`. When `null`, the `is_mirroring_collector` field will be omitted from the resulting object.
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
  - `network_tier` (`string`): This signifies the networking tier used for configuring this load balancer and can only take the following values: `PREMIUM`, `STANDARD`. For regional ForwardingRule, the valid values are `PREMIUM` and `STANDARD`. For GlobalForwardingRule, the valid value is `PREMIUM`. If this field is not specified, it is assumed to be `PREMIUM`. If `IPAddress` is specified, this value must be equal to the networkTier of the Address. When `null`, the `network_tier` field will be omitted from the resulting object.
  - `port_range` (`string`): When the load balancing scheme is `EXTERNAL`, `INTERNAL_SELF_MANAGED` and `INTERNAL_MANAGED`, you can specify a `port_range`. Use with a forwarding rule that points to a target proxy or a target pool. Do not use with a forwarding rule that points to a backend service. This field is used along with the `target` field for TargetHttpProxy, TargetHttpsProxy, TargetSslProxy, TargetTcpProxy, TargetVpnGateway, TargetPool, TargetInstance. Applicable only when `IPProtocol` is `TCP`, `UDP`, or `SCTP`, only packets addressed to ports in the specified range will be forwarded to `target`. Forwarding rules with the same `[IPAddress, IPProtocol]` pair must have disjoint port ranges. Some types of forwarding target have constraints on the acceptable ports:

*   TargetHttpProxy: 80, 8080
*   TargetHttpsProxy: 443
*   TargetTcpProxy: 25, 43, 110, 143, 195, 443, 465, 587, 700, 993, 995, 1688, 1883, 5222
*   TargetSslProxy: 25, 43, 110, 143, 195, 443, 465, 587, 700, 993, 995, 1688, 1883, 5222
*   TargetVpnGateway: 500, 4500

@pattern: d&#43;(?:-d&#43;)? When `null`, the `port_range` field will be omitted from the resulting object.
  - `ports` (`list`): This field is used along with the `backend_service` field for internal load balancing. When the load balancing scheme is `INTERNAL`, a list of ports can be configured, for example, [&#39;80&#39;], [&#39;8000&#39;,&#39;9000&#39;]. Only packets addressed to these ports are forwarded to the backends configured with the forwarding rule. If the forwarding rule&#39;s loadBalancingScheme is INTERNAL, you can specify ports in one of the following ways: * A list of up to five ports, which can be non-contiguous * Keyword `ALL`, which causes the forwarding rule to forward traffic on any port of the forwarding rule&#39;s protocol. @pattern: d&#43;(?:-d&#43;)? For more information, refer to [Port specifications](/load-balancing/docs/forwarding-rule-concepts#port_specifications). When `null`, the `ports` field will be omitted from the resulting object.
  - `project` (`string`): The project this resource belongs in. When `null`, the `project` field will be omitted from the resulting object.
  - `region` (`string`): The location of this resource. When `null`, the `region` field will be omitted from the resulting object.
  - `service_label` (`string`): An optional prefix to the service name for this Forwarding Rule. If specified, the prefix is the first label of the fully qualified service name. The label must be 1-63 characters long, and comply with [RFC1035](https://www.ietf.org/rfc/rfc1035.txt). Specifically, the label must be 1-63 characters long and match the regular expression `[a-z]([-a-z0-9]*[a-z0-9])?` which means the first character must be a lowercase letter, and all following characters must be a dash, lowercase letter, or digit, except the last character, which cannot be a dash. This field is only used for internal load balancing. When `null`, the `service_label` field will be omitted from the resulting object.
  - `subnetwork` (`string`): This field is only used for `INTERNAL` load balancing. For internal load balancing, this field identifies the subnetwork that the load balanced IP should belong to for this Forwarding Rule. If the network specified is in auto subnet mode, this field is optional. However, if the network is in custom subnet mode, a subnetwork must be specified. When `null`, the `subnetwork` field will be omitted from the resulting object.
  - `target` (`string`): The URL of the target resource to receive the matched traffic. For regional forwarding rules, this target must live in the same region as the forwarding rule. For global forwarding rules, this target must be a global load balancing resource. The forwarded traffic must be of a type appropriate to the target object. For `INTERNAL_SELF_MANAGED` load balancing, only `targetHttpProxy` is valid, not `targetHttpsProxy`. When `null`, the `target` field will be omitted from the resulting object.
  - `service_directory_registrations` (`list[obj]`): Service Directory resources to register this forwarding rule with. Currently, only supports a single Service Directory resource. When `null`, the `service_directory_registrations` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_forwarding_rule.service_directory_registrations.new](#fn-service_directory_registrationsnew) constructor.
  - `timeouts` (`obj`):  When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_forwarding_rule.timeouts.new](#fn-timeoutsnew) constructor.

**Returns**:
- A mixin object that injects the new resource into the root Terraform configuration.


### fn newAttrs

```ts
newAttrs()
```


`google.compute_forwarding_rule.newAttrs` constructs a new object with attributes and blocks configured for the `compute_forwarding_rule`
Terraform resource.

Unlike [google.compute_forwarding_rule.new](#fn-new), this function will not inject the `resource`
block into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the
[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.

This is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to
injecting into a complete block.

**Args**:
  - `all_ports` (`bool`): This field is used along with the `backend_service` field for internal load balancing or with the `target` field for internal TargetInstance. This field cannot be used with `port` or `portRange` fields. When the load balancing scheme is `INTERNAL` and protocol is TCP/UDP, specify this field to allow packets addressed to any ports will be forwarded to the backends configured with this forwarding rule. When `null`, the `all_ports` field will be omitted from the resulting object.
  - `allow_global_access` (`bool`): This field is used along with the `backend_service` field for internal load balancing or with the `target` field for internal TargetInstance. If the field is set to `TRUE`, clients can access ILB from all regions. Otherwise only allows access from clients in the same region as the internal load balancer. When `null`, the `allow_global_access` field will be omitted from the resulting object.
  - `backend_service` (`string`): This field is only used for `INTERNAL` load balancing. For internal load balancing, this field identifies the BackendService resource to receive the matched traffic. When `null`, the `backend_service` field will be omitted from the resulting object.
  - `description` (`string`): An optional description of this resource. Provide this property when you create the resource. When `null`, the `description` field will be omitted from the resulting object.
  - `ip_address` (`string`): IP address that this forwarding rule serves. When a client sends traffic to this IP address, the forwarding rule directs the traffic to the target that you specify in the forwarding rule. If you don&#39;t specify a reserved IP address, an ephemeral IP address is assigned. Methods for specifying an IP address: * IPv4 dotted decimal, as in `100.1.2.3` * Full URL, as in `https://www.googleapis.com/compute/v1/projects/project_id/regions/region/addresses/address-name` * Partial URL or by name, as in: * `projects/project_id/regions/region/addresses/address-name` * `regions/region/addresses/address-name` * `global/addresses/address-name` * `address-name` The loadBalancingScheme and the forwarding rule&#39;s target determine the type of IP address that you can use. For detailed information, refer to [IP address specifications](/load-balancing/docs/forwarding-rule-concepts#ip_address_specifications). When `null`, the `ip_address` field will be omitted from the resulting object.
  - `ip_protocol` (`string`): The IP protocol to which this rule applies. For protocol forwarding, valid options are `TCP`, `UDP`, `ESP`, `AH`, `SCTP` or `ICMP`. For Internal TCP/UDP Load Balancing, the load balancing scheme is `INTERNAL`, and one of `TCP` or `UDP` are valid. For Traffic Director, the load balancing scheme is `INTERNAL_SELF_MANAGED`, and only `TCP`is valid. For Internal HTTP(S) Load Balancing, the load balancing scheme is `INTERNAL_MANAGED`, and only `TCP` is valid. For HTTP(S), SSL Proxy, and TCP Proxy Load Balancing, the load balancing scheme is `EXTERNAL` and only `TCP` is valid. For Network TCP/UDP Load Balancing, the load balancing scheme is `EXTERNAL`, and one of `TCP` or `UDP` is valid. When `null`, the `ip_protocol` field will be omitted from the resulting object.
  - `is_mirroring_collector` (`bool`): Indicates whether or not this load balancer can be used as a collector for packet mirroring. To prevent mirroring loops, instances behind this load balancer will not have their traffic mirrored even if a `PacketMirroring` rule applies to them. This can only be set to true for load balancers that have their `loadBalancingScheme` set to `INTERNAL`. When `null`, the `is_mirroring_collector` field will be omitted from the resulting object.
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
  - `network_tier` (`string`): This signifies the networking tier used for configuring this load balancer and can only take the following values: `PREMIUM`, `STANDARD`. For regional ForwardingRule, the valid values are `PREMIUM` and `STANDARD`. For GlobalForwardingRule, the valid value is `PREMIUM`. If this field is not specified, it is assumed to be `PREMIUM`. If `IPAddress` is specified, this value must be equal to the networkTier of the Address. When `null`, the `network_tier` field will be omitted from the resulting object.
  - `port_range` (`string`): When the load balancing scheme is `EXTERNAL`, `INTERNAL_SELF_MANAGED` and `INTERNAL_MANAGED`, you can specify a `port_range`. Use with a forwarding rule that points to a target proxy or a target pool. Do not use with a forwarding rule that points to a backend service. This field is used along with the `target` field for TargetHttpProxy, TargetHttpsProxy, TargetSslProxy, TargetTcpProxy, TargetVpnGateway, TargetPool, TargetInstance. Applicable only when `IPProtocol` is `TCP`, `UDP`, or `SCTP`, only packets addressed to ports in the specified range will be forwarded to `target`. Forwarding rules with the same `[IPAddress, IPProtocol]` pair must have disjoint port ranges. Some types of forwarding target have constraints on the acceptable ports:

*   TargetHttpProxy: 80, 8080
*   TargetHttpsProxy: 443
*   TargetTcpProxy: 25, 43, 110, 143, 195, 443, 465, 587, 700, 993, 995, 1688, 1883, 5222
*   TargetSslProxy: 25, 43, 110, 143, 195, 443, 465, 587, 700, 993, 995, 1688, 1883, 5222
*   TargetVpnGateway: 500, 4500

@pattern: d&#43;(?:-d&#43;)? When `null`, the `port_range` field will be omitted from the resulting object.
  - `ports` (`list`): This field is used along with the `backend_service` field for internal load balancing. When the load balancing scheme is `INTERNAL`, a list of ports can be configured, for example, [&#39;80&#39;], [&#39;8000&#39;,&#39;9000&#39;]. Only packets addressed to these ports are forwarded to the backends configured with the forwarding rule. If the forwarding rule&#39;s loadBalancingScheme is INTERNAL, you can specify ports in one of the following ways: * A list of up to five ports, which can be non-contiguous * Keyword `ALL`, which causes the forwarding rule to forward traffic on any port of the forwarding rule&#39;s protocol. @pattern: d&#43;(?:-d&#43;)? For more information, refer to [Port specifications](/load-balancing/docs/forwarding-rule-concepts#port_specifications). When `null`, the `ports` field will be omitted from the resulting object.
  - `project` (`string`): The project this resource belongs in. When `null`, the `project` field will be omitted from the resulting object.
  - `region` (`string`): The location of this resource. When `null`, the `region` field will be omitted from the resulting object.
  - `service_label` (`string`): An optional prefix to the service name for this Forwarding Rule. If specified, the prefix is the first label of the fully qualified service name. The label must be 1-63 characters long, and comply with [RFC1035](https://www.ietf.org/rfc/rfc1035.txt). Specifically, the label must be 1-63 characters long and match the regular expression `[a-z]([-a-z0-9]*[a-z0-9])?` which means the first character must be a lowercase letter, and all following characters must be a dash, lowercase letter, or digit, except the last character, which cannot be a dash. This field is only used for internal load balancing. When `null`, the `service_label` field will be omitted from the resulting object.
  - `subnetwork` (`string`): This field is only used for `INTERNAL` load balancing. For internal load balancing, this field identifies the subnetwork that the load balanced IP should belong to for this Forwarding Rule. If the network specified is in auto subnet mode, this field is optional. However, if the network is in custom subnet mode, a subnetwork must be specified. When `null`, the `subnetwork` field will be omitted from the resulting object.
  - `target` (`string`): The URL of the target resource to receive the matched traffic. For regional forwarding rules, this target must live in the same region as the forwarding rule. For global forwarding rules, this target must be a global load balancing resource. The forwarded traffic must be of a type appropriate to the target object. For `INTERNAL_SELF_MANAGED` load balancing, only `targetHttpProxy` is valid, not `targetHttpsProxy`. When `null`, the `target` field will be omitted from the resulting object.
  - `service_directory_registrations` (`list[obj]`): Service Directory resources to register this forwarding rule with. Currently, only supports a single Service Directory resource. When `null`, the `service_directory_registrations` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_forwarding_rule.service_directory_registrations.new](#fn-service_directory_registrationsnew) constructor.
  - `timeouts` (`obj`):  When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_forwarding_rule.timeouts.new](#fn-timeoutsnew) constructor.

**Returns**:
  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `compute_forwarding_rule` resource into the root Terraform configuration.


### fn withAllPorts

```ts
withAllPorts()
```

`google.bool.withAllPorts` constructs a mixin object that can be merged into the `bool`
Terraform resource block to set or update the all_ports field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`bool`): The value to set for the `all_ports` field.


### fn withAllowGlobalAccess

```ts
withAllowGlobalAccess()
```

`google.bool.withAllowGlobalAccess` constructs a mixin object that can be merged into the `bool`
Terraform resource block to set or update the allow_global_access field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`bool`): The value to set for the `allow_global_access` field.


### fn withBackendService

```ts
withBackendService()
```

`google.string.withBackendService` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the backend_service field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `backend_service` field.


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


### fn withIsMirroringCollector

```ts
withIsMirroringCollector()
```

`google.bool.withIsMirroringCollector` constructs a mixin object that can be merged into the `bool`
Terraform resource block to set or update the is_mirroring_collector field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`bool`): The value to set for the `is_mirroring_collector` field.


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


### fn withNetworkTier

```ts
withNetworkTier()
```

`google.string.withNetworkTier` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the network_tier field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `network_tier` field.


### fn withPortRange

```ts
withPortRange()
```

`google.string.withPortRange` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the port_range field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `port_range` field.


### fn withPorts

```ts
withPorts()
```

`google.list.withPorts` constructs a mixin object that can be merged into the `list`
Terraform resource block to set or update the ports field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list`): The value to set for the `ports` field.


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


### fn withServiceDirectoryRegistrations

```ts
withServiceDirectoryRegistrations()
```

`google.list[obj].withServiceDirectoryRegistrations` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the service_directory_registrations field.

This function will replace the array with the passed in `value`. If you wish to instead append the
passed in value to the existing array, use the [google.list[obj].withServiceDirectoryRegistrationsMixin](TODO) function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `service_directory_registrations` field.


### fn withServiceDirectoryRegistrationsMixin

```ts
withServiceDirectoryRegistrationsMixin()
```

`google.list[obj].withServiceDirectoryRegistrationsMixin` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the service_directory_registrations field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google.list[obj].withServiceDirectoryRegistrations](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `service_directory_registrations` field.


### fn withServiceLabel

```ts
withServiceLabel()
```

`google.string.withServiceLabel` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the service_label field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `service_label` field.


### fn withSubnetwork

```ts
withSubnetwork()
```

`google.string.withSubnetwork` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the subnetwork field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `subnetwork` field.


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


## obj service_directory_registrations



### fn service_directory_registrations.new

```ts
new()
```


`google.compute_forwarding_rule.service_directory_registrations.new` constructs a new object with attributes and blocks configured for the `service_directory_registrations`
Terraform sub block.



**Args**:
  - `namespace` (`string`): Service Directory namespace to register the forwarding rule under. When `null`, the `namespace` field will be omitted from the resulting object.
  - `service` (`string`): Service Directory service to register the forwarding rule under. When `null`, the `service` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `service_directory_registrations` sub block.


## obj timeouts



### fn timeouts.new

```ts
new()
```


`google.compute_forwarding_rule.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`
Terraform sub block.



**Args**:
  - `create` (`string`):  When `null`, the `create` field will be omitted from the resulting object.
  - `delete` (`string`):  When `null`, the `delete` field will be omitted from the resulting object.
  - `update` (`string`):  When `null`, the `update` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `timeouts` sub block.
