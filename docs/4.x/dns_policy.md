---
permalink: /dns_policy/
---

# dns_policy

`dns_policy` represents the `google_dns_policy` Terraform resource.



This package contains functions and utilities for setting up the resource using Jsonnet code.


## Index

* [`fn new()`](#fn-new)
* [`fn newAttrs()`](#fn-newattrs)
* [`fn withAlternativeNameServerConfig()`](#fn-withalternativenameserverconfig)
* [`fn withAlternativeNameServerConfigMixin()`](#fn-withalternativenameserverconfigmixin)
* [`fn withDescription()`](#fn-withdescription)
* [`fn withEnableInboundForwarding()`](#fn-withenableinboundforwarding)
* [`fn withEnableLogging()`](#fn-withenablelogging)
* [`fn withName()`](#fn-withname)
* [`fn withNetworks()`](#fn-withnetworks)
* [`fn withNetworksMixin()`](#fn-withnetworksmixin)
* [`fn withProject()`](#fn-withproject)
* [`fn withTimeouts()`](#fn-withtimeouts)
* [`fn withTimeoutsMixin()`](#fn-withtimeoutsmixin)
* [`obj alternative_name_server_config`](#obj-alternative_name_server_config)
  * [`fn new()`](#fn-alternative_name_server_confignew)
  * [`obj alternative_name_server_config.target_name_servers`](#obj-alternative_name_server_configtarget_name_servers)
    * [`fn new()`](#fn-alternative_name_server_configtarget_name_serversnew)
* [`obj networks`](#obj-networks)
  * [`fn new()`](#fn-networksnew)
* [`obj timeouts`](#obj-timeouts)
  * [`fn new()`](#fn-timeoutsnew)

## Fields

### fn new

```ts
new()
```


`google.dns_policy.new` injects a new `google_dns_policy` Terraform `resource`
block into the root module document.

Additionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the
resource. For example, if you added a new instance to the root using:

    # arguments omitted for brevity
    google.dns_policy.new('some_id')

You can get the reference to the `id` field of the created `google.dns_policy` using the reference:

    $._ref.google_dns_policy.some_id.get('id')

This is the same as directly entering `"${ google_dns_policy.some_id.id }"` as the value.

NOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,
or `$` to refer to the root object. Instead, make an explicit outer object using `local`.

**Args**:
  - `resourceLabel` (`string`): The name label of the block.
  - `description` (`string`): A textual description field. Defaults to &#39;Managed by Terraform&#39;. When `null`, the `description` field will be omitted from the resulting object.
  - `enable_inbound_forwarding` (`bool`): Allows networks bound to this policy to receive DNS queries sent
by VMs or applications over VPN connections. When enabled, a
virtual IP address will be allocated from each of the sub-networks
that are bound to this policy. When `null`, the `enable_inbound_forwarding` field will be omitted from the resulting object.
  - `enable_logging` (`bool`): Controls whether logging is enabled for the networks bound to this policy.
Defaults to no logging if not set. When `null`, the `enable_logging` field will be omitted from the resulting object.
  - `name` (`string`): User assigned name for this policy.
  - `project` (`string`):  When `null`, the `project` field will be omitted from the resulting object.
  - `alternative_name_server_config` (`list[obj]`): Sets an alternative name server for the associated networks.
When specified, all DNS queries are forwarded to a name server that you choose.
Names such as .internal are not available when an alternative name server is specified. When `null`, the `alternative_name_server_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dns_policy.alternative_name_server_config.new](#fn-alternative_name_server_confignew) constructor.
  - `networks` (`list[obj]`): List of network names specifying networks to which this policy is applied. When `null`, the `networks` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dns_policy.networks.new](#fn-networksnew) constructor.
  - `timeouts` (`obj`):  When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dns_policy.timeouts.new](#fn-timeoutsnew) constructor.

**Returns**:
- A mixin object that injects the new resource into the root Terraform configuration.


### fn newAttrs

```ts
newAttrs()
```


`google.dns_policy.newAttrs` constructs a new object with attributes and blocks configured for the `dns_policy`
Terraform resource.

Unlike [google.dns_policy.new](#fn-new), this function will not inject the `resource`
block into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the
[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.

This is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to
injecting into a complete block.

**Args**:
  - `description` (`string`): A textual description field. Defaults to &#39;Managed by Terraform&#39;. When `null`, the `description` field will be omitted from the resulting object.
  - `enable_inbound_forwarding` (`bool`): Allows networks bound to this policy to receive DNS queries sent
by VMs or applications over VPN connections. When enabled, a
virtual IP address will be allocated from each of the sub-networks
that are bound to this policy. When `null`, the `enable_inbound_forwarding` field will be omitted from the resulting object.
  - `enable_logging` (`bool`): Controls whether logging is enabled for the networks bound to this policy.
Defaults to no logging if not set. When `null`, the `enable_logging` field will be omitted from the resulting object.
  - `name` (`string`): User assigned name for this policy.
  - `project` (`string`):  When `null`, the `project` field will be omitted from the resulting object.
  - `alternative_name_server_config` (`list[obj]`): Sets an alternative name server for the associated networks.
When specified, all DNS queries are forwarded to a name server that you choose.
Names such as .internal are not available when an alternative name server is specified. When `null`, the `alternative_name_server_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dns_policy.alternative_name_server_config.new](#fn-alternative_name_server_confignew) constructor.
  - `networks` (`list[obj]`): List of network names specifying networks to which this policy is applied. When `null`, the `networks` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dns_policy.networks.new](#fn-networksnew) constructor.
  - `timeouts` (`obj`):  When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dns_policy.timeouts.new](#fn-timeoutsnew) constructor.

**Returns**:
  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `dns_policy` resource into the root Terraform configuration.


### fn withAlternativeNameServerConfig

```ts
withAlternativeNameServerConfig()
```

`google.list[obj].withAlternativeNameServerConfig` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the alternative_name_server_config field.

This function will replace the array with the passed in `value`. If you wish to instead append the
passed in value to the existing array, use the [google.list[obj].withAlternativeNameServerConfigMixin](TODO) function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `alternative_name_server_config` field.


### fn withAlternativeNameServerConfigMixin

```ts
withAlternativeNameServerConfigMixin()
```

`google.list[obj].withAlternativeNameServerConfigMixin` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the alternative_name_server_config field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google.list[obj].withAlternativeNameServerConfig](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `alternative_name_server_config` field.


### fn withDescription

```ts
withDescription()
```

`google.string.withDescription` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the description field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `description` field.


### fn withEnableInboundForwarding

```ts
withEnableInboundForwarding()
```

`google.bool.withEnableInboundForwarding` constructs a mixin object that can be merged into the `bool`
Terraform resource block to set or update the enable_inbound_forwarding field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`bool`): The value to set for the `enable_inbound_forwarding` field.


### fn withEnableLogging

```ts
withEnableLogging()
```

`google.bool.withEnableLogging` constructs a mixin object that can be merged into the `bool`
Terraform resource block to set or update the enable_logging field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`bool`): The value to set for the `enable_logging` field.


### fn withName

```ts
withName()
```

`google.string.withName` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the name field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `name` field.


### fn withNetworks

```ts
withNetworks()
```

`google.list[obj].withNetworks` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the networks field.

This function will replace the array with the passed in `value`. If you wish to instead append the
passed in value to the existing array, use the [google.list[obj].withNetworksMixin](TODO) function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `networks` field.


### fn withNetworksMixin

```ts
withNetworksMixin()
```

`google.list[obj].withNetworksMixin` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the networks field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google.list[obj].withNetworks](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `networks` field.


### fn withProject

```ts
withProject()
```

`google.string.withProject` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the project field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `project` field.


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


## obj alternative_name_server_config



### fn alternative_name_server_config.new

```ts
new()
```


`google.dns_policy.alternative_name_server_config.new` constructs a new object with attributes and blocks configured for the `alternative_name_server_config`
Terraform sub block.



**Args**:
  - `target_name_servers` (`list[obj]`): Sets an alternative name server for the associated networks. When specified,
all DNS queries are forwarded to a name server that you choose. Names such as .internal
are not available when an alternative name server is specified. When `null`, the `target_name_servers` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dns_policy.alternative_name_server_config.target_name_servers.new](#fn-dns_policytarget_name_serversnew) constructor.

**Returns**:
  - An attribute object that represents the `alternative_name_server_config` sub block.


## obj alternative_name_server_config.target_name_servers



### fn alternative_name_server_config.target_name_servers.new

```ts
new()
```


`google.dns_policy.alternative_name_server_config.target_name_servers.new` constructs a new object with attributes and blocks configured for the `target_name_servers`
Terraform sub block.



**Args**:
  - `forwarding_path` (`string`): Forwarding path for this TargetNameServer. If unset or &#39;default&#39; Cloud DNS will make forwarding
decision based on address ranges, i.e. RFC1918 addresses go to the VPC, Non-RFC1918 addresses go
to the Internet. When set to &#39;private&#39;, Cloud DNS will always send queries through VPC for this target Possible values: [&#34;default&#34;, &#34;private&#34;] When `null`, the `forwarding_path` field will be omitted from the resulting object.
  - `ipv4_address` (`string`): IPv4 address to forward to.

**Returns**:
  - An attribute object that represents the `target_name_servers` sub block.


## obj networks



### fn networks.new

```ts
new()
```


`google.dns_policy.networks.new` constructs a new object with attributes and blocks configured for the `networks`
Terraform sub block.



**Args**:
  - `network_url` (`string`): The id or fully qualified URL of the VPC network to forward queries to.
This should be formatted like &#39;projects/{project}/global/networks/{network}&#39; or
&#39;https://www.googleapis.com/compute/v1/projects/{project}/global/networks/{network}&#39;

**Returns**:
  - An attribute object that represents the `networks` sub block.


## obj timeouts



### fn timeouts.new

```ts
new()
```


`google.dns_policy.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`
Terraform sub block.



**Args**:
  - `create` (`string`):  When `null`, the `create` field will be omitted from the resulting object.
  - `delete` (`string`):  When `null`, the `delete` field will be omitted from the resulting object.
  - `update` (`string`):  When `null`, the `update` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `timeouts` sub block.
