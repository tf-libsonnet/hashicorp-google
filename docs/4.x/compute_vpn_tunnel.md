---
permalink: /compute_vpn_tunnel/
---

# compute_vpn_tunnel

`compute_vpn_tunnel` represents the `google_compute_vpn_tunnel` Terraform resource.



This package contains functions and utilities for setting up the resource using Jsonnet code.


## Index

* [`fn new()`](#fn-new)
* [`fn newAttrs()`](#fn-newattrs)
* [`fn withDescription()`](#fn-withdescription)
* [`fn withIkeVersion()`](#fn-withikeversion)
* [`fn withLocalTrafficSelector()`](#fn-withlocaltrafficselector)
* [`fn withName()`](#fn-withname)
* [`fn withPeerExternalGateway()`](#fn-withpeerexternalgateway)
* [`fn withPeerExternalGatewayInterface()`](#fn-withpeerexternalgatewayinterface)
* [`fn withPeerGcpGateway()`](#fn-withpeergcpgateway)
* [`fn withPeerIp()`](#fn-withpeerip)
* [`fn withProject()`](#fn-withproject)
* [`fn withRegion()`](#fn-withregion)
* [`fn withRemoteTrafficSelector()`](#fn-withremotetrafficselector)
* [`fn withRouter()`](#fn-withrouter)
* [`fn withSharedSecret()`](#fn-withsharedsecret)
* [`fn withTargetVpnGateway()`](#fn-withtargetvpngateway)
* [`fn withTimeouts()`](#fn-withtimeouts)
* [`fn withTimeoutsMixin()`](#fn-withtimeoutsmixin)
* [`fn withVpnGateway()`](#fn-withvpngateway)
* [`fn withVpnGatewayInterface()`](#fn-withvpngatewayinterface)
* [`obj timeouts`](#obj-timeouts)
  * [`fn new()`](#fn-timeoutsnew)

## Fields

### fn new

```ts
new()
```


`google.compute_vpn_tunnel.new` injects a new `google_compute_vpn_tunnel` Terraform `resource`
block into the root module document.

Additionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the
resource. For example, if you added a new instance to the root using:

    # arguments omitted for brevity
    google.compute_vpn_tunnel.new('some_id')

You can get the reference to the `id` field of the created `google.compute_vpn_tunnel` using the reference:

    $._ref.google_compute_vpn_tunnel.some_id.get('id')

This is the same as directly entering `"${ google_compute_vpn_tunnel.some_id.id }"` as the value.

NOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,
or `$` to refer to the root object. Instead, make an explicit outer object using `local`.

**Args**:
  - `resourceLabel` (`string`): The name label of the block.
  - `description` (`string`): An optional description of this resource. When `null`, the `description` field will be omitted from the resulting object.
  - `ike_version` (`number`): IKE protocol version to use when establishing the VPN tunnel with
peer VPN gateway.
Acceptable IKE versions are 1 or 2. Default version is 2. When `null`, the `ike_version` field will be omitted from the resulting object.
  - `local_traffic_selector` (`list`): Local traffic selector to use when establishing the VPN tunnel with
peer VPN gateway. The value should be a CIDR formatted string,
for example &#39;192.168.0.0/16&#39;. The ranges should be disjoint.
Only IPv4 is supported. When `null`, the `local_traffic_selector` field will be omitted from the resulting object.
  - `name` (`string`): Name of the resource. The name must be 1-63 characters long, and
comply with RFC1035. Specifically, the name must be 1-63
characters long and match the regular expression
&#39;[a-z]([-a-z0-9]*[a-z0-9])?&#39; which means the first character
must be a lowercase letter, and all following characters must
be a dash, lowercase letter, or digit,
except the last character, which cannot be a dash.
  - `peer_external_gateway` (`string`): URL of the peer side external VPN gateway to which this VPN tunnel is connected. When `null`, the `peer_external_gateway` field will be omitted from the resulting object.
  - `peer_external_gateway_interface` (`number`): The interface ID of the external VPN gateway to which this VPN tunnel is connected. When `null`, the `peer_external_gateway_interface` field will be omitted from the resulting object.
  - `peer_gcp_gateway` (`string`): URL of the peer side HA GCP VPN gateway to which this VPN tunnel is connected.
If provided, the VPN tunnel will automatically use the same vpn_gateway_interface
ID in the peer GCP VPN gateway.
This field must reference a &#39;google_compute_ha_vpn_gateway&#39; resource. When `null`, the `peer_gcp_gateway` field will be omitted from the resulting object.
  - `peer_ip` (`string`): IP address of the peer VPN gateway. Only IPv4 is supported. When `null`, the `peer_ip` field will be omitted from the resulting object.
  - `project` (`string`):  When `null`, the `project` field will be omitted from the resulting object.
  - `region` (`string`): The region where the tunnel is located. If unset, is set to the region of &#39;target_vpn_gateway&#39;. When `null`, the `region` field will be omitted from the resulting object.
  - `remote_traffic_selector` (`list`): Remote traffic selector to use when establishing the VPN tunnel with
peer VPN gateway. The value should be a CIDR formatted string,
for example &#39;192.168.0.0/16&#39;. The ranges should be disjoint.
Only IPv4 is supported. When `null`, the `remote_traffic_selector` field will be omitted from the resulting object.
  - `router` (`string`): URL of router resource to be used for dynamic routing. When `null`, the `router` field will be omitted from the resulting object.
  - `shared_secret` (`string`): Shared secret used to set the secure session between the Cloud VPN
gateway and the peer VPN gateway.
  - `target_vpn_gateway` (`string`): URL of the Target VPN gateway with which this VPN tunnel is
associated. When `null`, the `target_vpn_gateway` field will be omitted from the resulting object.
  - `vpn_gateway` (`string`): URL of the VPN gateway with which this VPN tunnel is associated.
This must be used if a High Availability VPN gateway resource is created.
This field must reference a &#39;google_compute_ha_vpn_gateway&#39; resource. When `null`, the `vpn_gateway` field will be omitted from the resulting object.
  - `vpn_gateway_interface` (`number`): The interface ID of the VPN gateway with which this VPN tunnel is associated. When `null`, the `vpn_gateway_interface` field will be omitted from the resulting object.
  - `timeouts` (`obj`):  When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_vpn_tunnel.timeouts.new](#fn-timeoutsnew) constructor.

**Returns**:
- A mixin object that injects the new resource into the root Terraform configuration.


### fn newAttrs

```ts
newAttrs()
```


`google.compute_vpn_tunnel.newAttrs` constructs a new object with attributes and blocks configured for the `compute_vpn_tunnel`
Terraform resource.

Unlike [google.compute_vpn_tunnel.new](#fn-new), this function will not inject the `resource`
block into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the
[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.

This is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to
injecting into a complete block.

**Args**:
  - `description` (`string`): An optional description of this resource. When `null`, the `description` field will be omitted from the resulting object.
  - `ike_version` (`number`): IKE protocol version to use when establishing the VPN tunnel with
peer VPN gateway.
Acceptable IKE versions are 1 or 2. Default version is 2. When `null`, the `ike_version` field will be omitted from the resulting object.
  - `local_traffic_selector` (`list`): Local traffic selector to use when establishing the VPN tunnel with
peer VPN gateway. The value should be a CIDR formatted string,
for example &#39;192.168.0.0/16&#39;. The ranges should be disjoint.
Only IPv4 is supported. When `null`, the `local_traffic_selector` field will be omitted from the resulting object.
  - `name` (`string`): Name of the resource. The name must be 1-63 characters long, and
comply with RFC1035. Specifically, the name must be 1-63
characters long and match the regular expression
&#39;[a-z]([-a-z0-9]*[a-z0-9])?&#39; which means the first character
must be a lowercase letter, and all following characters must
be a dash, lowercase letter, or digit,
except the last character, which cannot be a dash.
  - `peer_external_gateway` (`string`): URL of the peer side external VPN gateway to which this VPN tunnel is connected. When `null`, the `peer_external_gateway` field will be omitted from the resulting object.
  - `peer_external_gateway_interface` (`number`): The interface ID of the external VPN gateway to which this VPN tunnel is connected. When `null`, the `peer_external_gateway_interface` field will be omitted from the resulting object.
  - `peer_gcp_gateway` (`string`): URL of the peer side HA GCP VPN gateway to which this VPN tunnel is connected.
If provided, the VPN tunnel will automatically use the same vpn_gateway_interface
ID in the peer GCP VPN gateway.
This field must reference a &#39;google_compute_ha_vpn_gateway&#39; resource. When `null`, the `peer_gcp_gateway` field will be omitted from the resulting object.
  - `peer_ip` (`string`): IP address of the peer VPN gateway. Only IPv4 is supported. When `null`, the `peer_ip` field will be omitted from the resulting object.
  - `project` (`string`):  When `null`, the `project` field will be omitted from the resulting object.
  - `region` (`string`): The region where the tunnel is located. If unset, is set to the region of &#39;target_vpn_gateway&#39;. When `null`, the `region` field will be omitted from the resulting object.
  - `remote_traffic_selector` (`list`): Remote traffic selector to use when establishing the VPN tunnel with
peer VPN gateway. The value should be a CIDR formatted string,
for example &#39;192.168.0.0/16&#39;. The ranges should be disjoint.
Only IPv4 is supported. When `null`, the `remote_traffic_selector` field will be omitted from the resulting object.
  - `router` (`string`): URL of router resource to be used for dynamic routing. When `null`, the `router` field will be omitted from the resulting object.
  - `shared_secret` (`string`): Shared secret used to set the secure session between the Cloud VPN
gateway and the peer VPN gateway.
  - `target_vpn_gateway` (`string`): URL of the Target VPN gateway with which this VPN tunnel is
associated. When `null`, the `target_vpn_gateway` field will be omitted from the resulting object.
  - `vpn_gateway` (`string`): URL of the VPN gateway with which this VPN tunnel is associated.
This must be used if a High Availability VPN gateway resource is created.
This field must reference a &#39;google_compute_ha_vpn_gateway&#39; resource. When `null`, the `vpn_gateway` field will be omitted from the resulting object.
  - `vpn_gateway_interface` (`number`): The interface ID of the VPN gateway with which this VPN tunnel is associated. When `null`, the `vpn_gateway_interface` field will be omitted from the resulting object.
  - `timeouts` (`obj`):  When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_vpn_tunnel.timeouts.new](#fn-timeoutsnew) constructor.

**Returns**:
  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `compute_vpn_tunnel` resource into the root Terraform configuration.


### fn withDescription

```ts
withDescription()
```

`google.string.withDescription` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the description field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `description` field.


### fn withIkeVersion

```ts
withIkeVersion()
```

`google.number.withIkeVersion` constructs a mixin object that can be merged into the `number`
Terraform resource block to set or update the ike_version field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`number`): The value to set for the `ike_version` field.


### fn withLocalTrafficSelector

```ts
withLocalTrafficSelector()
```

`google.list.withLocalTrafficSelector` constructs a mixin object that can be merged into the `list`
Terraform resource block to set or update the local_traffic_selector field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list`): The value to set for the `local_traffic_selector` field.


### fn withName

```ts
withName()
```

`google.string.withName` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the name field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `name` field.


### fn withPeerExternalGateway

```ts
withPeerExternalGateway()
```

`google.string.withPeerExternalGateway` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the peer_external_gateway field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `peer_external_gateway` field.


### fn withPeerExternalGatewayInterface

```ts
withPeerExternalGatewayInterface()
```

`google.number.withPeerExternalGatewayInterface` constructs a mixin object that can be merged into the `number`
Terraform resource block to set or update the peer_external_gateway_interface field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`number`): The value to set for the `peer_external_gateway_interface` field.


### fn withPeerGcpGateway

```ts
withPeerGcpGateway()
```

`google.string.withPeerGcpGateway` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the peer_gcp_gateway field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `peer_gcp_gateway` field.


### fn withPeerIp

```ts
withPeerIp()
```

`google.string.withPeerIp` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the peer_ip field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `peer_ip` field.


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


### fn withRemoteTrafficSelector

```ts
withRemoteTrafficSelector()
```

`google.list.withRemoteTrafficSelector` constructs a mixin object that can be merged into the `list`
Terraform resource block to set or update the remote_traffic_selector field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list`): The value to set for the `remote_traffic_selector` field.


### fn withRouter

```ts
withRouter()
```

`google.string.withRouter` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the router field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `router` field.


### fn withSharedSecret

```ts
withSharedSecret()
```

`google.string.withSharedSecret` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the shared_secret field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `shared_secret` field.


### fn withTargetVpnGateway

```ts
withTargetVpnGateway()
```

`google.string.withTargetVpnGateway` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the target_vpn_gateway field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `target_vpn_gateway` field.


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


### fn withVpnGateway

```ts
withVpnGateway()
```

`google.string.withVpnGateway` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the vpn_gateway field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `vpn_gateway` field.


### fn withVpnGatewayInterface

```ts
withVpnGatewayInterface()
```

`google.number.withVpnGatewayInterface` constructs a mixin object that can be merged into the `number`
Terraform resource block to set or update the vpn_gateway_interface field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`number`): The value to set for the `vpn_gateway_interface` field.


## obj timeouts



### fn timeouts.new

```ts
new()
```


`google.compute_vpn_tunnel.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`
Terraform sub block.



**Args**:
  - `create` (`string`):  When `null`, the `create` field will be omitted from the resulting object.
  - `delete` (`string`):  When `null`, the `delete` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `timeouts` sub block.
