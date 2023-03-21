---
permalink: /compute_interconnect_attachment/
---

# compute_interconnect_attachment

`compute_interconnect_attachment` represents the `google_compute_interconnect_attachment` Terraform resource.



This package contains functions and utilities for setting up the resource using Jsonnet code.


## Index

* [`fn new()`](#fn-new)
* [`fn newAttrs()`](#fn-newattrs)
* [`fn withAdminEnabled()`](#fn-withadminenabled)
* [`fn withBandwidth()`](#fn-withbandwidth)
* [`fn withCandidateSubnets()`](#fn-withcandidatesubnets)
* [`fn withDescription()`](#fn-withdescription)
* [`fn withEdgeAvailabilityDomain()`](#fn-withedgeavailabilitydomain)
* [`fn withEncryption()`](#fn-withencryption)
* [`fn withInterconnect()`](#fn-withinterconnect)
* [`fn withIpsecInternalAddresses()`](#fn-withipsecinternaladdresses)
* [`fn withMtu()`](#fn-withmtu)
* [`fn withName()`](#fn-withname)
* [`fn withProject()`](#fn-withproject)
* [`fn withRegion()`](#fn-withregion)
* [`fn withRouter()`](#fn-withrouter)
* [`fn withTimeouts()`](#fn-withtimeouts)
* [`fn withTimeoutsMixin()`](#fn-withtimeoutsmixin)
* [`fn withType()`](#fn-withtype)
* [`fn withVlanTag8021Q()`](#fn-withvlantag8021q)
* [`obj timeouts`](#obj-timeouts)
  * [`fn new()`](#fn-timeoutsnew)

## Fields

### fn new

```ts
new()
```


`google.compute_interconnect_attachment.new` injects a new `google_compute_interconnect_attachment` Terraform `resource`
block into the root module document.

Additionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the
resource. For example, if you added a new instance to the root using:

    # arguments omitted for brevity
    google.compute_interconnect_attachment.new('some_id')

You can get the reference to the `id` field of the created `google.compute_interconnect_attachment` using the reference:

    $._ref.google_compute_interconnect_attachment.some_id.get('id')

This is the same as directly entering `"${ google_compute_interconnect_attachment.some_id.id }"` as the value.

NOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,
or `$` to refer to the root object. Instead, make an explicit outer object using `local`.

**Args**:
  - `resourceLabel` (`string`): The name label of the block.
  - `admin_enabled` (`bool`): Whether the VLAN attachment is enabled or disabled.  When using
PARTNER type this will Pre-Activate the interconnect attachment When `null`, the `admin_enabled` field will be omitted from the resulting object.
  - `bandwidth` (`string`): Provisioned bandwidth capacity for the interconnect attachment.
For attachments of type DEDICATED, the user can set the bandwidth.
For attachments of type PARTNER, the Google Partner that is operating the interconnect must set the bandwidth.
Output only for PARTNER type, mutable for PARTNER_PROVIDER and DEDICATED,
Defaults to BPS_10G Possible values: [&#34;BPS_50M&#34;, &#34;BPS_100M&#34;, &#34;BPS_200M&#34;, &#34;BPS_300M&#34;, &#34;BPS_400M&#34;, &#34;BPS_500M&#34;, &#34;BPS_1G&#34;, &#34;BPS_2G&#34;, &#34;BPS_5G&#34;, &#34;BPS_10G&#34;, &#34;BPS_20G&#34;, &#34;BPS_50G&#34;] When `null`, the `bandwidth` field will be omitted from the resulting object.
  - `candidate_subnets` (`list`): Up to 16 candidate prefixes that can be used to restrict the allocation
of cloudRouterIpAddress and customerRouterIpAddress for this attachment.
All prefixes must be within link-local address space (169.254.0.0/16)
and must be /29 or shorter (/28, /27, etc). Google will attempt to select
an unused /29 from the supplied candidate prefix(es). The request will
fail if all possible /29s are in use on Google&#39;s edge. If not supplied,
Google will randomly select an unused /29 from all of link-local space. When `null`, the `candidate_subnets` field will be omitted from the resulting object.
  - `description` (`string`): An optional description of this resource. When `null`, the `description` field will be omitted from the resulting object.
  - `edge_availability_domain` (`string`): Desired availability domain for the attachment. Only available for type
PARTNER, at creation time. For improved reliability, customers should
configure a pair of attachments with one per availability domain. The
selected availability domain will be provided to the Partner via the
pairing key so that the provisioned circuit will lie in the specified
domain. If not specified, the value will default to AVAILABILITY_DOMAIN_ANY. When `null`, the `edge_availability_domain` field will be omitted from the resulting object.
  - `encryption` (`string`): Indicates the user-supplied encryption option of this interconnect
attachment. Can only be specified at attachment creation for PARTNER or
DEDICATED attachments.

* NONE - This is the default value, which means that the VLAN attachment
carries unencrypted traffic. VMs are able to send traffic to, or receive
traffic from, such a VLAN attachment.

* IPSEC - The VLAN attachment carries only encrypted traffic that is
encrypted by an IPsec device, such as an HA VPN gateway or third-party
IPsec VPN. VMs cannot directly send traffic to, or receive traffic from,
such a VLAN attachment. To use HA VPN over Cloud Interconnect, the VLAN
attachment must be created with this option. Default value: &#34;NONE&#34; Possible values: [&#34;NONE&#34;, &#34;IPSEC&#34;] When `null`, the `encryption` field will be omitted from the resulting object.
  - `interconnect` (`string`): URL of the underlying Interconnect object that this attachment&#39;s
traffic will traverse through. Required if type is DEDICATED, must not
be set if type is PARTNER. When `null`, the `interconnect` field will be omitted from the resulting object.
  - `ipsec_internal_addresses` (`list`): URL of addresses that have been reserved for the interconnect attachment,
Used only for interconnect attachment that has the encryption option as
IPSEC.

The addresses must be RFC 1918 IP address ranges. When creating HA VPN
gateway over the interconnect attachment, if the attachment is configured
to use an RFC 1918 IP address, then the VPN gateway&#39;s IP address will be
allocated from the IP address range specified here.

For example, if the HA VPN gateway&#39;s interface 0 is paired to this
interconnect attachment, then an RFC 1918 IP address for the VPN gateway
interface 0 will be allocated from the IP address specified for this
interconnect attachment.

If this field is not specified for interconnect attachment that has
encryption option as IPSEC, later on when creating HA VPN gateway on this
interconnect attachment, the HA VPN gateway&#39;s IP address will be
allocated from regional external IP address pool. When `null`, the `ipsec_internal_addresses` field will be omitted from the resulting object.
  - `mtu` (`string`): Maximum Transmission Unit (MTU), in bytes, of packets passing through
this interconnect attachment. Currently, only 1440 and 1500 are allowed. If not specified, the value will default to 1440. When `null`, the `mtu` field will be omitted from the resulting object.
  - `name` (`string`): Name of the resource. Provided by the client when the resource is created. The
name must be 1-63 characters long, and comply with RFC1035. Specifically, the
name must be 1-63 characters long and match the regular expression
&#39;[a-z]([-a-z0-9]*[a-z0-9])?&#39; which means the first character must be a
lowercase letter, and all following characters must be a dash, lowercase
letter, or digit, except the last character, which cannot be a dash.
  - `project` (`string`): Set the `project` field on the resulting resource block. When `null`, the `project` field will be omitted from the resulting object.
  - `region` (`string`): Region where the regional interconnect attachment resides. When `null`, the `region` field will be omitted from the resulting object.
  - `router` (`string`): URL of the cloud router to be used for dynamic routing. This router must be in
the same region as this InterconnectAttachment. The InterconnectAttachment will
automatically connect the Interconnect to the network &amp; region within which the
Cloud Router is configured.
  - `type` (`string`): The type of InterconnectAttachment you wish to create. Defaults to
DEDICATED. Possible values: [&#34;DEDICATED&#34;, &#34;PARTNER&#34;, &#34;PARTNER_PROVIDER&#34;] When `null`, the `type` field will be omitted from the resulting object.
  - `vlan_tag8021q` (`number`): The IEEE 802.1Q VLAN tag for this attachment, in the range 2-4094. When
using PARTNER type this will be managed upstream. When `null`, the `vlan_tag8021q` field will be omitted from the resulting object.
  - `timeouts` (`obj`): Set the `timeouts` field on the resulting resource block. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_interconnect_attachment.timeouts.new](#fn-timeoutsnew) constructor.

**Returns**:
- A mixin object that injects the new resource into the root Terraform configuration.


### fn newAttrs

```ts
newAttrs()
```


`google.compute_interconnect_attachment.newAttrs` constructs a new object with attributes and blocks configured for the `compute_interconnect_attachment`
Terraform resource.

Unlike [google.compute_interconnect_attachment.new](#fn-new), this function will not inject the `resource`
block into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the
[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.

This is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to
injecting into a complete block.

**Args**:
  - `admin_enabled` (`bool`): Whether the VLAN attachment is enabled or disabled.  When using
PARTNER type this will Pre-Activate the interconnect attachment When `null`, the `admin_enabled` field will be omitted from the resulting object.
  - `bandwidth` (`string`): Provisioned bandwidth capacity for the interconnect attachment.
For attachments of type DEDICATED, the user can set the bandwidth.
For attachments of type PARTNER, the Google Partner that is operating the interconnect must set the bandwidth.
Output only for PARTNER type, mutable for PARTNER_PROVIDER and DEDICATED,
Defaults to BPS_10G Possible values: [&#34;BPS_50M&#34;, &#34;BPS_100M&#34;, &#34;BPS_200M&#34;, &#34;BPS_300M&#34;, &#34;BPS_400M&#34;, &#34;BPS_500M&#34;, &#34;BPS_1G&#34;, &#34;BPS_2G&#34;, &#34;BPS_5G&#34;, &#34;BPS_10G&#34;, &#34;BPS_20G&#34;, &#34;BPS_50G&#34;] When `null`, the `bandwidth` field will be omitted from the resulting object.
  - `candidate_subnets` (`list`): Up to 16 candidate prefixes that can be used to restrict the allocation
of cloudRouterIpAddress and customerRouterIpAddress for this attachment.
All prefixes must be within link-local address space (169.254.0.0/16)
and must be /29 or shorter (/28, /27, etc). Google will attempt to select
an unused /29 from the supplied candidate prefix(es). The request will
fail if all possible /29s are in use on Google&#39;s edge. If not supplied,
Google will randomly select an unused /29 from all of link-local space. When `null`, the `candidate_subnets` field will be omitted from the resulting object.
  - `description` (`string`): An optional description of this resource. When `null`, the `description` field will be omitted from the resulting object.
  - `edge_availability_domain` (`string`): Desired availability domain for the attachment. Only available for type
PARTNER, at creation time. For improved reliability, customers should
configure a pair of attachments with one per availability domain. The
selected availability domain will be provided to the Partner via the
pairing key so that the provisioned circuit will lie in the specified
domain. If not specified, the value will default to AVAILABILITY_DOMAIN_ANY. When `null`, the `edge_availability_domain` field will be omitted from the resulting object.
  - `encryption` (`string`): Indicates the user-supplied encryption option of this interconnect
attachment. Can only be specified at attachment creation for PARTNER or
DEDICATED attachments.

* NONE - This is the default value, which means that the VLAN attachment
carries unencrypted traffic. VMs are able to send traffic to, or receive
traffic from, such a VLAN attachment.

* IPSEC - The VLAN attachment carries only encrypted traffic that is
encrypted by an IPsec device, such as an HA VPN gateway or third-party
IPsec VPN. VMs cannot directly send traffic to, or receive traffic from,
such a VLAN attachment. To use HA VPN over Cloud Interconnect, the VLAN
attachment must be created with this option. Default value: &#34;NONE&#34; Possible values: [&#34;NONE&#34;, &#34;IPSEC&#34;] When `null`, the `encryption` field will be omitted from the resulting object.
  - `interconnect` (`string`): URL of the underlying Interconnect object that this attachment&#39;s
traffic will traverse through. Required if type is DEDICATED, must not
be set if type is PARTNER. When `null`, the `interconnect` field will be omitted from the resulting object.
  - `ipsec_internal_addresses` (`list`): URL of addresses that have been reserved for the interconnect attachment,
Used only for interconnect attachment that has the encryption option as
IPSEC.

The addresses must be RFC 1918 IP address ranges. When creating HA VPN
gateway over the interconnect attachment, if the attachment is configured
to use an RFC 1918 IP address, then the VPN gateway&#39;s IP address will be
allocated from the IP address range specified here.

For example, if the HA VPN gateway&#39;s interface 0 is paired to this
interconnect attachment, then an RFC 1918 IP address for the VPN gateway
interface 0 will be allocated from the IP address specified for this
interconnect attachment.

If this field is not specified for interconnect attachment that has
encryption option as IPSEC, later on when creating HA VPN gateway on this
interconnect attachment, the HA VPN gateway&#39;s IP address will be
allocated from regional external IP address pool. When `null`, the `ipsec_internal_addresses` field will be omitted from the resulting object.
  - `mtu` (`string`): Maximum Transmission Unit (MTU), in bytes, of packets passing through
this interconnect attachment. Currently, only 1440 and 1500 are allowed. If not specified, the value will default to 1440. When `null`, the `mtu` field will be omitted from the resulting object.
  - `name` (`string`): Name of the resource. Provided by the client when the resource is created. The
name must be 1-63 characters long, and comply with RFC1035. Specifically, the
name must be 1-63 characters long and match the regular expression
&#39;[a-z]([-a-z0-9]*[a-z0-9])?&#39; which means the first character must be a
lowercase letter, and all following characters must be a dash, lowercase
letter, or digit, except the last character, which cannot be a dash.
  - `project` (`string`): Set the `project` field on the resulting object. When `null`, the `project` field will be omitted from the resulting object.
  - `region` (`string`): Region where the regional interconnect attachment resides. When `null`, the `region` field will be omitted from the resulting object.
  - `router` (`string`): URL of the cloud router to be used for dynamic routing. This router must be in
the same region as this InterconnectAttachment. The InterconnectAttachment will
automatically connect the Interconnect to the network &amp; region within which the
Cloud Router is configured.
  - `type` (`string`): The type of InterconnectAttachment you wish to create. Defaults to
DEDICATED. Possible values: [&#34;DEDICATED&#34;, &#34;PARTNER&#34;, &#34;PARTNER_PROVIDER&#34;] When `null`, the `type` field will be omitted from the resulting object.
  - `vlan_tag8021q` (`number`): The IEEE 802.1Q VLAN tag for this attachment, in the range 2-4094. When
using PARTNER type this will be managed upstream. When `null`, the `vlan_tag8021q` field will be omitted from the resulting object.
  - `timeouts` (`obj`): Set the `timeouts` field on the resulting object. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_interconnect_attachment.timeouts.new](#fn-timeoutsnew) constructor.

**Returns**:
  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `compute_interconnect_attachment` resource into the root Terraform configuration.


### fn withAdminEnabled

```ts
withAdminEnabled()
```

`google.bool.withAdminEnabled` constructs a mixin object that can be merged into the `bool`
Terraform resource block to set or update the admin_enabled field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`bool`): The value to set for the `admin_enabled` field.


### fn withBandwidth

```ts
withBandwidth()
```

`google.string.withBandwidth` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the bandwidth field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `bandwidth` field.


### fn withCandidateSubnets

```ts
withCandidateSubnets()
```

`google.list.withCandidateSubnets` constructs a mixin object that can be merged into the `list`
Terraform resource block to set or update the candidate_subnets field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list`): The value to set for the `candidate_subnets` field.


### fn withDescription

```ts
withDescription()
```

`google.string.withDescription` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the description field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `description` field.


### fn withEdgeAvailabilityDomain

```ts
withEdgeAvailabilityDomain()
```

`google.string.withEdgeAvailabilityDomain` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the edge_availability_domain field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `edge_availability_domain` field.


### fn withEncryption

```ts
withEncryption()
```

`google.string.withEncryption` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the encryption field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `encryption` field.


### fn withInterconnect

```ts
withInterconnect()
```

`google.string.withInterconnect` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the interconnect field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `interconnect` field.


### fn withIpsecInternalAddresses

```ts
withIpsecInternalAddresses()
```

`google.list.withIpsecInternalAddresses` constructs a mixin object that can be merged into the `list`
Terraform resource block to set or update the ipsec_internal_addresses field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list`): The value to set for the `ipsec_internal_addresses` field.


### fn withMtu

```ts
withMtu()
```

`google.string.withMtu` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the mtu field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `mtu` field.


### fn withName

```ts
withName()
```

`google.string.withName` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the name field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `name` field.


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


### fn withType

```ts
withType()
```

`google.string.withType` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the type field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `type` field.


### fn withVlanTag8021Q

```ts
withVlanTag8021Q()
```

`google.number.withVlanTag8021Q` constructs a mixin object that can be merged into the `number`
Terraform resource block to set or update the vlan_tag8021q field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`number`): The value to set for the `vlan_tag8021q` field.


## obj timeouts



### fn timeouts.new

```ts
new()
```


`google.compute_interconnect_attachment.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`
Terraform sub block.



**Args**:
  - `create` (`string`): Set the `create` field on the resulting object. When `null`, the `create` field will be omitted from the resulting object.
  - `delete` (`string`): Set the `delete` field on the resulting object. When `null`, the `delete` field will be omitted from the resulting object.
  - `update` (`string`): Set the `update` field on the resulting object. When `null`, the `update` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `timeouts` sub block.
