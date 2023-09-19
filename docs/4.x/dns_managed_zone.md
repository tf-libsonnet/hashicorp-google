---
permalink: /dns_managed_zone/
---

# dns_managed_zone

`dns_managed_zone` represents the `google_dns_managed_zone` Terraform resource.



This package contains functions and utilities for setting up the resource using Jsonnet code.


## Index

* [`fn new()`](#fn-new)
* [`fn newAttrs()`](#fn-newattrs)
* [`fn withCloudLoggingConfig()`](#fn-withcloudloggingconfig)
* [`fn withCloudLoggingConfigMixin()`](#fn-withcloudloggingconfigmixin)
* [`fn withDescription()`](#fn-withdescription)
* [`fn withDnsName()`](#fn-withdnsname)
* [`fn withDnssecConfig()`](#fn-withdnssecconfig)
* [`fn withDnssecConfigMixin()`](#fn-withdnssecconfigmixin)
* [`fn withForceDestroy()`](#fn-withforcedestroy)
* [`fn withForwardingConfig()`](#fn-withforwardingconfig)
* [`fn withForwardingConfigMixin()`](#fn-withforwardingconfigmixin)
* [`fn withLabels()`](#fn-withlabels)
* [`fn withName()`](#fn-withname)
* [`fn withPeeringConfig()`](#fn-withpeeringconfig)
* [`fn withPeeringConfigMixin()`](#fn-withpeeringconfigmixin)
* [`fn withPrivateVisibilityConfig()`](#fn-withprivatevisibilityconfig)
* [`fn withPrivateVisibilityConfigMixin()`](#fn-withprivatevisibilityconfigmixin)
* [`fn withProject()`](#fn-withproject)
* [`fn withTimeouts()`](#fn-withtimeouts)
* [`fn withTimeoutsMixin()`](#fn-withtimeoutsmixin)
* [`fn withVisibility()`](#fn-withvisibility)
* [`obj cloud_logging_config`](#obj-cloud_logging_config)
  * [`fn new()`](#fn-cloud_logging_confignew)
* [`obj dnssec_config`](#obj-dnssec_config)
  * [`fn new()`](#fn-dnssec_confignew)
  * [`obj dnssec_config.default_key_specs`](#obj-dnssec_configdefault_key_specs)
    * [`fn new()`](#fn-dnssec_configdefault_key_specsnew)
* [`obj forwarding_config`](#obj-forwarding_config)
  * [`fn new()`](#fn-forwarding_confignew)
  * [`obj forwarding_config.target_name_servers`](#obj-forwarding_configtarget_name_servers)
    * [`fn new()`](#fn-forwarding_configtarget_name_serversnew)
* [`obj peering_config`](#obj-peering_config)
  * [`fn new()`](#fn-peering_confignew)
  * [`obj peering_config.target_network`](#obj-peering_configtarget_network)
    * [`fn new()`](#fn-peering_configtarget_networknew)
* [`obj private_visibility_config`](#obj-private_visibility_config)
  * [`fn new()`](#fn-private_visibility_confignew)
  * [`obj private_visibility_config.gke_clusters`](#obj-private_visibility_configgke_clusters)
    * [`fn new()`](#fn-private_visibility_configgke_clustersnew)
  * [`obj private_visibility_config.networks`](#obj-private_visibility_confignetworks)
    * [`fn new()`](#fn-private_visibility_confignetworksnew)
* [`obj timeouts`](#obj-timeouts)
  * [`fn new()`](#fn-timeoutsnew)

## Fields

### fn new

```ts
new()
```


`google.dns_managed_zone.new` injects a new `google_dns_managed_zone` Terraform `resource`
block into the root module document.

Additionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the
resource. For example, if you added a new instance to the root using:

    # arguments omitted for brevity
    google.dns_managed_zone.new('some_id')

You can get the reference to the `id` field of the created `google.dns_managed_zone` using the reference:

    $._ref.google_dns_managed_zone.some_id.get('id')

This is the same as directly entering `"${ google_dns_managed_zone.some_id.id }"` as the value.

NOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,
or `$` to refer to the root object. Instead, make an explicit outer object using `local`.

**Args**:
  - `resourceLabel` (`string`): The name label of the block.
  - `description` (`string`): A textual description field. Defaults to &#39;Managed by Terraform&#39;. When `null`, the `description` field will be omitted from the resulting object.
  - `dns_name` (`string`): The DNS name of this managed zone, for instance &#34;example.com.&#34;.
  - `force_destroy` (`bool`): Set this true to delete all records in the zone. When `null`, the `force_destroy` field will be omitted from the resulting object.
  - `labels` (`obj`): A set of key/value label pairs to assign to this ManagedZone. When `null`, the `labels` field will be omitted from the resulting object.
  - `name` (`string`): User assigned name for this resource.
Must be unique within the project.
  - `project` (`string`): Set the `project` field on the resulting resource block. When `null`, the `project` field will be omitted from the resulting object.
  - `visibility` (`string`): The zone&#39;s visibility: public zones are exposed to the Internet,
while private zones are visible only to Virtual Private Cloud resources. Default value: &#34;public&#34; Possible values: [&#34;private&#34;, &#34;public&#34;] When `null`, the `visibility` field will be omitted from the resulting object.
  - `cloud_logging_config` (`list[obj]`): Cloud logging configuration When `null`, the `cloud_logging_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dns_managed_zone.cloud_logging_config.new](#fn-cloud_logging_confignew) constructor.
  - `dnssec_config` (`list[obj]`): DNSSEC configuration When `null`, the `dnssec_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dns_managed_zone.dnssec_config.new](#fn-dnssec_confignew) constructor.
  - `forwarding_config` (`list[obj]`): The presence for this field indicates that outbound forwarding is enabled
for this zone. The value of this field contains the set of destinations
to forward to. When `null`, the `forwarding_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dns_managed_zone.forwarding_config.new](#fn-forwarding_confignew) constructor.
  - `peering_config` (`list[obj]`): The presence of this field indicates that DNS Peering is enabled for this
zone. The value of this field contains the network to peer with. When `null`, the `peering_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dns_managed_zone.peering_config.new](#fn-peering_confignew) constructor.
  - `private_visibility_config` (`list[obj]`): For privately visible zones, the set of Virtual Private Cloud
resources that the zone is visible from. At least one of &#39;gke_clusters&#39; or &#39;networks&#39; must be specified. When `null`, the `private_visibility_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dns_managed_zone.private_visibility_config.new](#fn-private_visibility_confignew) constructor.
  - `timeouts` (`obj`): Set the `timeouts` field on the resulting resource block. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dns_managed_zone.timeouts.new](#fn-timeoutsnew) constructor.

**Returns**:
- A mixin object that injects the new resource into the root Terraform configuration.


### fn newAttrs

```ts
newAttrs()
```


`google.dns_managed_zone.newAttrs` constructs a new object with attributes and blocks configured for the `dns_managed_zone`
Terraform resource.

Unlike [google.dns_managed_zone.new](#fn-new), this function will not inject the `resource`
block into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the
[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.

This is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to
injecting into a complete block.

**Args**:
  - `description` (`string`): A textual description field. Defaults to &#39;Managed by Terraform&#39;. When `null`, the `description` field will be omitted from the resulting object.
  - `dns_name` (`string`): The DNS name of this managed zone, for instance &#34;example.com.&#34;.
  - `force_destroy` (`bool`): Set this true to delete all records in the zone. When `null`, the `force_destroy` field will be omitted from the resulting object.
  - `labels` (`obj`): A set of key/value label pairs to assign to this ManagedZone. When `null`, the `labels` field will be omitted from the resulting object.
  - `name` (`string`): User assigned name for this resource.
Must be unique within the project.
  - `project` (`string`): Set the `project` field on the resulting object. When `null`, the `project` field will be omitted from the resulting object.
  - `visibility` (`string`): The zone&#39;s visibility: public zones are exposed to the Internet,
while private zones are visible only to Virtual Private Cloud resources. Default value: &#34;public&#34; Possible values: [&#34;private&#34;, &#34;public&#34;] When `null`, the `visibility` field will be omitted from the resulting object.
  - `cloud_logging_config` (`list[obj]`): Cloud logging configuration When `null`, the `cloud_logging_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dns_managed_zone.cloud_logging_config.new](#fn-cloud_logging_confignew) constructor.
  - `dnssec_config` (`list[obj]`): DNSSEC configuration When `null`, the `dnssec_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dns_managed_zone.dnssec_config.new](#fn-dnssec_confignew) constructor.
  - `forwarding_config` (`list[obj]`): The presence for this field indicates that outbound forwarding is enabled
for this zone. The value of this field contains the set of destinations
to forward to. When `null`, the `forwarding_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dns_managed_zone.forwarding_config.new](#fn-forwarding_confignew) constructor.
  - `peering_config` (`list[obj]`): The presence of this field indicates that DNS Peering is enabled for this
zone. The value of this field contains the network to peer with. When `null`, the `peering_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dns_managed_zone.peering_config.new](#fn-peering_confignew) constructor.
  - `private_visibility_config` (`list[obj]`): For privately visible zones, the set of Virtual Private Cloud
resources that the zone is visible from. At least one of &#39;gke_clusters&#39; or &#39;networks&#39; must be specified. When `null`, the `private_visibility_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dns_managed_zone.private_visibility_config.new](#fn-private_visibility_confignew) constructor.
  - `timeouts` (`obj`): Set the `timeouts` field on the resulting object. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dns_managed_zone.timeouts.new](#fn-timeoutsnew) constructor.

**Returns**:
  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `dns_managed_zone` resource into the root Terraform configuration.


### fn withCloudLoggingConfig

```ts
withCloudLoggingConfig()
```

`google.list[obj].withCloudLoggingConfig` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the cloud_logging_config field.

This function will replace the array with the passed in `value`. If you wish to instead append the
passed in value to the existing array, use the [google.list[obj].withCloudLoggingConfigMixin](TODO) function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `cloud_logging_config` field.


### fn withCloudLoggingConfigMixin

```ts
withCloudLoggingConfigMixin()
```

`google.list[obj].withCloudLoggingConfigMixin` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the cloud_logging_config field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google.list[obj].withCloudLoggingConfig](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `cloud_logging_config` field.


### fn withDescription

```ts
withDescription()
```

`google.string.withDescription` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the description field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `description` field.


### fn withDnsName

```ts
withDnsName()
```

`google.string.withDnsName` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the dns_name field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `dns_name` field.


### fn withDnssecConfig

```ts
withDnssecConfig()
```

`google.list[obj].withDnssecConfig` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the dnssec_config field.

This function will replace the array with the passed in `value`. If you wish to instead append the
passed in value to the existing array, use the [google.list[obj].withDnssecConfigMixin](TODO) function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `dnssec_config` field.


### fn withDnssecConfigMixin

```ts
withDnssecConfigMixin()
```

`google.list[obj].withDnssecConfigMixin` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the dnssec_config field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google.list[obj].withDnssecConfig](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `dnssec_config` field.


### fn withForceDestroy

```ts
withForceDestroy()
```

`google.bool.withForceDestroy` constructs a mixin object that can be merged into the `bool`
Terraform resource block to set or update the force_destroy field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`bool`): The value to set for the `force_destroy` field.


### fn withForwardingConfig

```ts
withForwardingConfig()
```

`google.list[obj].withForwardingConfig` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the forwarding_config field.

This function will replace the array with the passed in `value`. If you wish to instead append the
passed in value to the existing array, use the [google.list[obj].withForwardingConfigMixin](TODO) function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `forwarding_config` field.


### fn withForwardingConfigMixin

```ts
withForwardingConfigMixin()
```

`google.list[obj].withForwardingConfigMixin` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the forwarding_config field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google.list[obj].withForwardingConfig](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `forwarding_config` field.


### fn withLabels

```ts
withLabels()
```

`google.obj.withLabels` constructs a mixin object that can be merged into the `obj`
Terraform resource block to set or update the labels field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`obj`): The value to set for the `labels` field.


### fn withName

```ts
withName()
```

`google.string.withName` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the name field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `name` field.


### fn withPeeringConfig

```ts
withPeeringConfig()
```

`google.list[obj].withPeeringConfig` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the peering_config field.

This function will replace the array with the passed in `value`. If you wish to instead append the
passed in value to the existing array, use the [google.list[obj].withPeeringConfigMixin](TODO) function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `peering_config` field.


### fn withPeeringConfigMixin

```ts
withPeeringConfigMixin()
```

`google.list[obj].withPeeringConfigMixin` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the peering_config field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google.list[obj].withPeeringConfig](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `peering_config` field.


### fn withPrivateVisibilityConfig

```ts
withPrivateVisibilityConfig()
```

`google.list[obj].withPrivateVisibilityConfig` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the private_visibility_config field.

This function will replace the array with the passed in `value`. If you wish to instead append the
passed in value to the existing array, use the [google.list[obj].withPrivateVisibilityConfigMixin](TODO) function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `private_visibility_config` field.


### fn withPrivateVisibilityConfigMixin

```ts
withPrivateVisibilityConfigMixin()
```

`google.list[obj].withPrivateVisibilityConfigMixin` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the private_visibility_config field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google.list[obj].withPrivateVisibilityConfig](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `private_visibility_config` field.


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


### fn withVisibility

```ts
withVisibility()
```

`google.string.withVisibility` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the visibility field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `visibility` field.


## obj cloud_logging_config



### fn cloud_logging_config.new

```ts
new()
```


`google.dns_managed_zone.cloud_logging_config.new` constructs a new object with attributes and blocks configured for the `cloud_logging_config`
Terraform sub block.



**Args**:
  - `enable_logging` (`bool`): If set, enable query logging for this ManagedZone. False by default, making logging opt-in.

**Returns**:
  - An attribute object that represents the `cloud_logging_config` sub block.


## obj dnssec_config



### fn dnssec_config.new

```ts
new()
```


`google.dns_managed_zone.dnssec_config.new` constructs a new object with attributes and blocks configured for the `dnssec_config`
Terraform sub block.



**Args**:
  - `kind` (`string`): Identifies what kind of resource this is When `null`, the `kind` field will be omitted from the resulting object.
  - `non_existence` (`string`): Specifies the mechanism used to provide authenticated denial-of-existence responses.
non_existence can only be updated when the state is &#39;off&#39;. Possible values: [&#34;nsec&#34;, &#34;nsec3&#34;] When `null`, the `non_existence` field will be omitted from the resulting object.
  - `state` (`string`): Specifies whether DNSSEC is enabled, and what mode it is in Possible values: [&#34;off&#34;, &#34;on&#34;, &#34;transfer&#34;] When `null`, the `state` field will be omitted from the resulting object.
  - `default_key_specs` (`list[obj]`): Specifies parameters that will be used for generating initial DnsKeys
for this ManagedZone. If you provide a spec for keySigning or zoneSigning,
you must also provide one for the other.
default_key_specs can only be updated when the state is &#39;off&#39;. When `null`, the `default_key_specs` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dns_managed_zone.dnssec_config.default_key_specs.new](#fn-dnssec_configdefault_key_specsnew) constructor.

**Returns**:
  - An attribute object that represents the `dnssec_config` sub block.


## obj dnssec_config.default_key_specs



### fn dnssec_config.default_key_specs.new

```ts
new()
```


`google.dns_managed_zone.dnssec_config.default_key_specs.new` constructs a new object with attributes and blocks configured for the `default_key_specs`
Terraform sub block.



**Args**:
  - `algorithm` (`string`): String mnemonic specifying the DNSSEC algorithm of this key Possible values: [&#34;ecdsap256sha256&#34;, &#34;ecdsap384sha384&#34;, &#34;rsasha1&#34;, &#34;rsasha256&#34;, &#34;rsasha512&#34;] When `null`, the `algorithm` field will be omitted from the resulting object.
  - `key_length` (`number`): Length of the keys in bits When `null`, the `key_length` field will be omitted from the resulting object.
  - `key_type` (`string`): Specifies whether this is a key signing key (KSK) or a zone
signing key (ZSK). Key signing keys have the Secure Entry
Point flag set and, when active, will only be used to sign
resource record sets of type DNSKEY. Zone signing keys do
not have the Secure Entry Point flag set and will be used
to sign all other types of resource record sets. Possible values: [&#34;keySigning&#34;, &#34;zoneSigning&#34;] When `null`, the `key_type` field will be omitted from the resulting object.
  - `kind` (`string`): Identifies what kind of resource this is When `null`, the `kind` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `default_key_specs` sub block.


## obj forwarding_config



### fn forwarding_config.new

```ts
new()
```


`google.dns_managed_zone.forwarding_config.new` constructs a new object with attributes and blocks configured for the `forwarding_config`
Terraform sub block.



**Args**:
  - `target_name_servers` (`list[obj]`): List of target name servers to forward to. Cloud DNS will
select the best available name server if more than
one target is given. When `null`, the `target_name_servers` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dns_managed_zone.forwarding_config.target_name_servers.new](#fn-forwarding_configtarget_name_serversnew) constructor.

**Returns**:
  - An attribute object that represents the `forwarding_config` sub block.


## obj forwarding_config.target_name_servers



### fn forwarding_config.target_name_servers.new

```ts
new()
```


`google.dns_managed_zone.forwarding_config.target_name_servers.new` constructs a new object with attributes and blocks configured for the `target_name_servers`
Terraform sub block.



**Args**:
  - `forwarding_path` (`string`): Forwarding path for this TargetNameServer. If unset or &#39;default&#39; Cloud DNS will make forwarding
decision based on address ranges, i.e. RFC1918 addresses go to the VPC, Non-RFC1918 addresses go
to the Internet. When set to &#39;private&#39;, Cloud DNS will always send queries through VPC for this target Possible values: [&#34;default&#34;, &#34;private&#34;] When `null`, the `forwarding_path` field will be omitted from the resulting object.
  - `ipv4_address` (`string`): IPv4 address of a target name server.

**Returns**:
  - An attribute object that represents the `target_name_servers` sub block.


## obj peering_config



### fn peering_config.new

```ts
new()
```


`google.dns_managed_zone.peering_config.new` constructs a new object with attributes and blocks configured for the `peering_config`
Terraform sub block.



**Args**:
  - `target_network` (`list[obj]`): The network with which to peer. When `null`, the `target_network` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dns_managed_zone.peering_config.target_network.new](#fn-peering_configtarget_networknew) constructor.

**Returns**:
  - An attribute object that represents the `peering_config` sub block.


## obj peering_config.target_network



### fn peering_config.target_network.new

```ts
new()
```


`google.dns_managed_zone.peering_config.target_network.new` constructs a new object with attributes and blocks configured for the `target_network`
Terraform sub block.



**Args**:
  - `network_url` (`string`): The id or fully qualified URL of the VPC network to forward queries to.
This should be formatted like &#39;projects/{project}/global/networks/{network}&#39; or
&#39;https://www.googleapis.com/compute/v1/projects/{project}/global/networks/{network}&#39;

**Returns**:
  - An attribute object that represents the `target_network` sub block.


## obj private_visibility_config



### fn private_visibility_config.new

```ts
new()
```


`google.dns_managed_zone.private_visibility_config.new` constructs a new object with attributes and blocks configured for the `private_visibility_config`
Terraform sub block.



**Args**:
  - `gke_clusters` (`list[obj]`): The list of Google Kubernetes Engine clusters that can see this zone. When `null`, the `gke_clusters` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dns_managed_zone.private_visibility_config.gke_clusters.new](#fn-private_visibility_configgke_clustersnew) constructor.
  - `networks` (`list[obj]`): The list of VPC networks that can see this zone. Until the provider updates to use the Terraform 0.12 SDK in a future release, you
may experience issues with this resource while updating. If you&#39;ve defined a &#39;networks&#39; block and
add another &#39;networks&#39; block while keeping the old block, Terraform will see an incorrect diff
and apply an incorrect update to the resource. If you encounter this issue, remove all &#39;networks&#39;
blocks in an update and then apply another update adding all of them back simultaneously. When `null`, the `networks` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dns_managed_zone.private_visibility_config.networks.new](#fn-private_visibility_confignetworksnew) constructor.

**Returns**:
  - An attribute object that represents the `private_visibility_config` sub block.


## obj private_visibility_config.gke_clusters



### fn private_visibility_config.gke_clusters.new

```ts
new()
```


`google.dns_managed_zone.private_visibility_config.gke_clusters.new` constructs a new object with attributes and blocks configured for the `gke_clusters`
Terraform sub block.



**Args**:
  - `gke_cluster_name` (`string`): The resource name of the cluster to bind this ManagedZone to.
This should be specified in the format like
&#39;projects/*/locations/*/clusters/*&#39;

**Returns**:
  - An attribute object that represents the `gke_clusters` sub block.


## obj private_visibility_config.networks



### fn private_visibility_config.networks.new

```ts
new()
```


`google.dns_managed_zone.private_visibility_config.networks.new` constructs a new object with attributes and blocks configured for the `networks`
Terraform sub block.



**Args**:
  - `network_url` (`string`): The id or fully qualified URL of the VPC network to bind to.
This should be formatted like &#39;projects/{project}/global/networks/{network}&#39; or
&#39;https://www.googleapis.com/compute/v1/projects/{project}/global/networks/{network}&#39;

**Returns**:
  - An attribute object that represents the `networks` sub block.


## obj timeouts



### fn timeouts.new

```ts
new()
```


`google.dns_managed_zone.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`
Terraform sub block.



**Args**:
  - `create` (`string`): Set the `create` field on the resulting object. When `null`, the `create` field will be omitted from the resulting object.
  - `delete` (`string`): Set the `delete` field on the resulting object. When `null`, the `delete` field will be omitted from the resulting object.
  - `update` (`string`): Set the `update` field on the resulting object. When `null`, the `update` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `timeouts` sub block.
