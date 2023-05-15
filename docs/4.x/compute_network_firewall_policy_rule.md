---
permalink: /compute_network_firewall_policy_rule/
---

# compute_network_firewall_policy_rule

`compute_network_firewall_policy_rule` represents the `google_compute_network_firewall_policy_rule` Terraform resource.



This package contains functions and utilities for setting up the resource using Jsonnet code.


## Index

* [`fn new()`](#fn-new)
* [`fn newAttrs()`](#fn-newattrs)
* [`fn withAction()`](#fn-withaction)
* [`fn withDescription()`](#fn-withdescription)
* [`fn withDirection()`](#fn-withdirection)
* [`fn withDisabled()`](#fn-withdisabled)
* [`fn withEnableLogging()`](#fn-withenablelogging)
* [`fn withFirewallPolicy()`](#fn-withfirewallpolicy)
* [`fn withMatch()`](#fn-withmatch)
* [`fn withMatchMixin()`](#fn-withmatchmixin)
* [`fn withPriority()`](#fn-withpriority)
* [`fn withProject()`](#fn-withproject)
* [`fn withRuleName()`](#fn-withrulename)
* [`fn withTargetSecureTags()`](#fn-withtargetsecuretags)
* [`fn withTargetSecureTagsMixin()`](#fn-withtargetsecuretagsmixin)
* [`fn withTargetServiceAccounts()`](#fn-withtargetserviceaccounts)
* [`fn withTimeouts()`](#fn-withtimeouts)
* [`fn withTimeoutsMixin()`](#fn-withtimeoutsmixin)
* [`obj match`](#obj-match)
  * [`fn new()`](#fn-matchnew)
  * [`obj match.layer4_configs`](#obj-matchlayer4_configs)
    * [`fn new()`](#fn-matchlayer4_configsnew)
  * [`obj match.src_secure_tags`](#obj-matchsrc_secure_tags)
    * [`fn new()`](#fn-matchsrc_secure_tagsnew)
* [`obj target_secure_tags`](#obj-target_secure_tags)
  * [`fn new()`](#fn-target_secure_tagsnew)
* [`obj timeouts`](#obj-timeouts)
  * [`fn new()`](#fn-timeoutsnew)

## Fields

### fn new

```ts
new()
```


`google.compute_network_firewall_policy_rule.new` injects a new `google_compute_network_firewall_policy_rule` Terraform `resource`
block into the root module document.

Additionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the
resource. For example, if you added a new instance to the root using:

    # arguments omitted for brevity
    google.compute_network_firewall_policy_rule.new('some_id')

You can get the reference to the `id` field of the created `google.compute_network_firewall_policy_rule` using the reference:

    $._ref.google_compute_network_firewall_policy_rule.some_id.get('id')

This is the same as directly entering `"${ google_compute_network_firewall_policy_rule.some_id.id }"` as the value.

NOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,
or `$` to refer to the root object. Instead, make an explicit outer object using `local`.

**Args**:
  - `resourceLabel` (`string`): The name label of the block.
  - `action` (`string`): The Action to perform when the client connection triggers the rule. Can currently be either &#34;allow&#34; or &#34;deny()&#34; where valid values for status are 403, 404, and 502.
  - `description` (`string`): An optional description for this resource. When `null`, the `description` field will be omitted from the resulting object.
  - `direction` (`string`): The direction in which this rule applies. Possible values: INGRESS, EGRESS
  - `disabled` (`bool`): Denotes whether the firewall policy rule is disabled. When set to true, the firewall policy rule is not enforced and traffic behaves as if it did not exist. If this is unspecified, the firewall policy rule will be enabled. When `null`, the `disabled` field will be omitted from the resulting object.
  - `enable_logging` (`bool`): Denotes whether to enable logging for a particular rule. If logging is enabled, logs will be exported to the configured export destination in Stackdriver. Logs may be exported to BigQuery or Pub/Sub. Note: you cannot enable logging on &#34;goto_next&#34; rules. When `null`, the `enable_logging` field will be omitted from the resulting object.
  - `firewall_policy` (`string`): The firewall policy of the resource.
  - `priority` (`number`): An integer indicating the priority of a rule in the list. The priority must be a positive value between 0 and 2147483647. Rules are evaluated from highest to lowest priority where 0 is the highest priority and 2147483647 is the lowest prority.
  - `project` (`string`): The project for the resource When `null`, the `project` field will be omitted from the resulting object.
  - `rule_name` (`string`): An optional name for the rule. This field is not a unique identifier and can be updated. When `null`, the `rule_name` field will be omitted from the resulting object.
  - `target_service_accounts` (`list`): A list of service accounts indicating the sets of instances that are applied with this rule. When `null`, the `target_service_accounts` field will be omitted from the resulting object.
  - `match` (`list[obj]`): A match condition that incoming traffic is evaluated against. If it evaluates to true, the corresponding &#39;action&#39; is enforced. When `null`, the `match` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_network_firewall_policy_rule.match.new](#fn-matchnew) constructor.
  - `target_secure_tags` (`list[obj]`): A list of secure tags that controls which instances the firewall rule applies to. If &lt;code&gt;targetSecureTag&lt;/code&gt; are specified, then the firewall rule applies only to instances in the VPC network that have one of those EFFECTIVE secure tags, if all the target_secure_tag are in INEFFECTIVE state, then this rule will be ignored. &lt;code&gt;targetSecureTag&lt;/code&gt; may not be set at the same time as &lt;code&gt;targetServiceAccounts&lt;/code&gt;. If neither &lt;code&gt;targetServiceAccounts&lt;/code&gt; nor &lt;code&gt;targetSecureTag&lt;/code&gt; are specified, the firewall rule applies to all instances on the specified network. Maximum number of target label tags allowed is 256. When `null`, the `target_secure_tags` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_network_firewall_policy_rule.target_secure_tags.new](#fn-target_secure_tagsnew) constructor.
  - `timeouts` (`obj`): Set the `timeouts` field on the resulting resource block. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_network_firewall_policy_rule.timeouts.new](#fn-timeoutsnew) constructor.

**Returns**:
- A mixin object that injects the new resource into the root Terraform configuration.


### fn newAttrs

```ts
newAttrs()
```


`google.compute_network_firewall_policy_rule.newAttrs` constructs a new object with attributes and blocks configured for the `compute_network_firewall_policy_rule`
Terraform resource.

Unlike [google.compute_network_firewall_policy_rule.new](#fn-new), this function will not inject the `resource`
block into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the
[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.

This is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to
injecting into a complete block.

**Args**:
  - `action` (`string`): The Action to perform when the client connection triggers the rule. Can currently be either &#34;allow&#34; or &#34;deny()&#34; where valid values for status are 403, 404, and 502.
  - `description` (`string`): An optional description for this resource. When `null`, the `description` field will be omitted from the resulting object.
  - `direction` (`string`): The direction in which this rule applies. Possible values: INGRESS, EGRESS
  - `disabled` (`bool`): Denotes whether the firewall policy rule is disabled. When set to true, the firewall policy rule is not enforced and traffic behaves as if it did not exist. If this is unspecified, the firewall policy rule will be enabled. When `null`, the `disabled` field will be omitted from the resulting object.
  - `enable_logging` (`bool`): Denotes whether to enable logging for a particular rule. If logging is enabled, logs will be exported to the configured export destination in Stackdriver. Logs may be exported to BigQuery or Pub/Sub. Note: you cannot enable logging on &#34;goto_next&#34; rules. When `null`, the `enable_logging` field will be omitted from the resulting object.
  - `firewall_policy` (`string`): The firewall policy of the resource.
  - `priority` (`number`): An integer indicating the priority of a rule in the list. The priority must be a positive value between 0 and 2147483647. Rules are evaluated from highest to lowest priority where 0 is the highest priority and 2147483647 is the lowest prority.
  - `project` (`string`): The project for the resource When `null`, the `project` field will be omitted from the resulting object.
  - `rule_name` (`string`): An optional name for the rule. This field is not a unique identifier and can be updated. When `null`, the `rule_name` field will be omitted from the resulting object.
  - `target_service_accounts` (`list`): A list of service accounts indicating the sets of instances that are applied with this rule. When `null`, the `target_service_accounts` field will be omitted from the resulting object.
  - `match` (`list[obj]`): A match condition that incoming traffic is evaluated against. If it evaluates to true, the corresponding &#39;action&#39; is enforced. When `null`, the `match` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_network_firewall_policy_rule.match.new](#fn-matchnew) constructor.
  - `target_secure_tags` (`list[obj]`): A list of secure tags that controls which instances the firewall rule applies to. If &lt;code&gt;targetSecureTag&lt;/code&gt; are specified, then the firewall rule applies only to instances in the VPC network that have one of those EFFECTIVE secure tags, if all the target_secure_tag are in INEFFECTIVE state, then this rule will be ignored. &lt;code&gt;targetSecureTag&lt;/code&gt; may not be set at the same time as &lt;code&gt;targetServiceAccounts&lt;/code&gt;. If neither &lt;code&gt;targetServiceAccounts&lt;/code&gt; nor &lt;code&gt;targetSecureTag&lt;/code&gt; are specified, the firewall rule applies to all instances on the specified network. Maximum number of target label tags allowed is 256. When `null`, the `target_secure_tags` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_network_firewall_policy_rule.target_secure_tags.new](#fn-target_secure_tagsnew) constructor.
  - `timeouts` (`obj`): Set the `timeouts` field on the resulting object. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_network_firewall_policy_rule.timeouts.new](#fn-timeoutsnew) constructor.

**Returns**:
  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `compute_network_firewall_policy_rule` resource into the root Terraform configuration.


### fn withAction

```ts
withAction()
```

`google.string.withAction` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the action field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `action` field.


### fn withDescription

```ts
withDescription()
```

`google.string.withDescription` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the description field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `description` field.


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


### fn withFirewallPolicy

```ts
withFirewallPolicy()
```

`google.string.withFirewallPolicy` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the firewall_policy field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `firewall_policy` field.


### fn withMatch

```ts
withMatch()
```

`google.list[obj].withMatch` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the match field.

This function will replace the array with the passed in `value`. If you wish to instead append the
passed in value to the existing array, use the [google.list[obj].withMatchMixin](TODO) function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `match` field.


### fn withMatchMixin

```ts
withMatchMixin()
```

`google.list[obj].withMatchMixin` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the match field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google.list[obj].withMatch](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `match` field.


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


### fn withRuleName

```ts
withRuleName()
```

`google.string.withRuleName` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the rule_name field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `rule_name` field.


### fn withTargetSecureTags

```ts
withTargetSecureTags()
```

`google.list[obj].withTargetSecureTags` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the target_secure_tags field.

This function will replace the array with the passed in `value`. If you wish to instead append the
passed in value to the existing array, use the [google.list[obj].withTargetSecureTagsMixin](TODO) function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `target_secure_tags` field.


### fn withTargetSecureTagsMixin

```ts
withTargetSecureTagsMixin()
```

`google.list[obj].withTargetSecureTagsMixin` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the target_secure_tags field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google.list[obj].withTargetSecureTags](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `target_secure_tags` field.


### fn withTargetServiceAccounts

```ts
withTargetServiceAccounts()
```

`google.list.withTargetServiceAccounts` constructs a mixin object that can be merged into the `list`
Terraform resource block to set or update the target_service_accounts field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list`): The value to set for the `target_service_accounts` field.


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


## obj match



### fn match.new

```ts
new()
```


`google.compute_network_firewall_policy_rule.match.new` constructs a new object with attributes and blocks configured for the `match`
Terraform sub block.



**Args**:
  - `dest_address_groups` (`list`): Address groups which should be matched against the traffic destination. Maximum number of destination address groups is 10. Destination address groups is only supported in Egress rules. When `null`, the `dest_address_groups` field will be omitted from the resulting object.
  - `dest_fqdns` (`list`): Domain names that will be used to match against the resolved domain name of destination of traffic. Can only be specified if DIRECTION is egress. When `null`, the `dest_fqdns` field will be omitted from the resulting object.
  - `dest_ip_ranges` (`list`): CIDR IP address range. Maximum number of destination CIDR IP ranges allowed is 5000. When `null`, the `dest_ip_ranges` field will be omitted from the resulting object.
  - `dest_region_codes` (`list`): The Unicode country codes whose IP addresses will be used to match against the source of traffic. Can only be specified if DIRECTION is egress. When `null`, the `dest_region_codes` field will be omitted from the resulting object.
  - `dest_threat_intelligences` (`list`): Name of the Google Cloud Threat Intelligence list. When `null`, the `dest_threat_intelligences` field will be omitted from the resulting object.
  - `src_address_groups` (`list`): Address groups which should be matched against the traffic source. Maximum number of source address groups is 10. Source address groups is only supported in Ingress rules. When `null`, the `src_address_groups` field will be omitted from the resulting object.
  - `src_fqdns` (`list`): Domain names that will be used to match against the resolved domain name of source of traffic. Can only be specified if DIRECTION is ingress. When `null`, the `src_fqdns` field will be omitted from the resulting object.
  - `src_ip_ranges` (`list`): CIDR IP address range. Maximum number of source CIDR IP ranges allowed is 5000. When `null`, the `src_ip_ranges` field will be omitted from the resulting object.
  - `src_region_codes` (`list`): The Unicode country codes whose IP addresses will be used to match against the source of traffic. Can only be specified if DIRECTION is ingress. When `null`, the `src_region_codes` field will be omitted from the resulting object.
  - `src_threat_intelligences` (`list`): Name of the Google Cloud Threat Intelligence list. When `null`, the `src_threat_intelligences` field will be omitted from the resulting object.
  - `layer4_configs` (`list[obj]`): Pairs of IP protocols and ports that the rule should match. When `null`, the `layer4_configs` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_network_firewall_policy_rule.match.layer4_configs.new](#fn-matchlayer4_configsnew) constructor.
  - `src_secure_tags` (`list[obj]`): List of secure tag values, which should be matched at the source of the traffic. For INGRESS rule, if all the &lt;code&gt;srcSecureTag&lt;/code&gt; are INEFFECTIVE, and there is no &lt;code&gt;srcIpRange&lt;/code&gt;, this rule will be ignored. Maximum number of source tag values allowed is 256. When `null`, the `src_secure_tags` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_network_firewall_policy_rule.match.src_secure_tags.new](#fn-matchsrc_secure_tagsnew) constructor.

**Returns**:
  - An attribute object that represents the `match` sub block.


## obj match.layer4_configs



### fn match.layer4_configs.new

```ts
new()
```


`google.compute_network_firewall_policy_rule.match.layer4_configs.new` constructs a new object with attributes and blocks configured for the `layer4_configs`
Terraform sub block.



**Args**:
  - `ip_protocol` (`string`): The IP protocol to which this rule applies. The protocol type is required when creating a firewall rule. This value can either be one of the following well known protocol strings (`tcp`, `udp`, `icmp`, `esp`, `ah`, `ipip`, `sctp`), or the IP protocol number.
  - `ports` (`list`): An optional list of ports to which this rule applies. This field is only applicable for UDP or TCP protocol. Each entry must be either an integer or a range. If not specified, this rule applies to connections through any port. Example inputs include: ``. When `null`, the `ports` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `layer4_configs` sub block.


## obj match.src_secure_tags



### fn match.src_secure_tags.new

```ts
new()
```


`google.compute_network_firewall_policy_rule.match.src_secure_tags.new` constructs a new object with attributes and blocks configured for the `src_secure_tags`
Terraform sub block.



**Args**:
  - `name` (`string`): Name of the secure tag, created with TagManager&#39;s TagValue API. @pattern tagValues/[0-9]&#43;

**Returns**:
  - An attribute object that represents the `src_secure_tags` sub block.


## obj target_secure_tags



### fn target_secure_tags.new

```ts
new()
```


`google.compute_network_firewall_policy_rule.target_secure_tags.new` constructs a new object with attributes and blocks configured for the `target_secure_tags`
Terraform sub block.



**Args**:
  - `name` (`string`): Name of the secure tag, created with TagManager&#39;s TagValue API. @pattern tagValues/[0-9]&#43;

**Returns**:
  - An attribute object that represents the `target_secure_tags` sub block.


## obj timeouts



### fn timeouts.new

```ts
new()
```


`google.compute_network_firewall_policy_rule.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`
Terraform sub block.



**Args**:
  - `create` (`string`): Set the `create` field on the resulting object. When `null`, the `create` field will be omitted from the resulting object.
  - `delete` (`string`): Set the `delete` field on the resulting object. When `null`, the `delete` field will be omitted from the resulting object.
  - `update` (`string`): Set the `update` field on the resulting object. When `null`, the `update` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `timeouts` sub block.
