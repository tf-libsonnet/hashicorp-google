---
permalink: /compute_firewall/
---

# compute_firewall

`compute_firewall` represents the `google_compute_firewall` Terraform resource.



This package contains functions and utilities for setting up the resource using Jsonnet code.


## Index

* [`fn new()`](#fn-new)
* [`fn newAttrs()`](#fn-newattrs)
* [`fn withAllow()`](#fn-withallow)
* [`fn withAllowMixin()`](#fn-withallowmixin)
* [`fn withDeny()`](#fn-withdeny)
* [`fn withDenyMixin()`](#fn-withdenymixin)
* [`fn withDescription()`](#fn-withdescription)
* [`fn withDestinationRanges()`](#fn-withdestinationranges)
* [`fn withDirection()`](#fn-withdirection)
* [`fn withDisabled()`](#fn-withdisabled)
* [`fn withEnableLogging()`](#fn-withenablelogging)
* [`fn withLogConfig()`](#fn-withlogconfig)
* [`fn withLogConfigMixin()`](#fn-withlogconfigmixin)
* [`fn withName()`](#fn-withname)
* [`fn withNetwork()`](#fn-withnetwork)
* [`fn withPriority()`](#fn-withpriority)
* [`fn withProject()`](#fn-withproject)
* [`fn withSourceRanges()`](#fn-withsourceranges)
* [`fn withSourceServiceAccounts()`](#fn-withsourceserviceaccounts)
* [`fn withSourceTags()`](#fn-withsourcetags)
* [`fn withTargetServiceAccounts()`](#fn-withtargetserviceaccounts)
* [`fn withTargetTags()`](#fn-withtargettags)
* [`fn withTimeouts()`](#fn-withtimeouts)
* [`fn withTimeoutsMixin()`](#fn-withtimeoutsmixin)
* [`obj allow`](#obj-allow)
  * [`fn new()`](#fn-allownew)
* [`obj deny`](#obj-deny)
  * [`fn new()`](#fn-denynew)
* [`obj log_config`](#obj-log_config)
  * [`fn new()`](#fn-log_confignew)
* [`obj timeouts`](#obj-timeouts)
  * [`fn new()`](#fn-timeoutsnew)

## Fields

### fn new

```ts
new()
```


`google.compute_firewall.new` injects a new `google_compute_firewall` Terraform `resource`
block into the root module document.

Additionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the
resource. For example, if you added a new instance to the root using:

    # arguments omitted for brevity
    google.compute_firewall.new('some_id')

You can get the reference to the `id` field of the created `google.compute_firewall` using the reference:

    $._ref.google_compute_firewall.some_id.get('id')

This is the same as directly entering `"${ google_compute_firewall.some_id.id }"` as the value.

NOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,
or `$` to refer to the root object. Instead, make an explicit outer object using `local`.

**Args**:
  - `resourceLabel` (`string`): The name label of the block.
  - `description` (`string`): An optional description of this resource. Provide this property when
you create the resource. When `null`, the `description` field will be omitted from the resulting object.
  - `destination_ranges` (`list`): If destination ranges are specified, the firewall will apply only to
traffic that has destination IP address in these ranges. These ranges
must be expressed in CIDR format. Only IPv4 is supported. When `null`, the `destination_ranges` field will be omitted from the resulting object.
  - `direction` (`string`): Direction of traffic to which this firewall applies; default is
INGRESS. Note: For INGRESS traffic, it is NOT supported to specify
destinationRanges; For EGRESS traffic, it is NOT supported to specify
&#39;source_ranges&#39; OR &#39;source_tags&#39;. For INGRESS traffic, one of &#39;source_ranges&#39;,
&#39;source_tags&#39; or &#39;source_service_accounts&#39; is required. Possible values: [&#34;INGRESS&#34;, &#34;EGRESS&#34;] When `null`, the `direction` field will be omitted from the resulting object.
  - `disabled` (`bool`): Denotes whether the firewall rule is disabled, i.e not applied to the
network it is associated with. When set to true, the firewall rule is
not enforced and the network behaves as if it did not exist. If this
is unspecified, the firewall rule will be enabled. When `null`, the `disabled` field will be omitted from the resulting object.
  - `enable_logging` (`bool`): This field denotes whether to enable logging for a particular firewall rule. If logging is enabled, logs will be exported to Stackdriver. When `null`, the `enable_logging` field will be omitted from the resulting object.
  - `name` (`string`): Name of the resource. Provided by the client when the resource is
created. The name must be 1-63 characters long, and comply with
RFC1035. Specifically, the name must be 1-63 characters long and match
the regular expression &#39;[a-z]([-a-z0-9]*[a-z0-9])?&#39; which means the
first character must be a lowercase letter, and all following
characters must be a dash, lowercase letter, or digit, except the last
character, which cannot be a dash.
  - `network` (`string`): The name or self_link of the network to attach this firewall to.
  - `priority` (`number`): Priority for this rule. This is an integer between 0 and 65535, both
inclusive. When not specified, the value assumed is 1000. Relative
priorities determine precedence of conflicting rules. Lower value of
priority implies higher precedence (eg, a rule with priority 0 has
higher precedence than a rule with priority 1). DENY rules take
precedence over ALLOW rules having equal priority. When `null`, the `priority` field will be omitted from the resulting object.
  - `project` (`string`):  When `null`, the `project` field will be omitted from the resulting object.
  - `source_ranges` (`list`): If source ranges are specified, the firewall will apply only to
traffic that has source IP address in these ranges. These ranges must
be expressed in CIDR format. One or both of sourceRanges and
sourceTags may be set. If both properties are set, the firewall will
apply to traffic that has source IP address within sourceRanges OR the
source IP that belongs to a tag listed in the sourceTags property. The
connection does not need to match both properties for the firewall to
apply. Only IPv4 is supported. For INGRESS traffic, one of &#39;source_ranges&#39;,
&#39;source_tags&#39; or &#39;source_service_accounts&#39; is required. When `null`, the `source_ranges` field will be omitted from the resulting object.
  - `source_service_accounts` (`list`): If source service accounts are specified, the firewall will apply only
to traffic originating from an instance with a service account in this
list. Source service accounts cannot be used to control traffic to an
instance&#39;s external IP address because service accounts are associated
with an instance, not an IP address. sourceRanges can be set at the
same time as sourceServiceAccounts. If both are set, the firewall will
apply to traffic that has source IP address within sourceRanges OR the
source IP belongs to an instance with service account listed in
sourceServiceAccount. The connection does not need to match both
properties for the firewall to apply. sourceServiceAccounts cannot be
used at the same time as sourceTags or targetTags. For INGRESS traffic,
one of &#39;source_ranges&#39;, &#39;source_tags&#39; or &#39;source_service_accounts&#39; is required. When `null`, the `source_service_accounts` field will be omitted from the resulting object.
  - `source_tags` (`list`): If source tags are specified, the firewall will apply only to traffic
with source IP that belongs to a tag listed in source tags. Source
tags cannot be used to control traffic to an instance&#39;s external IP
address. Because tags are associated with an instance, not an IP
address. One or both of sourceRanges and sourceTags may be set. If
both properties are set, the firewall will apply to traffic that has
source IP address within sourceRanges OR the source IP that belongs to
a tag listed in the sourceTags property. The connection does not need
to match both properties for the firewall to apply. For INGRESS traffic,
one of &#39;source_ranges&#39;, &#39;source_tags&#39; or &#39;source_service_accounts&#39; is required. When `null`, the `source_tags` field will be omitted from the resulting object.
  - `target_service_accounts` (`list`): A list of service accounts indicating sets of instances located in the
network that may make network connections as specified in allowed[].
targetServiceAccounts cannot be used at the same time as targetTags or
sourceTags. If neither targetServiceAccounts nor targetTags are
specified, the firewall rule applies to all instances on the specified
network. When `null`, the `target_service_accounts` field will be omitted from the resulting object.
  - `target_tags` (`list`): A list of instance tags indicating sets of instances located in the
network that may make network connections as specified in allowed[].
If no targetTags are specified, the firewall rule applies to all
instances on the specified network. When `null`, the `target_tags` field will be omitted from the resulting object.
  - `allow` (`list[obj]`): The list of ALLOW rules specified by this firewall. Each rule
specifies a protocol and port-range tuple that describes a permitted
connection. When `null`, the `allow` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_firewall.allow.new](#fn-computefirewallallownew) constructor.
  - `deny` (`list[obj]`): The list of DENY rules specified by this firewall. Each rule specifies
a protocol and port-range tuple that describes a denied connection. When `null`, the `deny` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_firewall.deny.new](#fn-computefirewalldenynew) constructor.
  - `log_config` (`list[obj]`): This field denotes the logging options for a particular firewall rule.
If defined, logging is enabled, and logs will be exported to Cloud Logging. When `null`, the `log_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_firewall.log_config.new](#fn-computefirewalllogconfignew) constructor.
  - `timeouts` (`obj`):  When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_firewall.timeouts.new](#fn-computefirewalltimeoutsnew) constructor.

**Returns**:
- A mixin object that injects the new resource into the root Terraform configuration.


### fn newAttrs

```ts
newAttrs()
```


`google.compute_firewall.newAttrs` constructs a new object with attributes and blocks configured for the `compute_firewall`
Terraform resource.

Unlike [google.compute_firewall.new](#fn-computefirewallnew), this function will not inject the `resource`
block into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the
[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.

This is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to
injecting into a complete block.

**Args**:
  - `description` (`string`): An optional description of this resource. Provide this property when
you create the resource. When `null`, the `description` field will be omitted from the resulting object.
  - `destination_ranges` (`list`): If destination ranges are specified, the firewall will apply only to
traffic that has destination IP address in these ranges. These ranges
must be expressed in CIDR format. Only IPv4 is supported. When `null`, the `destination_ranges` field will be omitted from the resulting object.
  - `direction` (`string`): Direction of traffic to which this firewall applies; default is
INGRESS. Note: For INGRESS traffic, it is NOT supported to specify
destinationRanges; For EGRESS traffic, it is NOT supported to specify
&#39;source_ranges&#39; OR &#39;source_tags&#39;. For INGRESS traffic, one of &#39;source_ranges&#39;,
&#39;source_tags&#39; or &#39;source_service_accounts&#39; is required. Possible values: [&#34;INGRESS&#34;, &#34;EGRESS&#34;] When `null`, the `direction` field will be omitted from the resulting object.
  - `disabled` (`bool`): Denotes whether the firewall rule is disabled, i.e not applied to the
network it is associated with. When set to true, the firewall rule is
not enforced and the network behaves as if it did not exist. If this
is unspecified, the firewall rule will be enabled. When `null`, the `disabled` field will be omitted from the resulting object.
  - `enable_logging` (`bool`): This field denotes whether to enable logging for a particular firewall rule. If logging is enabled, logs will be exported to Stackdriver. When `null`, the `enable_logging` field will be omitted from the resulting object.
  - `name` (`string`): Name of the resource. Provided by the client when the resource is
created. The name must be 1-63 characters long, and comply with
RFC1035. Specifically, the name must be 1-63 characters long and match
the regular expression &#39;[a-z]([-a-z0-9]*[a-z0-9])?&#39; which means the
first character must be a lowercase letter, and all following
characters must be a dash, lowercase letter, or digit, except the last
character, which cannot be a dash.
  - `network` (`string`): The name or self_link of the network to attach this firewall to.
  - `priority` (`number`): Priority for this rule. This is an integer between 0 and 65535, both
inclusive. When not specified, the value assumed is 1000. Relative
priorities determine precedence of conflicting rules. Lower value of
priority implies higher precedence (eg, a rule with priority 0 has
higher precedence than a rule with priority 1). DENY rules take
precedence over ALLOW rules having equal priority. When `null`, the `priority` field will be omitted from the resulting object.
  - `project` (`string`):  When `null`, the `project` field will be omitted from the resulting object.
  - `source_ranges` (`list`): If source ranges are specified, the firewall will apply only to
traffic that has source IP address in these ranges. These ranges must
be expressed in CIDR format. One or both of sourceRanges and
sourceTags may be set. If both properties are set, the firewall will
apply to traffic that has source IP address within sourceRanges OR the
source IP that belongs to a tag listed in the sourceTags property. The
connection does not need to match both properties for the firewall to
apply. Only IPv4 is supported. For INGRESS traffic, one of &#39;source_ranges&#39;,
&#39;source_tags&#39; or &#39;source_service_accounts&#39; is required. When `null`, the `source_ranges` field will be omitted from the resulting object.
  - `source_service_accounts` (`list`): If source service accounts are specified, the firewall will apply only
to traffic originating from an instance with a service account in this
list. Source service accounts cannot be used to control traffic to an
instance&#39;s external IP address because service accounts are associated
with an instance, not an IP address. sourceRanges can be set at the
same time as sourceServiceAccounts. If both are set, the firewall will
apply to traffic that has source IP address within sourceRanges OR the
source IP belongs to an instance with service account listed in
sourceServiceAccount. The connection does not need to match both
properties for the firewall to apply. sourceServiceAccounts cannot be
used at the same time as sourceTags or targetTags. For INGRESS traffic,
one of &#39;source_ranges&#39;, &#39;source_tags&#39; or &#39;source_service_accounts&#39; is required. When `null`, the `source_service_accounts` field will be omitted from the resulting object.
  - `source_tags` (`list`): If source tags are specified, the firewall will apply only to traffic
with source IP that belongs to a tag listed in source tags. Source
tags cannot be used to control traffic to an instance&#39;s external IP
address. Because tags are associated with an instance, not an IP
address. One or both of sourceRanges and sourceTags may be set. If
both properties are set, the firewall will apply to traffic that has
source IP address within sourceRanges OR the source IP that belongs to
a tag listed in the sourceTags property. The connection does not need
to match both properties for the firewall to apply. For INGRESS traffic,
one of &#39;source_ranges&#39;, &#39;source_tags&#39; or &#39;source_service_accounts&#39; is required. When `null`, the `source_tags` field will be omitted from the resulting object.
  - `target_service_accounts` (`list`): A list of service accounts indicating sets of instances located in the
network that may make network connections as specified in allowed[].
targetServiceAccounts cannot be used at the same time as targetTags or
sourceTags. If neither targetServiceAccounts nor targetTags are
specified, the firewall rule applies to all instances on the specified
network. When `null`, the `target_service_accounts` field will be omitted from the resulting object.
  - `target_tags` (`list`): A list of instance tags indicating sets of instances located in the
network that may make network connections as specified in allowed[].
If no targetTags are specified, the firewall rule applies to all
instances on the specified network. When `null`, the `target_tags` field will be omitted from the resulting object.
  - `allow` (`list[obj]`): The list of ALLOW rules specified by this firewall. Each rule
specifies a protocol and port-range tuple that describes a permitted
connection. When `null`, the `allow` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_firewall.allow.new](#fn-computefirewallallownew) constructor.
  - `deny` (`list[obj]`): The list of DENY rules specified by this firewall. Each rule specifies
a protocol and port-range tuple that describes a denied connection. When `null`, the `deny` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_firewall.deny.new](#fn-computefirewalldenynew) constructor.
  - `log_config` (`list[obj]`): This field denotes the logging options for a particular firewall rule.
If defined, logging is enabled, and logs will be exported to Cloud Logging. When `null`, the `log_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_firewall.log_config.new](#fn-computefirewalllogconfignew) constructor.
  - `timeouts` (`obj`):  When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_firewall.timeouts.new](#fn-computefirewalltimeoutsnew) constructor.

**Returns**:
  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `compute_firewall` resource into the root Terraform configuration.


### fn withAllow

```ts
withAllow()
```

`google.list[obj].withAllow` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the allow field.

This function will replace the array with the passed in `value`. If you wish to instead append the
passed in value to the existing array, use the [google.list[obj].withAllowMixin](TODO) function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `allow` field.


### fn withAllowMixin

```ts
withAllowMixin()
```

`google.list[obj].withAllowMixin` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the allow field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google.list[obj].withAllow](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `allow` field.


### fn withDeny

```ts
withDeny()
```

`google.list[obj].withDeny` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the deny field.

This function will replace the array with the passed in `value`. If you wish to instead append the
passed in value to the existing array, use the [google.list[obj].withDenyMixin](TODO) function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `deny` field.


### fn withDenyMixin

```ts
withDenyMixin()
```

`google.list[obj].withDenyMixin` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the deny field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google.list[obj].withDeny](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `deny` field.


### fn withDescription

```ts
withDescription()
```

`google.string.withDescription` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the description field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `description` field.


### fn withDestinationRanges

```ts
withDestinationRanges()
```

`google.list.withDestinationRanges` constructs a mixin object that can be merged into the `list`
Terraform resource block to set or update the destination_ranges field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list`): The value to set for the `destination_ranges` field.


### fn withDirection

```ts
withDirection()
```

`google.string.withDirection` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the direction field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `direction` field.


### fn withDisabled

```ts
withDisabled()
```

`google.bool.withDisabled` constructs a mixin object that can be merged into the `bool`
Terraform resource block to set or update the disabled field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`bool`): The value to set for the `disabled` field.


### fn withEnableLogging

```ts
withEnableLogging()
```

`google.bool.withEnableLogging` constructs a mixin object that can be merged into the `bool`
Terraform resource block to set or update the enable_logging field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`bool`): The value to set for the `enable_logging` field.


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


### fn withPriority

```ts
withPriority()
```

`google.number.withPriority` constructs a mixin object that can be merged into the `number`
Terraform resource block to set or update the priority field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`number`): The value to set for the `priority` field.


### fn withProject

```ts
withProject()
```

`google.string.withProject` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the project field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `project` field.


### fn withSourceRanges

```ts
withSourceRanges()
```

`google.list.withSourceRanges` constructs a mixin object that can be merged into the `list`
Terraform resource block to set or update the source_ranges field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list`): The value to set for the `source_ranges` field.


### fn withSourceServiceAccounts

```ts
withSourceServiceAccounts()
```

`google.list.withSourceServiceAccounts` constructs a mixin object that can be merged into the `list`
Terraform resource block to set or update the source_service_accounts field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list`): The value to set for the `source_service_accounts` field.


### fn withSourceTags

```ts
withSourceTags()
```

`google.list.withSourceTags` constructs a mixin object that can be merged into the `list`
Terraform resource block to set or update the source_tags field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list`): The value to set for the `source_tags` field.


### fn withTargetServiceAccounts

```ts
withTargetServiceAccounts()
```

`google.list.withTargetServiceAccounts` constructs a mixin object that can be merged into the `list`
Terraform resource block to set or update the target_service_accounts field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list`): The value to set for the `target_service_accounts` field.


### fn withTargetTags

```ts
withTargetTags()
```

`google.list.withTargetTags` constructs a mixin object that can be merged into the `list`
Terraform resource block to set or update the target_tags field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list`): The value to set for the `target_tags` field.


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


## obj allow



### fn allow.new

```ts
new()
```


`google.compute_firewall.allow.new` constructs a new object with attributes and blocks configured for the `allow`
Terraform sub block.



**Args**:
  - `ports` (`list`): An optional list of ports to which this rule applies. This field
is only applicable for UDP or TCP protocol. Each entry must be
either an integer or a range. If not specified, this rule
applies to connections through any port.

Example inputs include: [&#34;22&#34;], [&#34;80&#34;,&#34;443&#34;], and
[&#34;12345-12349&#34;]. When `null`, the `ports` field will be omitted from the resulting object.
  - `protocol` (`string`): The IP protocol to which this rule applies. The protocol type is
required when creating a firewall rule. This value can either be
one of the following well known protocol strings (tcp, udp,
icmp, esp, ah, sctp, ipip, all), or the IP protocol number.

**Returns**:
  - An attribute object that represents the `allow` sub block.


## obj deny



### fn deny.new

```ts
new()
```


`google.compute_firewall.deny.new` constructs a new object with attributes and blocks configured for the `deny`
Terraform sub block.



**Args**:
  - `ports` (`list`): An optional list of ports to which this rule applies. This field
is only applicable for UDP or TCP protocol. Each entry must be
either an integer or a range. If not specified, this rule
applies to connections through any port.

Example inputs include: [&#34;22&#34;], [&#34;80&#34;,&#34;443&#34;], and
[&#34;12345-12349&#34;]. When `null`, the `ports` field will be omitted from the resulting object.
  - `protocol` (`string`): The IP protocol to which this rule applies. The protocol type is
required when creating a firewall rule. This value can either be
one of the following well known protocol strings (tcp, udp,
icmp, esp, ah, sctp, ipip, all), or the IP protocol number.

**Returns**:
  - An attribute object that represents the `deny` sub block.


## obj log_config



### fn log_config.new

```ts
new()
```


`google.compute_firewall.log_config.new` constructs a new object with attributes and blocks configured for the `log_config`
Terraform sub block.



**Args**:
  - `metadata` (`string`): This field denotes whether to include or exclude metadata for firewall logs. Possible values: [&#34;EXCLUDE_ALL_METADATA&#34;, &#34;INCLUDE_ALL_METADATA&#34;]

**Returns**:
  - An attribute object that represents the `log_config` sub block.


## obj timeouts



### fn timeouts.new

```ts
new()
```


`google.compute_firewall.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`
Terraform sub block.



**Args**:
  - `create` (`string`):  When `null`, the `create` field will be omitted from the resulting object.
  - `delete` (`string`):  When `null`, the `delete` field will be omitted from the resulting object.
  - `update` (`string`):  When `null`, the `update` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `timeouts` sub block.
