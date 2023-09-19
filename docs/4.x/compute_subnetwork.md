---
permalink: /compute_subnetwork/
---

# compute_subnetwork

`compute_subnetwork` represents the `google_compute_subnetwork` Terraform resource.



This package contains functions and utilities for setting up the resource using Jsonnet code.


## Index

* [`fn new()`](#fn-new)
* [`fn newAttrs()`](#fn-newattrs)
* [`fn withDescription()`](#fn-withdescription)
* [`fn withIpCidrRange()`](#fn-withipcidrrange)
* [`fn withIpv6AccessType()`](#fn-withipv6accesstype)
* [`fn withLogConfig()`](#fn-withlogconfig)
* [`fn withLogConfigMixin()`](#fn-withlogconfigmixin)
* [`fn withName()`](#fn-withname)
* [`fn withNetwork()`](#fn-withnetwork)
* [`fn withPrivateIpGoogleAccess()`](#fn-withprivateipgoogleaccess)
* [`fn withPrivateIpv6GoogleAccess()`](#fn-withprivateipv6googleaccess)
* [`fn withProject()`](#fn-withproject)
* [`fn withPurpose()`](#fn-withpurpose)
* [`fn withRegion()`](#fn-withregion)
* [`fn withRole()`](#fn-withrole)
* [`fn withSecondaryIpRange()`](#fn-withsecondaryiprange)
* [`fn withStackType()`](#fn-withstacktype)
* [`fn withTimeouts()`](#fn-withtimeouts)
* [`fn withTimeoutsMixin()`](#fn-withtimeoutsmixin)
* [`obj log_config`](#obj-log_config)
  * [`fn new()`](#fn-log_confignew)
* [`obj timeouts`](#obj-timeouts)
  * [`fn new()`](#fn-timeoutsnew)

## Fields

### fn new

```ts
new()
```


`google.compute_subnetwork.new` injects a new `google_compute_subnetwork` Terraform `resource`
block into the root module document.

Additionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the
resource. For example, if you added a new instance to the root using:

    # arguments omitted for brevity
    google.compute_subnetwork.new('some_id')

You can get the reference to the `id` field of the created `google.compute_subnetwork` using the reference:

    $._ref.google_compute_subnetwork.some_id.get('id')

This is the same as directly entering `"${ google_compute_subnetwork.some_id.id }"` as the value.

NOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,
or `$` to refer to the root object. Instead, make an explicit outer object using `local`.

**Args**:
  - `resourceLabel` (`string`): The name label of the block.
  - `description` (`string`): An optional description of this resource. Provide this property when
you create the resource. This field can be set only at resource
creation time. When `null`, the `description` field will be omitted from the resulting object.
  - `ip_cidr_range` (`string`): The range of internal addresses that are owned by this subnetwork.
Provide this property when you create the subnetwork. For example,
10.0.0.0/8 or 192.168.0.0/16. Ranges must be unique and
non-overlapping within a network. Only IPv4 is supported.
  - `ipv6_access_type` (`string`): The access type of IPv6 address this subnet holds. It&#39;s immutable and can only be specified during creation
or the first time the subnet is updated into IPV4_IPV6 dual stack. If the ipv6_type is EXTERNAL then this subnet
cannot enable direct path. Possible values: [&#34;EXTERNAL&#34;, &#34;INTERNAL&#34;] When `null`, the `ipv6_access_type` field will be omitted from the resulting object.
  - `name` (`string`): The name of the resource, provided by the client when initially
creating the resource. The name must be 1-63 characters long, and
comply with RFC1035. Specifically, the name must be 1-63 characters
long and match the regular expression &#39;[a-z]([-a-z0-9]*[a-z0-9])?&#39; which
means the first character must be a lowercase letter, and all
following characters must be a dash, lowercase letter, or digit,
except the last character, which cannot be a dash.
  - `network` (`string`): The network this subnet belongs to.
Only networks that are in the distributed mode can have subnetworks.
  - `private_ip_google_access` (`bool`): When enabled, VMs in this subnetwork without external IP addresses can
access Google APIs and services by using Private Google Access. When `null`, the `private_ip_google_access` field will be omitted from the resulting object.
  - `private_ipv6_google_access` (`string`): The private IPv6 google access type for the VMs in this subnet. When `null`, the `private_ipv6_google_access` field will be omitted from the resulting object.
  - `project` (`string`): Set the `project` field on the resulting resource block. When `null`, the `project` field will be omitted from the resulting object.
  - `purpose` (`string`): The purpose of the resource. This field can be either &#39;PRIVATE_RFC_1918&#39;, &#39;REGIONAL_MANAGED_PROXY&#39;, &#39;GLOBAL_MANAGED_PROXY&#39;, or &#39;PRIVATE_SERVICE_CONNECT&#39;.
A subnet with purpose set to &#39;REGIONAL_MANAGED_PROXY&#39; is a user-created subnetwork that is reserved for regional Envoy-based load balancers.
A subnetwork in a given region with purpose set to &#39;GLOBAL_MANAGED_PROXY&#39; is a proxy-only subnet and is shared between all the cross-regional Envoy-based load balancers.
A subnetwork with purpose set to &#39;PRIVATE_SERVICE_CONNECT&#39; reserves the subnet for hosting a Private Service Connect published service.
Note that &#39;REGIONAL_MANAGED_PROXY&#39; is the preferred setting for all regional Envoy load balancers.
If unspecified, the purpose defaults to &#39;PRIVATE_RFC_1918&#39;. When `null`, the `purpose` field will be omitted from the resulting object.
  - `region` (`string`): The GCP region for this subnetwork. When `null`, the `region` field will be omitted from the resulting object.
  - `role` (`string`): The role of subnetwork.
Currently, this field is only used when &#39;purpose&#39; is &#39;REGIONAL_MANAGED_PROXY&#39;.
The value can be set to &#39;ACTIVE&#39; or &#39;BACKUP&#39;.
An &#39;ACTIVE&#39; subnetwork is one that is currently being used for Envoy-based load balancers in a region.
A &#39;BACKUP&#39; subnetwork is one that is ready to be promoted to &#39;ACTIVE&#39; or is currently draining. Possible values: [&#34;ACTIVE&#34;, &#34;BACKUP&#34;] When `null`, the `role` field will be omitted from the resulting object.
  - `secondary_ip_range` (`list`): An array of configurations for secondary IP ranges for VM instances
contained in this subnetwork. The primary IP of such VM must belong
to the primary ipCidrRange of the subnetwork. The alias IPs may belong
to either primary or secondary ranges.

**Note**: This field uses [attr-as-block mode](https://www.terraform.io/docs/configuration/attr-as-blocks.html) to avoid
breaking users during the 0.12 upgrade. To explicitly send a list
of zero objects you must use the following syntax:
&#39;example=[]&#39;
For more details about this behavior, see [this section](https://www.terraform.io/docs/configuration/attr-as-blocks.html#defining-a-fixed-object-collection-value). When `null`, the `secondary_ip_range` field will be omitted from the resulting object.
  - `stack_type` (`string`): The stack type for this subnet to identify whether the IPv6 feature is enabled or not.
If not specified IPV4_ONLY will be used. Possible values: [&#34;IPV4_ONLY&#34;, &#34;IPV4_IPV6&#34;] When `null`, the `stack_type` field will be omitted from the resulting object.
  - `log_config` (`list[obj]`): This field denotes the VPC flow logging options for this subnetwork. If
logging is enabled, logs are exported to Cloud Logging. Flow logging
isn&#39;t supported if the subnet &#39;purpose&#39; field is set to subnetwork is
&#39;REGIONAL_MANAGED_PROXY&#39; or &#39;GLOBAL_MANAGED_PROXY&#39;. When `null`, the `log_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_subnetwork.log_config.new](#fn-log_confignew) constructor.
  - `timeouts` (`obj`): Set the `timeouts` field on the resulting resource block. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_subnetwork.timeouts.new](#fn-timeoutsnew) constructor.

**Returns**:
- A mixin object that injects the new resource into the root Terraform configuration.


### fn newAttrs

```ts
newAttrs()
```


`google.compute_subnetwork.newAttrs` constructs a new object with attributes and blocks configured for the `compute_subnetwork`
Terraform resource.

Unlike [google.compute_subnetwork.new](#fn-new), this function will not inject the `resource`
block into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the
[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.

This is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to
injecting into a complete block.

**Args**:
  - `description` (`string`): An optional description of this resource. Provide this property when
you create the resource. This field can be set only at resource
creation time. When `null`, the `description` field will be omitted from the resulting object.
  - `ip_cidr_range` (`string`): The range of internal addresses that are owned by this subnetwork.
Provide this property when you create the subnetwork. For example,
10.0.0.0/8 or 192.168.0.0/16. Ranges must be unique and
non-overlapping within a network. Only IPv4 is supported.
  - `ipv6_access_type` (`string`): The access type of IPv6 address this subnet holds. It&#39;s immutable and can only be specified during creation
or the first time the subnet is updated into IPV4_IPV6 dual stack. If the ipv6_type is EXTERNAL then this subnet
cannot enable direct path. Possible values: [&#34;EXTERNAL&#34;, &#34;INTERNAL&#34;] When `null`, the `ipv6_access_type` field will be omitted from the resulting object.
  - `name` (`string`): The name of the resource, provided by the client when initially
creating the resource. The name must be 1-63 characters long, and
comply with RFC1035. Specifically, the name must be 1-63 characters
long and match the regular expression &#39;[a-z]([-a-z0-9]*[a-z0-9])?&#39; which
means the first character must be a lowercase letter, and all
following characters must be a dash, lowercase letter, or digit,
except the last character, which cannot be a dash.
  - `network` (`string`): The network this subnet belongs to.
Only networks that are in the distributed mode can have subnetworks.
  - `private_ip_google_access` (`bool`): When enabled, VMs in this subnetwork without external IP addresses can
access Google APIs and services by using Private Google Access. When `null`, the `private_ip_google_access` field will be omitted from the resulting object.
  - `private_ipv6_google_access` (`string`): The private IPv6 google access type for the VMs in this subnet. When `null`, the `private_ipv6_google_access` field will be omitted from the resulting object.
  - `project` (`string`): Set the `project` field on the resulting object. When `null`, the `project` field will be omitted from the resulting object.
  - `purpose` (`string`): The purpose of the resource. This field can be either &#39;PRIVATE_RFC_1918&#39;, &#39;REGIONAL_MANAGED_PROXY&#39;, &#39;GLOBAL_MANAGED_PROXY&#39;, or &#39;PRIVATE_SERVICE_CONNECT&#39;.
A subnet with purpose set to &#39;REGIONAL_MANAGED_PROXY&#39; is a user-created subnetwork that is reserved for regional Envoy-based load balancers.
A subnetwork in a given region with purpose set to &#39;GLOBAL_MANAGED_PROXY&#39; is a proxy-only subnet and is shared between all the cross-regional Envoy-based load balancers.
A subnetwork with purpose set to &#39;PRIVATE_SERVICE_CONNECT&#39; reserves the subnet for hosting a Private Service Connect published service.
Note that &#39;REGIONAL_MANAGED_PROXY&#39; is the preferred setting for all regional Envoy load balancers.
If unspecified, the purpose defaults to &#39;PRIVATE_RFC_1918&#39;. When `null`, the `purpose` field will be omitted from the resulting object.
  - `region` (`string`): The GCP region for this subnetwork. When `null`, the `region` field will be omitted from the resulting object.
  - `role` (`string`): The role of subnetwork.
Currently, this field is only used when &#39;purpose&#39; is &#39;REGIONAL_MANAGED_PROXY&#39;.
The value can be set to &#39;ACTIVE&#39; or &#39;BACKUP&#39;.
An &#39;ACTIVE&#39; subnetwork is one that is currently being used for Envoy-based load balancers in a region.
A &#39;BACKUP&#39; subnetwork is one that is ready to be promoted to &#39;ACTIVE&#39; or is currently draining. Possible values: [&#34;ACTIVE&#34;, &#34;BACKUP&#34;] When `null`, the `role` field will be omitted from the resulting object.
  - `secondary_ip_range` (`list`): An array of configurations for secondary IP ranges for VM instances
contained in this subnetwork. The primary IP of such VM must belong
to the primary ipCidrRange of the subnetwork. The alias IPs may belong
to either primary or secondary ranges.

**Note**: This field uses [attr-as-block mode](https://www.terraform.io/docs/configuration/attr-as-blocks.html) to avoid
breaking users during the 0.12 upgrade. To explicitly send a list
of zero objects you must use the following syntax:
&#39;example=[]&#39;
For more details about this behavior, see [this section](https://www.terraform.io/docs/configuration/attr-as-blocks.html#defining-a-fixed-object-collection-value). When `null`, the `secondary_ip_range` field will be omitted from the resulting object.
  - `stack_type` (`string`): The stack type for this subnet to identify whether the IPv6 feature is enabled or not.
If not specified IPV4_ONLY will be used. Possible values: [&#34;IPV4_ONLY&#34;, &#34;IPV4_IPV6&#34;] When `null`, the `stack_type` field will be omitted from the resulting object.
  - `log_config` (`list[obj]`): This field denotes the VPC flow logging options for this subnetwork. If
logging is enabled, logs are exported to Cloud Logging. Flow logging
isn&#39;t supported if the subnet &#39;purpose&#39; field is set to subnetwork is
&#39;REGIONAL_MANAGED_PROXY&#39; or &#39;GLOBAL_MANAGED_PROXY&#39;. When `null`, the `log_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_subnetwork.log_config.new](#fn-log_confignew) constructor.
  - `timeouts` (`obj`): Set the `timeouts` field on the resulting object. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_subnetwork.timeouts.new](#fn-timeoutsnew) constructor.

**Returns**:
  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `compute_subnetwork` resource into the root Terraform configuration.


### fn withDescription

```ts
withDescription()
```

`google.string.withDescription` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the description field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `description` field.


### fn withIpCidrRange

```ts
withIpCidrRange()
```

`google.string.withIpCidrRange` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the ip_cidr_range field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `ip_cidr_range` field.


### fn withIpv6AccessType

```ts
withIpv6AccessType()
```

`google.string.withIpv6AccessType` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the ipv6_access_type field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `ipv6_access_type` field.


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


### fn withPrivateIpGoogleAccess

```ts
withPrivateIpGoogleAccess()
```

`google.bool.withPrivateIpGoogleAccess` constructs a mixin object that can be merged into the `bool`
Terraform resource block to set or update the private_ip_google_access field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`bool`): The value to set for the `private_ip_google_access` field.


### fn withPrivateIpv6GoogleAccess

```ts
withPrivateIpv6GoogleAccess()
```

`google.string.withPrivateIpv6GoogleAccess` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the private_ipv6_google_access field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `private_ipv6_google_access` field.


### fn withProject

```ts
withProject()
```

`google.string.withProject` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the project field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `project` field.


### fn withPurpose

```ts
withPurpose()
```

`google.string.withPurpose` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the purpose field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `purpose` field.


### fn withRegion

```ts
withRegion()
```

`google.string.withRegion` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the region field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `region` field.


### fn withRole

```ts
withRole()
```

`google.string.withRole` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the role field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `role` field.


### fn withSecondaryIpRange

```ts
withSecondaryIpRange()
```

`google.list.withSecondaryIpRange` constructs a mixin object that can be merged into the `list`
Terraform resource block to set or update the secondary_ip_range field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list`): The value to set for the `secondary_ip_range` field.


### fn withStackType

```ts
withStackType()
```

`google.string.withStackType` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the stack_type field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `stack_type` field.


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


## obj log_config



### fn log_config.new

```ts
new()
```


`google.compute_subnetwork.log_config.new` constructs a new object with attributes and blocks configured for the `log_config`
Terraform sub block.



**Args**:
  - `aggregation_interval` (`string`): Can only be specified if VPC flow logging for this subnetwork is enabled.
Toggles the aggregation interval for collecting flow logs. Increasing the
interval time will reduce the amount of generated flow logs for long
lasting connections. Default is an interval of 5 seconds per connection. Default value: &#34;INTERVAL_5_SEC&#34; Possible values: [&#34;INTERVAL_5_SEC&#34;, &#34;INTERVAL_30_SEC&#34;, &#34;INTERVAL_1_MIN&#34;, &#34;INTERVAL_5_MIN&#34;, &#34;INTERVAL_10_MIN&#34;, &#34;INTERVAL_15_MIN&#34;] When `null`, the `aggregation_interval` field will be omitted from the resulting object.
  - `filter_expr` (`string`): Export filter used to define which VPC flow logs should be logged, as as CEL expression. See
https://cloud.google.com/vpc/docs/flow-logs#filtering for details on how to format this field.
The default value is &#39;true&#39;, which evaluates to include everything. When `null`, the `filter_expr` field will be omitted from the resulting object.
  - `flow_sampling` (`number`): Can only be specified if VPC flow logging for this subnetwork is enabled.
The value of the field must be in [0, 1]. Set the sampling rate of VPC
flow logs within the subnetwork where 1.0 means all collected logs are
reported and 0.0 means no logs are reported. Default is 0.5 which means
half of all collected logs are reported. When `null`, the `flow_sampling` field will be omitted from the resulting object.
  - `metadata` (`string`): Can only be specified if VPC flow logging for this subnetwork is enabled.
Configures whether metadata fields should be added to the reported VPC
flow logs. Default value: &#34;INCLUDE_ALL_METADATA&#34; Possible values: [&#34;EXCLUDE_ALL_METADATA&#34;, &#34;INCLUDE_ALL_METADATA&#34;, &#34;CUSTOM_METADATA&#34;] When `null`, the `metadata` field will be omitted from the resulting object.
  - `metadata_fields` (`list`): List of metadata fields that should be added to reported logs.
Can only be specified if VPC flow logs for this subnetwork is enabled and &#34;metadata&#34; is set to CUSTOM_METADATA. When `null`, the `metadata_fields` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `log_config` sub block.


## obj timeouts



### fn timeouts.new

```ts
new()
```


`google.compute_subnetwork.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`
Terraform sub block.



**Args**:
  - `create` (`string`): Set the `create` field on the resulting object. When `null`, the `create` field will be omitted from the resulting object.
  - `delete` (`string`): Set the `delete` field on the resulting object. When `null`, the `delete` field will be omitted from the resulting object.
  - `update` (`string`): Set the `update` field on the resulting object. When `null`, the `update` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `timeouts` sub block.
