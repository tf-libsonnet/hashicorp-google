---
permalink: /network_services_gateway/
---

# network_services_gateway

`network_services_gateway` represents the `google_network_services_gateway` Terraform resource.



This package contains functions and utilities for setting up the resource using Jsonnet code.


## Index

* [`fn new()`](#fn-new)
* [`fn newAttrs()`](#fn-newattrs)
* [`fn withAddresses()`](#fn-withaddresses)
* [`fn withCertificateUrls()`](#fn-withcertificateurls)
* [`fn withDeleteSwgAutogenRouterOnDestroy()`](#fn-withdeleteswgautogenrouterondestroy)
* [`fn withDescription()`](#fn-withdescription)
* [`fn withGatewaySecurityPolicy()`](#fn-withgatewaysecuritypolicy)
* [`fn withLabels()`](#fn-withlabels)
* [`fn withLocation()`](#fn-withlocation)
* [`fn withName()`](#fn-withname)
* [`fn withNetwork()`](#fn-withnetwork)
* [`fn withPorts()`](#fn-withports)
* [`fn withProject()`](#fn-withproject)
* [`fn withScope()`](#fn-withscope)
* [`fn withServerTlsPolicy()`](#fn-withservertlspolicy)
* [`fn withSubnetwork()`](#fn-withsubnetwork)
* [`fn withTimeouts()`](#fn-withtimeouts)
* [`fn withTimeoutsMixin()`](#fn-withtimeoutsmixin)
* [`fn withType()`](#fn-withtype)
* [`obj timeouts`](#obj-timeouts)
  * [`fn new()`](#fn-timeoutsnew)

## Fields

### fn new

```ts
new()
```


`google.network_services_gateway.new` injects a new `google_network_services_gateway` Terraform `resource`
block into the root module document.

Additionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the
resource. For example, if you added a new instance to the root using:

    # arguments omitted for brevity
    google.network_services_gateway.new('some_id')

You can get the reference to the `id` field of the created `google.network_services_gateway` using the reference:

    $._ref.google_network_services_gateway.some_id.get('id')

This is the same as directly entering `"${ google_network_services_gateway.some_id.id }"` as the value.

NOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,
or `$` to refer to the root object. Instead, make an explicit outer object using `local`.

**Args**:
  - `resourceLabel` (`string`): The name label of the block.
  - `addresses` (`list`): Zero or one IPv4-address on which the Gateway will receive the traffic. When no address is provided,
an IP from the subnetwork is allocated This field only applies to gateways of type &#39;SECURE_WEB_GATEWAY&#39;.
Gateways of type &#39;OPEN_MESH&#39; listen on 0.0.0.0. When `null`, the `addresses` field will be omitted from the resulting object.
  - `certificate_urls` (`list`): A fully-qualified Certificates URL reference. The proxy presents a Certificate (selected based on SNI) when establishing a TLS connection.
This feature only applies to gateways of type &#39;SECURE_WEB_GATEWAY&#39;. When `null`, the `certificate_urls` field will be omitted from the resulting object.
  - `delete_swg_autogen_router_on_destroy` (`bool`): When deleting a gateway of type &#39;SECURE_WEB_GATEWAY&#39;, this boolean option will also delete auto generated router by the gateway creation.
If there is no other gateway of type &#39;SECURE_WEB_GATEWAY&#39; remaining for that region and network it will be deleted. When `null`, the `delete_swg_autogen_router_on_destroy` field will be omitted from the resulting object.
  - `description` (`string`): A free-text description of the resource. Max length 1024 characters. When `null`, the `description` field will be omitted from the resulting object.
  - `gateway_security_policy` (`string`): A fully-qualified GatewaySecurityPolicy URL reference. Defines how a server should apply security policy to inbound (VM to Proxy) initiated connections.
For example: &#39;projects/*/locations/*/gatewaySecurityPolicies/swg-policy&#39;.
This policy is specific to gateways of type &#39;SECURE_WEB_GATEWAY&#39;. When `null`, the `gateway_security_policy` field will be omitted from the resulting object.
  - `labels` (`obj`): Set of label tags associated with the Gateway resource.

**Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
Please refer to the field &#39;effective_labels&#39; for all of the labels present on the resource. When `null`, the `labels` field will be omitted from the resulting object.
  - `location` (`string`): The location of the gateway.
The default value is &#39;global&#39;. When `null`, the `location` field will be omitted from the resulting object.
  - `name` (`string`): Short name of the Gateway resource to be created.
  - `network` (`string`): The relative resource name identifying the VPC network that is using this configuration.
For example: &#39;projects/*/global/networks/network-1&#39;.
Currently, this field is specific to gateways of type &#39;SECURE_WEB_GATEWAY&#39;. When `null`, the `network` field will be omitted from the resulting object.
  - `ports` (`list`): One or more port numbers (1-65535), on which the Gateway will receive traffic.
The proxy binds to the specified ports. Gateways of type &#39;SECURE_WEB_GATEWAY&#39; are
limited to 1 port. Gateways of type &#39;OPEN_MESH&#39; listen on 0.0.0.0 and support multiple ports.
  - `project` (`string`): Set the `project` field on the resulting resource block. When `null`, the `project` field will be omitted from the resulting object.
  - `scope` (`string`): Immutable. Scope determines how configuration across multiple Gateway instances are merged.
The configuration for multiple Gateway instances with the same scope will be merged as presented as
a single coniguration to the proxy/load balancer.
Max length 64 characters. Scope should start with a letter and can only have letters, numbers, hyphens. When `null`, the `scope` field will be omitted from the resulting object.
  - `server_tls_policy` (`string`): A fully-qualified ServerTLSPolicy URL reference. Specifies how TLS traffic is terminated.
If empty, TLS termination is disabled. When `null`, the `server_tls_policy` field will be omitted from the resulting object.
  - `subnetwork` (`string`): The relative resource name identifying the subnetwork in which this SWG is allocated.
For example: &#39;projects/*/regions/us-central1/subnetworks/network-1&#39;.
Currently, this field is specific to gateways of type &#39;SECURE_WEB_GATEWAY. When `null`, the `subnetwork` field will be omitted from the resulting object.
  - `type` (`string`): Immutable. The type of the customer-managed gateway. Possible values are: * OPEN_MESH * SECURE_WEB_GATEWAY. Possible values: [&#34;TYPE_UNSPECIFIED&#34;, &#34;OPEN_MESH&#34;, &#34;SECURE_WEB_GATEWAY&#34;]
  - `timeouts` (`obj`): Set the `timeouts` field on the resulting resource block. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.network_services_gateway.timeouts.new](#fn-timeoutsnew) constructor.

**Returns**:
- A mixin object that injects the new resource into the root Terraform configuration.


### fn newAttrs

```ts
newAttrs()
```


`google.network_services_gateway.newAttrs` constructs a new object with attributes and blocks configured for the `network_services_gateway`
Terraform resource.

Unlike [google.network_services_gateway.new](#fn-new), this function will not inject the `resource`
block into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the
[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.

This is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to
injecting into a complete block.

**Args**:
  - `addresses` (`list`): Zero or one IPv4-address on which the Gateway will receive the traffic. When no address is provided,
an IP from the subnetwork is allocated This field only applies to gateways of type &#39;SECURE_WEB_GATEWAY&#39;.
Gateways of type &#39;OPEN_MESH&#39; listen on 0.0.0.0. When `null`, the `addresses` field will be omitted from the resulting object.
  - `certificate_urls` (`list`): A fully-qualified Certificates URL reference. The proxy presents a Certificate (selected based on SNI) when establishing a TLS connection.
This feature only applies to gateways of type &#39;SECURE_WEB_GATEWAY&#39;. When `null`, the `certificate_urls` field will be omitted from the resulting object.
  - `delete_swg_autogen_router_on_destroy` (`bool`): When deleting a gateway of type &#39;SECURE_WEB_GATEWAY&#39;, this boolean option will also delete auto generated router by the gateway creation.
If there is no other gateway of type &#39;SECURE_WEB_GATEWAY&#39; remaining for that region and network it will be deleted. When `null`, the `delete_swg_autogen_router_on_destroy` field will be omitted from the resulting object.
  - `description` (`string`): A free-text description of the resource. Max length 1024 characters. When `null`, the `description` field will be omitted from the resulting object.
  - `gateway_security_policy` (`string`): A fully-qualified GatewaySecurityPolicy URL reference. Defines how a server should apply security policy to inbound (VM to Proxy) initiated connections.
For example: &#39;projects/*/locations/*/gatewaySecurityPolicies/swg-policy&#39;.
This policy is specific to gateways of type &#39;SECURE_WEB_GATEWAY&#39;. When `null`, the `gateway_security_policy` field will be omitted from the resulting object.
  - `labels` (`obj`): Set of label tags associated with the Gateway resource.

**Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
Please refer to the field &#39;effective_labels&#39; for all of the labels present on the resource. When `null`, the `labels` field will be omitted from the resulting object.
  - `location` (`string`): The location of the gateway.
The default value is &#39;global&#39;. When `null`, the `location` field will be omitted from the resulting object.
  - `name` (`string`): Short name of the Gateway resource to be created.
  - `network` (`string`): The relative resource name identifying the VPC network that is using this configuration.
For example: &#39;projects/*/global/networks/network-1&#39;.
Currently, this field is specific to gateways of type &#39;SECURE_WEB_GATEWAY&#39;. When `null`, the `network` field will be omitted from the resulting object.
  - `ports` (`list`): One or more port numbers (1-65535), on which the Gateway will receive traffic.
The proxy binds to the specified ports. Gateways of type &#39;SECURE_WEB_GATEWAY&#39; are
limited to 1 port. Gateways of type &#39;OPEN_MESH&#39; listen on 0.0.0.0 and support multiple ports.
  - `project` (`string`): Set the `project` field on the resulting object. When `null`, the `project` field will be omitted from the resulting object.
  - `scope` (`string`): Immutable. Scope determines how configuration across multiple Gateway instances are merged.
The configuration for multiple Gateway instances with the same scope will be merged as presented as
a single coniguration to the proxy/load balancer.
Max length 64 characters. Scope should start with a letter and can only have letters, numbers, hyphens. When `null`, the `scope` field will be omitted from the resulting object.
  - `server_tls_policy` (`string`): A fully-qualified ServerTLSPolicy URL reference. Specifies how TLS traffic is terminated.
If empty, TLS termination is disabled. When `null`, the `server_tls_policy` field will be omitted from the resulting object.
  - `subnetwork` (`string`): The relative resource name identifying the subnetwork in which this SWG is allocated.
For example: &#39;projects/*/regions/us-central1/subnetworks/network-1&#39;.
Currently, this field is specific to gateways of type &#39;SECURE_WEB_GATEWAY. When `null`, the `subnetwork` field will be omitted from the resulting object.
  - `type` (`string`): Immutable. The type of the customer-managed gateway. Possible values are: * OPEN_MESH * SECURE_WEB_GATEWAY. Possible values: [&#34;TYPE_UNSPECIFIED&#34;, &#34;OPEN_MESH&#34;, &#34;SECURE_WEB_GATEWAY&#34;]
  - `timeouts` (`obj`): Set the `timeouts` field on the resulting object. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.network_services_gateway.timeouts.new](#fn-timeoutsnew) constructor.

**Returns**:
  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `network_services_gateway` resource into the root Terraform configuration.


### fn withAddresses

```ts
withAddresses()
```

`google.list.withAddresses` constructs a mixin object that can be merged into the `list`
Terraform resource block to set or update the addresses field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list`): The value to set for the `addresses` field.


### fn withCertificateUrls

```ts
withCertificateUrls()
```

`google.list.withCertificateUrls` constructs a mixin object that can be merged into the `list`
Terraform resource block to set or update the certificate_urls field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list`): The value to set for the `certificate_urls` field.


### fn withDeleteSwgAutogenRouterOnDestroy

```ts
withDeleteSwgAutogenRouterOnDestroy()
```

`google.bool.withDeleteSwgAutogenRouterOnDestroy` constructs a mixin object that can be merged into the `bool`
Terraform resource block to set or update the delete_swg_autogen_router_on_destroy field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`bool`): The value to set for the `delete_swg_autogen_router_on_destroy` field.


### fn withDescription

```ts
withDescription()
```

`google.string.withDescription` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the description field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `description` field.


### fn withGatewaySecurityPolicy

```ts
withGatewaySecurityPolicy()
```

`google.string.withGatewaySecurityPolicy` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the gateway_security_policy field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `gateway_security_policy` field.


### fn withLabels

```ts
withLabels()
```

`google.obj.withLabels` constructs a mixin object that can be merged into the `obj`
Terraform resource block to set or update the labels field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`obj`): The value to set for the `labels` field.


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


### fn withNetwork

```ts
withNetwork()
```

`google.string.withNetwork` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the network field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `network` field.


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


### fn withScope

```ts
withScope()
```

`google.string.withScope` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the scope field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `scope` field.


### fn withServerTlsPolicy

```ts
withServerTlsPolicy()
```

`google.string.withServerTlsPolicy` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the server_tls_policy field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `server_tls_policy` field.


### fn withSubnetwork

```ts
withSubnetwork()
```

`google.string.withSubnetwork` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the subnetwork field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `subnetwork` field.


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


## obj timeouts



### fn timeouts.new

```ts
new()
```


`google.network_services_gateway.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`
Terraform sub block.



**Args**:
  - `create` (`string`): Set the `create` field on the resulting object. When `null`, the `create` field will be omitted from the resulting object.
  - `delete` (`string`): Set the `delete` field on the resulting object. When `null`, the `delete` field will be omitted from the resulting object.
  - `update` (`string`): Set the `update` field on the resulting object. When `null`, the `update` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `timeouts` sub block.
