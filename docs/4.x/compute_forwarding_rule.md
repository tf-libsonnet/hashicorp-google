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
* [`fn withAllowPscGlobalAccess()`](#fn-withallowpscglobalaccess)
* [`fn withBackendService()`](#fn-withbackendservice)
* [`fn withDescription()`](#fn-withdescription)
* [`fn withIpAddress()`](#fn-withipaddress)
* [`fn withIpProtocol()`](#fn-withipprotocol)
* [`fn withIpVersion()`](#fn-withipversion)
* [`fn withIsMirroringCollector()`](#fn-withismirroringcollector)
* [`fn withLabels()`](#fn-withlabels)
* [`fn withLoadBalancingScheme()`](#fn-withloadbalancingscheme)
* [`fn withName()`](#fn-withname)
* [`fn withNetwork()`](#fn-withnetwork)
* [`fn withNetworkTier()`](#fn-withnetworktier)
* [`fn withNoAutomateDnsZone()`](#fn-withnoautomatednszone)
* [`fn withPortRange()`](#fn-withportrange)
* [`fn withPorts()`](#fn-withports)
* [`fn withProject()`](#fn-withproject)
* [`fn withRegion()`](#fn-withregion)
* [`fn withServiceDirectoryRegistrations()`](#fn-withservicedirectoryregistrations)
* [`fn withServiceDirectoryRegistrationsMixin()`](#fn-withservicedirectoryregistrationsmixin)
* [`fn withServiceLabel()`](#fn-withservicelabel)
* [`fn withSourceIpRanges()`](#fn-withsourceipranges)
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
  - `all_ports` (`bool`): This field can only be used:
* If &#39;IPProtocol&#39; is one of TCP, UDP, or SCTP.
* By internal TCP/UDP load balancers, backend service-based network load
balancers, and internal and external protocol forwarding.

This option should be set to TRUE when the Forwarding Rule
IPProtocol is set to L3_DEFAULT.

Set this field to true to allow packets addressed to any port or packets
lacking destination port information (for example, UDP fragments after the
first fragment) to be forwarded to the backends configured with this
forwarding rule.

The &#39;ports&#39;, &#39;port_range&#39;, and
&#39;allPorts&#39; fields are mutually exclusive. When `null`, the `all_ports` field will be omitted from the resulting object.
  - `allow_global_access` (`bool`): This field is used along with the &#39;backend_service&#39; field for
internal load balancing or with the &#39;target&#39; field for internal
TargetInstance.

If the field is set to &#39;TRUE&#39;, clients can access ILB from all
regions.

Otherwise only allows access from clients in the same region as the
internal load balancer. When `null`, the `allow_global_access` field will be omitted from the resulting object.
  - `allow_psc_global_access` (`bool`): This is used in PSC consumer ForwardingRule to control whether the PSC endpoint can be accessed from another region. When `null`, the `allow_psc_global_access` field will be omitted from the resulting object.
  - `backend_service` (`string`): Identifies the backend service to which the forwarding rule sends traffic.

Required for Internal TCP/UDP Load Balancing and Network Load Balancing;
must be omitted for all other load balancer types. When `null`, the `backend_service` field will be omitted from the resulting object.
  - `description` (`string`): An optional description of this resource. Provide this property when
you create the resource. When `null`, the `description` field will be omitted from the resulting object.
  - `ip_address` (`string`): IP address for which this forwarding rule accepts traffic. When a client
sends traffic to this IP address, the forwarding rule directs the traffic
to the referenced &#39;target&#39; or &#39;backendService&#39;.

While creating a forwarding rule, specifying an &#39;IPAddress&#39; is
required under the following circumstances:

* When the &#39;target&#39; is set to &#39;targetGrpcProxy&#39; and
&#39;validateForProxyless&#39; is set to &#39;true&#39;, the
&#39;IPAddress&#39; should be set to &#39;0.0.0.0&#39;.
* When the &#39;target&#39; is a Private Service Connect Google APIs
bundle, you must specify an &#39;IPAddress&#39;.


Otherwise, you can optionally specify an IP address that references an
existing static (reserved) IP address resource. When omitted, Google Cloud
assigns an ephemeral IP address.

Use one of the following formats to specify an IP address while creating a
forwarding rule:

* IP address number, as in &#39;100.1.2.3&#39;
* IPv6 address range, as in &#39;2600:1234::/96&#39;
* Full resource URL, as in
&#39;https://www.googleapis.com/compute/v1/projects/project_id/regions/region/addresses/address-name&#39;
* Partial URL or by name, as in:
  * &#39;projects/project_id/regions/region/addresses/address-name&#39;
  * &#39;regions/region/addresses/address-name&#39;
  * &#39;global/addresses/address-name&#39;
  * &#39;address-name&#39;


The forwarding rule&#39;s &#39;target&#39; or &#39;backendService&#39;,
and in most cases, also the &#39;loadBalancingScheme&#39;, determine the
type of IP address that you can use. For detailed information, see
[IP address
specifications](https://cloud.google.com/load-balancing/docs/forwarding-rule-concepts#ip_address_specifications).

When reading an &#39;IPAddress&#39;, the API always returns the IP
address number. When `null`, the `ip_address` field will be omitted from the resulting object.
  - `ip_protocol` (`string`): The IP protocol to which this rule applies.

For protocol forwarding, valid
options are &#39;TCP&#39;, &#39;UDP&#39;, &#39;ESP&#39;,
&#39;AH&#39;, &#39;SCTP&#39;, &#39;ICMP&#39; and
&#39;L3_DEFAULT&#39;.

The valid IP protocols are different for different load balancing products
as described in [Load balancing
features](https://cloud.google.com/load-balancing/docs/features#protocols_from_the_load_balancer_to_the_backends).

A Forwarding Rule with protocol L3_DEFAULT can attach with target instance or
backend service with UNSPECIFIED protocol.
A forwarding rule with &#34;L3_DEFAULT&#34; IPProtocal cannot be attached to a backend service with TCP or UDP. Possible values: [&#34;TCP&#34;, &#34;UDP&#34;, &#34;ESP&#34;, &#34;AH&#34;, &#34;SCTP&#34;, &#34;ICMP&#34;, &#34;L3_DEFAULT&#34;] When `null`, the `ip_protocol` field will be omitted from the resulting object.
  - `ip_version` (`string`): The IP address version that will be used by this forwarding rule.
Valid options are IPV4 and IPV6.

If not set, the IPv4 address will be used by default. Possible values: [&#34;IPV4&#34;, &#34;IPV6&#34;] When `null`, the `ip_version` field will be omitted from the resulting object.
  - `is_mirroring_collector` (`bool`): Indicates whether or not this load balancer can be used as a collector for
packet mirroring. To prevent mirroring loops, instances behind this
load balancer will not have their traffic mirrored even if a
&#39;PacketMirroring&#39; rule applies to them.

This can only be set to true for load balancers that have their
&#39;loadBalancingScheme&#39; set to &#39;INTERNAL&#39;. When `null`, the `is_mirroring_collector` field will be omitted from the resulting object.
  - `labels` (`obj`): Labels to apply to this forwarding rule.  A list of key-&gt;value pairs. When `null`, the `labels` field will be omitted from the resulting object.
  - `load_balancing_scheme` (`string`): Specifies the forwarding rule type.

For more information about forwarding rules, refer to
[Forwarding rule concepts](https://cloud.google.com/load-balancing/docs/forwarding-rule-concepts). Default value: &#34;EXTERNAL&#34; Possible values: [&#34;EXTERNAL&#34;, &#34;EXTERNAL_MANAGED&#34;, &#34;INTERNAL&#34;, &#34;INTERNAL_MANAGED&#34;] When `null`, the `load_balancing_scheme` field will be omitted from the resulting object.
  - `name` (`string`): Name of the resource; provided by the client when the resource is created.
The name must be 1-63 characters long, and comply with
[RFC1035](https://www.ietf.org/rfc/rfc1035.txt).

Specifically, the name must be 1-63 characters long and match the regular
expression &#39;[a-z]([-a-z0-9]*[a-z0-9])?&#39; which means the first
character must be a lowercase letter, and all following characters must
be a dash, lowercase letter, or digit, except the last character, which
cannot be a dash.

For Private Service Connect forwarding rules that forward traffic to Google
APIs, the forwarding rule name must be a 1-20 characters string with
lowercase letters and numbers and must start with a letter.
  - `network` (`string`): This field is not used for external load balancing.

For Internal TCP/UDP Load Balancing, this field identifies the network that
the load balanced IP should belong to for this Forwarding Rule.
If the subnetwork is specified, the network of the subnetwork will be used.
If neither subnetwork nor this field is specified, the default network will
be used.

For Private Service Connect forwarding rules that forward traffic to Google
APIs, a network must be provided. When `null`, the `network` field will be omitted from the resulting object.
  - `network_tier` (`string`): This signifies the networking tier used for configuring
this load balancer and can only take the following values:
&#39;PREMIUM&#39;, &#39;STANDARD&#39;.

For regional ForwardingRule, the valid values are &#39;PREMIUM&#39; and
&#39;STANDARD&#39;. For GlobalForwardingRule, the valid value is
&#39;PREMIUM&#39;.

If this field is not specified, it is assumed to be &#39;PREMIUM&#39;.
If &#39;IPAddress&#39; is specified, this value must be equal to the
networkTier of the Address. Possible values: [&#34;PREMIUM&#34;, &#34;STANDARD&#34;] When `null`, the `network_tier` field will be omitted from the resulting object.
  - `no_automate_dns_zone` (`bool`): This is used in PSC consumer ForwardingRule to control whether it should try to auto-generate a DNS zone or not. Non-PSC forwarding rules do not use this field. When `null`, the `no_automate_dns_zone` field will be omitted from the resulting object.
  - `port_range` (`string`): This field can only be used:

* If &#39;IPProtocol&#39; is one of TCP, UDP, or SCTP.
* By backend service-based network load balancers, target pool-based
network load balancers, internal proxy load balancers, external proxy load
balancers, Traffic Director, external protocol forwarding, and Classic VPN.
Some products have restrictions on what ports can be used. See
[port specifications](https://cloud.google.com/load-balancing/docs/forwarding-rule-concepts#port_specifications)
for details.


Only packets addressed to ports in the specified range will be forwarded to
the backends configured with this forwarding rule.

The &#39;ports&#39; and &#39;port_range&#39; fields are mutually exclusive.

For external forwarding rules, two or more forwarding rules cannot use the
same &#39;[IPAddress, IPProtocol]&#39; pair, and cannot have
overlapping &#39;portRange&#39;s.

For internal forwarding rules within the same VPC network, two or more
forwarding rules cannot use the same &#39;[IPAddress, IPProtocol]&#39;
pair, and cannot have overlapping &#39;portRange&#39;s. When `null`, the `port_range` field will be omitted from the resulting object.
  - `ports` (`list`): This field can only be used:

* If &#39;IPProtocol&#39; is one of TCP, UDP, or SCTP.
* By internal TCP/UDP load balancers, backend service-based network load
balancers, internal protocol forwarding and when protocol is not L3_DEFAULT.


You can specify a list of up to five ports by number, separated by commas.
The ports can be contiguous or discontiguous. Only packets addressed to
these ports will be forwarded to the backends configured with this
forwarding rule.

For external forwarding rules, two or more forwarding rules cannot use the
same &#39;[IPAddress, IPProtocol]&#39; pair, and cannot share any values
defined in &#39;ports&#39;.

For internal forwarding rules within the same VPC network, two or more
forwarding rules cannot use the same &#39;[IPAddress, IPProtocol]&#39;
pair, and cannot share any values defined in &#39;ports&#39;.

The &#39;ports&#39; and &#39;port_range&#39; fields are mutually exclusive. When `null`, the `ports` field will be omitted from the resulting object.
  - `project` (`string`): Set the `project` field on the resulting resource block. When `null`, the `project` field will be omitted from the resulting object.
  - `region` (`string`): A reference to the region where the regional forwarding rule resides.

This field is not applicable to global forwarding rules. When `null`, the `region` field will be omitted from the resulting object.
  - `service_label` (`string`): An optional prefix to the service name for this Forwarding Rule.
If specified, will be the first label of the fully qualified service
name.

The label must be 1-63 characters long, and comply with RFC1035.
Specifically, the label must be 1-63 characters long and match the
regular expression &#39;[a-z]([-a-z0-9]*[a-z0-9])?&#39; which means the first
character must be a lowercase letter, and all following characters
must be a dash, lowercase letter, or digit, except the last
character, which cannot be a dash.

This field is only used for INTERNAL load balancing. When `null`, the `service_label` field will be omitted from the resulting object.
  - `source_ip_ranges` (`list`): If not empty, this Forwarding Rule will only forward the traffic when the source IP address matches one of the IP addresses or CIDR ranges set here. Note that a Forwarding Rule can only have up to 64 source IP ranges, and this field can only be used with a regional Forwarding Rule whose scheme is EXTERNAL. Each sourceIpRange entry should be either an IP address (for example, 1.2.3.4) or a CIDR range (for example, 1.2.3.0/24). When `null`, the `source_ip_ranges` field will be omitted from the resulting object.
  - `subnetwork` (`string`): This field identifies the subnetwork that the load balanced IP should
belong to for this Forwarding Rule, used in internal load balancing and
network load balancing with IPv6.

If the network specified is in auto subnet mode, this field is optional.
However, a subnetwork must be specified if the network is in custom subnet
mode or when creating external forwarding rule with IPv6. When `null`, the `subnetwork` field will be omitted from the resulting object.
  - `target` (`string`): The URL of the target resource to receive the matched traffic.  For
regional forwarding rules, this target must be in the same region as the
forwarding rule. For global forwarding rules, this target must be a global
load balancing resource.

The forwarded traffic must be of a type appropriate to the target object.
*  For load balancers, see the &#34;Target&#34; column in [Port specifications](https://cloud.google.com/load-balancing/docs/forwarding-rule-concepts#ip_address_specifications).
*  For Private Service Connect forwarding rules that forward traffic to Google APIs, provide the name of a supported Google API bundle:
  *  &#39;vpc-sc&#39; - [ APIs that support VPC Service Controls](https://cloud.google.com/vpc-service-controls/docs/supported-products).
  *  &#39;all-apis&#39; - [All supported Google APIs](https://cloud.google.com/vpc/docs/private-service-connect#supported-apis).


For Private Service Connect forwarding rules that forward traffic to managed services, the target must be a service attachment. When `null`, the `target` field will be omitted from the resulting object.
  - `service_directory_registrations` (`list[obj]`): Service Directory resources to register this forwarding rule with.

Currently, only supports a single Service Directory resource. When `null`, the `service_directory_registrations` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_forwarding_rule.service_directory_registrations.new](#fn-service_directory_registrationsnew) constructor.
  - `timeouts` (`obj`): Set the `timeouts` field on the resulting resource block. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_forwarding_rule.timeouts.new](#fn-timeoutsnew) constructor.

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
  - `all_ports` (`bool`): This field can only be used:
* If &#39;IPProtocol&#39; is one of TCP, UDP, or SCTP.
* By internal TCP/UDP load balancers, backend service-based network load
balancers, and internal and external protocol forwarding.

This option should be set to TRUE when the Forwarding Rule
IPProtocol is set to L3_DEFAULT.

Set this field to true to allow packets addressed to any port or packets
lacking destination port information (for example, UDP fragments after the
first fragment) to be forwarded to the backends configured with this
forwarding rule.

The &#39;ports&#39;, &#39;port_range&#39;, and
&#39;allPorts&#39; fields are mutually exclusive. When `null`, the `all_ports` field will be omitted from the resulting object.
  - `allow_global_access` (`bool`): This field is used along with the &#39;backend_service&#39; field for
internal load balancing or with the &#39;target&#39; field for internal
TargetInstance.

If the field is set to &#39;TRUE&#39;, clients can access ILB from all
regions.

Otherwise only allows access from clients in the same region as the
internal load balancer. When `null`, the `allow_global_access` field will be omitted from the resulting object.
  - `allow_psc_global_access` (`bool`): This is used in PSC consumer ForwardingRule to control whether the PSC endpoint can be accessed from another region. When `null`, the `allow_psc_global_access` field will be omitted from the resulting object.
  - `backend_service` (`string`): Identifies the backend service to which the forwarding rule sends traffic.

Required for Internal TCP/UDP Load Balancing and Network Load Balancing;
must be omitted for all other load balancer types. When `null`, the `backend_service` field will be omitted from the resulting object.
  - `description` (`string`): An optional description of this resource. Provide this property when
you create the resource. When `null`, the `description` field will be omitted from the resulting object.
  - `ip_address` (`string`): IP address for which this forwarding rule accepts traffic. When a client
sends traffic to this IP address, the forwarding rule directs the traffic
to the referenced &#39;target&#39; or &#39;backendService&#39;.

While creating a forwarding rule, specifying an &#39;IPAddress&#39; is
required under the following circumstances:

* When the &#39;target&#39; is set to &#39;targetGrpcProxy&#39; and
&#39;validateForProxyless&#39; is set to &#39;true&#39;, the
&#39;IPAddress&#39; should be set to &#39;0.0.0.0&#39;.
* When the &#39;target&#39; is a Private Service Connect Google APIs
bundle, you must specify an &#39;IPAddress&#39;.


Otherwise, you can optionally specify an IP address that references an
existing static (reserved) IP address resource. When omitted, Google Cloud
assigns an ephemeral IP address.

Use one of the following formats to specify an IP address while creating a
forwarding rule:

* IP address number, as in &#39;100.1.2.3&#39;
* IPv6 address range, as in &#39;2600:1234::/96&#39;
* Full resource URL, as in
&#39;https://www.googleapis.com/compute/v1/projects/project_id/regions/region/addresses/address-name&#39;
* Partial URL or by name, as in:
  * &#39;projects/project_id/regions/region/addresses/address-name&#39;
  * &#39;regions/region/addresses/address-name&#39;
  * &#39;global/addresses/address-name&#39;
  * &#39;address-name&#39;


The forwarding rule&#39;s &#39;target&#39; or &#39;backendService&#39;,
and in most cases, also the &#39;loadBalancingScheme&#39;, determine the
type of IP address that you can use. For detailed information, see
[IP address
specifications](https://cloud.google.com/load-balancing/docs/forwarding-rule-concepts#ip_address_specifications).

When reading an &#39;IPAddress&#39;, the API always returns the IP
address number. When `null`, the `ip_address` field will be omitted from the resulting object.
  - `ip_protocol` (`string`): The IP protocol to which this rule applies.

For protocol forwarding, valid
options are &#39;TCP&#39;, &#39;UDP&#39;, &#39;ESP&#39;,
&#39;AH&#39;, &#39;SCTP&#39;, &#39;ICMP&#39; and
&#39;L3_DEFAULT&#39;.

The valid IP protocols are different for different load balancing products
as described in [Load balancing
features](https://cloud.google.com/load-balancing/docs/features#protocols_from_the_load_balancer_to_the_backends).

A Forwarding Rule with protocol L3_DEFAULT can attach with target instance or
backend service with UNSPECIFIED protocol.
A forwarding rule with &#34;L3_DEFAULT&#34; IPProtocal cannot be attached to a backend service with TCP or UDP. Possible values: [&#34;TCP&#34;, &#34;UDP&#34;, &#34;ESP&#34;, &#34;AH&#34;, &#34;SCTP&#34;, &#34;ICMP&#34;, &#34;L3_DEFAULT&#34;] When `null`, the `ip_protocol` field will be omitted from the resulting object.
  - `ip_version` (`string`): The IP address version that will be used by this forwarding rule.
Valid options are IPV4 and IPV6.

If not set, the IPv4 address will be used by default. Possible values: [&#34;IPV4&#34;, &#34;IPV6&#34;] When `null`, the `ip_version` field will be omitted from the resulting object.
  - `is_mirroring_collector` (`bool`): Indicates whether or not this load balancer can be used as a collector for
packet mirroring. To prevent mirroring loops, instances behind this
load balancer will not have their traffic mirrored even if a
&#39;PacketMirroring&#39; rule applies to them.

This can only be set to true for load balancers that have their
&#39;loadBalancingScheme&#39; set to &#39;INTERNAL&#39;. When `null`, the `is_mirroring_collector` field will be omitted from the resulting object.
  - `labels` (`obj`): Labels to apply to this forwarding rule.  A list of key-&gt;value pairs. When `null`, the `labels` field will be omitted from the resulting object.
  - `load_balancing_scheme` (`string`): Specifies the forwarding rule type.

For more information about forwarding rules, refer to
[Forwarding rule concepts](https://cloud.google.com/load-balancing/docs/forwarding-rule-concepts). Default value: &#34;EXTERNAL&#34; Possible values: [&#34;EXTERNAL&#34;, &#34;EXTERNAL_MANAGED&#34;, &#34;INTERNAL&#34;, &#34;INTERNAL_MANAGED&#34;] When `null`, the `load_balancing_scheme` field will be omitted from the resulting object.
  - `name` (`string`): Name of the resource; provided by the client when the resource is created.
The name must be 1-63 characters long, and comply with
[RFC1035](https://www.ietf.org/rfc/rfc1035.txt).

Specifically, the name must be 1-63 characters long and match the regular
expression &#39;[a-z]([-a-z0-9]*[a-z0-9])?&#39; which means the first
character must be a lowercase letter, and all following characters must
be a dash, lowercase letter, or digit, except the last character, which
cannot be a dash.

For Private Service Connect forwarding rules that forward traffic to Google
APIs, the forwarding rule name must be a 1-20 characters string with
lowercase letters and numbers and must start with a letter.
  - `network` (`string`): This field is not used for external load balancing.

For Internal TCP/UDP Load Balancing, this field identifies the network that
the load balanced IP should belong to for this Forwarding Rule.
If the subnetwork is specified, the network of the subnetwork will be used.
If neither subnetwork nor this field is specified, the default network will
be used.

For Private Service Connect forwarding rules that forward traffic to Google
APIs, a network must be provided. When `null`, the `network` field will be omitted from the resulting object.
  - `network_tier` (`string`): This signifies the networking tier used for configuring
this load balancer and can only take the following values:
&#39;PREMIUM&#39;, &#39;STANDARD&#39;.

For regional ForwardingRule, the valid values are &#39;PREMIUM&#39; and
&#39;STANDARD&#39;. For GlobalForwardingRule, the valid value is
&#39;PREMIUM&#39;.

If this field is not specified, it is assumed to be &#39;PREMIUM&#39;.
If &#39;IPAddress&#39; is specified, this value must be equal to the
networkTier of the Address. Possible values: [&#34;PREMIUM&#34;, &#34;STANDARD&#34;] When `null`, the `network_tier` field will be omitted from the resulting object.
  - `no_automate_dns_zone` (`bool`): This is used in PSC consumer ForwardingRule to control whether it should try to auto-generate a DNS zone or not. Non-PSC forwarding rules do not use this field. When `null`, the `no_automate_dns_zone` field will be omitted from the resulting object.
  - `port_range` (`string`): This field can only be used:

* If &#39;IPProtocol&#39; is one of TCP, UDP, or SCTP.
* By backend service-based network load balancers, target pool-based
network load balancers, internal proxy load balancers, external proxy load
balancers, Traffic Director, external protocol forwarding, and Classic VPN.
Some products have restrictions on what ports can be used. See
[port specifications](https://cloud.google.com/load-balancing/docs/forwarding-rule-concepts#port_specifications)
for details.


Only packets addressed to ports in the specified range will be forwarded to
the backends configured with this forwarding rule.

The &#39;ports&#39; and &#39;port_range&#39; fields are mutually exclusive.

For external forwarding rules, two or more forwarding rules cannot use the
same &#39;[IPAddress, IPProtocol]&#39; pair, and cannot have
overlapping &#39;portRange&#39;s.

For internal forwarding rules within the same VPC network, two or more
forwarding rules cannot use the same &#39;[IPAddress, IPProtocol]&#39;
pair, and cannot have overlapping &#39;portRange&#39;s. When `null`, the `port_range` field will be omitted from the resulting object.
  - `ports` (`list`): This field can only be used:

* If &#39;IPProtocol&#39; is one of TCP, UDP, or SCTP.
* By internal TCP/UDP load balancers, backend service-based network load
balancers, internal protocol forwarding and when protocol is not L3_DEFAULT.


You can specify a list of up to five ports by number, separated by commas.
The ports can be contiguous or discontiguous. Only packets addressed to
these ports will be forwarded to the backends configured with this
forwarding rule.

For external forwarding rules, two or more forwarding rules cannot use the
same &#39;[IPAddress, IPProtocol]&#39; pair, and cannot share any values
defined in &#39;ports&#39;.

For internal forwarding rules within the same VPC network, two or more
forwarding rules cannot use the same &#39;[IPAddress, IPProtocol]&#39;
pair, and cannot share any values defined in &#39;ports&#39;.

The &#39;ports&#39; and &#39;port_range&#39; fields are mutually exclusive. When `null`, the `ports` field will be omitted from the resulting object.
  - `project` (`string`): Set the `project` field on the resulting object. When `null`, the `project` field will be omitted from the resulting object.
  - `region` (`string`): A reference to the region where the regional forwarding rule resides.

This field is not applicable to global forwarding rules. When `null`, the `region` field will be omitted from the resulting object.
  - `service_label` (`string`): An optional prefix to the service name for this Forwarding Rule.
If specified, will be the first label of the fully qualified service
name.

The label must be 1-63 characters long, and comply with RFC1035.
Specifically, the label must be 1-63 characters long and match the
regular expression &#39;[a-z]([-a-z0-9]*[a-z0-9])?&#39; which means the first
character must be a lowercase letter, and all following characters
must be a dash, lowercase letter, or digit, except the last
character, which cannot be a dash.

This field is only used for INTERNAL load balancing. When `null`, the `service_label` field will be omitted from the resulting object.
  - `source_ip_ranges` (`list`): If not empty, this Forwarding Rule will only forward the traffic when the source IP address matches one of the IP addresses or CIDR ranges set here. Note that a Forwarding Rule can only have up to 64 source IP ranges, and this field can only be used with a regional Forwarding Rule whose scheme is EXTERNAL. Each sourceIpRange entry should be either an IP address (for example, 1.2.3.4) or a CIDR range (for example, 1.2.3.0/24). When `null`, the `source_ip_ranges` field will be omitted from the resulting object.
  - `subnetwork` (`string`): This field identifies the subnetwork that the load balanced IP should
belong to for this Forwarding Rule, used in internal load balancing and
network load balancing with IPv6.

If the network specified is in auto subnet mode, this field is optional.
However, a subnetwork must be specified if the network is in custom subnet
mode or when creating external forwarding rule with IPv6. When `null`, the `subnetwork` field will be omitted from the resulting object.
  - `target` (`string`): The URL of the target resource to receive the matched traffic.  For
regional forwarding rules, this target must be in the same region as the
forwarding rule. For global forwarding rules, this target must be a global
load balancing resource.

The forwarded traffic must be of a type appropriate to the target object.
*  For load balancers, see the &#34;Target&#34; column in [Port specifications](https://cloud.google.com/load-balancing/docs/forwarding-rule-concepts#ip_address_specifications).
*  For Private Service Connect forwarding rules that forward traffic to Google APIs, provide the name of a supported Google API bundle:
  *  &#39;vpc-sc&#39; - [ APIs that support VPC Service Controls](https://cloud.google.com/vpc-service-controls/docs/supported-products).
  *  &#39;all-apis&#39; - [All supported Google APIs](https://cloud.google.com/vpc/docs/private-service-connect#supported-apis).


For Private Service Connect forwarding rules that forward traffic to managed services, the target must be a service attachment. When `null`, the `target` field will be omitted from the resulting object.
  - `service_directory_registrations` (`list[obj]`): Service Directory resources to register this forwarding rule with.

Currently, only supports a single Service Directory resource. When `null`, the `service_directory_registrations` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_forwarding_rule.service_directory_registrations.new](#fn-service_directory_registrationsnew) constructor.
  - `timeouts` (`obj`): Set the `timeouts` field on the resulting object. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_forwarding_rule.timeouts.new](#fn-timeoutsnew) constructor.

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


### fn withAllowPscGlobalAccess

```ts
withAllowPscGlobalAccess()
```

`google.bool.withAllowPscGlobalAccess` constructs a mixin object that can be merged into the `bool`
Terraform resource block to set or update the allow_psc_global_access field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`bool`): The value to set for the `allow_psc_global_access` field.


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


### fn withIpVersion

```ts
withIpVersion()
```

`google.string.withIpVersion` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the ip_version field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `ip_version` field.


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


### fn withNoAutomateDnsZone

```ts
withNoAutomateDnsZone()
```

`google.bool.withNoAutomateDnsZone` constructs a mixin object that can be merged into the `bool`
Terraform resource block to set or update the no_automate_dns_zone field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`bool`): The value to set for the `no_automate_dns_zone` field.


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


### fn withSourceIpRanges

```ts
withSourceIpRanges()
```

`google.list.withSourceIpRanges` constructs a mixin object that can be merged into the `list`
Terraform resource block to set or update the source_ip_ranges field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list`): The value to set for the `source_ip_ranges` field.


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
  - `create` (`string`): Set the `create` field on the resulting object. When `null`, the `create` field will be omitted from the resulting object.
  - `delete` (`string`): Set the `delete` field on the resulting object. When `null`, the `delete` field will be omitted from the resulting object.
  - `update` (`string`): Set the `update` field on the resulting object. When `null`, the `update` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `timeouts` sub block.
