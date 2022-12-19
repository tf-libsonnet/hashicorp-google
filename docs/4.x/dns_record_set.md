---
permalink: /dns_record_set/
---

# dns_record_set

`dns_record_set` represents the `google_dns_record_set` Terraform resource.



This package contains functions and utilities for setting up the resource using Jsonnet code.


## Index

* [`fn new()`](#fn-new)
* [`fn newAttrs()`](#fn-newattrs)
* [`fn withManagedZone()`](#fn-withmanagedzone)
* [`fn withName()`](#fn-withname)
* [`fn withProject()`](#fn-withproject)
* [`fn withRoutingPolicy()`](#fn-withroutingpolicy)
* [`fn withRoutingPolicyMixin()`](#fn-withroutingpolicymixin)
* [`fn withRrdatas()`](#fn-withrrdatas)
* [`fn withTtl()`](#fn-withttl)
* [`fn withType()`](#fn-withtype)
* [`obj routing_policy`](#obj-routing_policy)
  * [`fn new()`](#fn-routing_policynew)
  * [`obj routing_policy.geo`](#obj-routing_policygeo)
    * [`fn new()`](#fn-routing_policygeonew)
    * [`obj routing_policy.geo.health_checked_targets`](#obj-routing_policygeohealth_checked_targets)
      * [`fn new()`](#fn-routing_policygeohealth_checked_targetsnew)
      * [`obj routing_policy.geo.health_checked_targets.internal_load_balancers`](#obj-routing_policygeohealth_checked_targetsinternal_load_balancers)
        * [`fn new()`](#fn-routing_policygeohealth_checked_targetsinternal_load_balancersnew)
  * [`obj routing_policy.primary_backup`](#obj-routing_policyprimary_backup)
    * [`fn new()`](#fn-routing_policyprimary_backupnew)
    * [`obj routing_policy.primary_backup.backup_geo`](#obj-routing_policyprimary_backupbackup_geo)
      * [`fn new()`](#fn-routing_policyprimary_backupbackup_geonew)
      * [`obj routing_policy.primary_backup.backup_geo.health_checked_targets`](#obj-routing_policyprimary_backupbackup_geohealth_checked_targets)
        * [`fn new()`](#fn-routing_policyprimary_backupbackup_geohealth_checked_targetsnew)
        * [`obj routing_policy.primary_backup.backup_geo.health_checked_targets.internal_load_balancers`](#obj-routing_policyprimary_backupbackup_geohealth_checked_targetsinternal_load_balancers)
          * [`fn new()`](#fn-routing_policyprimary_backupbackup_geohealth_checked_targetsinternal_load_balancersnew)
    * [`obj routing_policy.primary_backup.primary`](#obj-routing_policyprimary_backupprimary)
      * [`fn new()`](#fn-routing_policyprimary_backupprimarynew)
      * [`obj routing_policy.primary_backup.primary.internal_load_balancers`](#obj-routing_policyprimary_backupprimaryinternal_load_balancers)
        * [`fn new()`](#fn-routing_policyprimary_backupprimaryinternal_load_balancersnew)
  * [`obj routing_policy.wrr`](#obj-routing_policywrr)
    * [`fn new()`](#fn-routing_policywrrnew)
    * [`obj routing_policy.wrr.health_checked_targets`](#obj-routing_policywrrhealth_checked_targets)
      * [`fn new()`](#fn-routing_policywrrhealth_checked_targetsnew)
      * [`obj routing_policy.wrr.health_checked_targets.internal_load_balancers`](#obj-routing_policywrrhealth_checked_targetsinternal_load_balancers)
        * [`fn new()`](#fn-routing_policywrrhealth_checked_targetsinternal_load_balancersnew)

## Fields

### fn new

```ts
new()
```


`google.dns_record_set.new` injects a new `google_dns_record_set` Terraform `resource`
block into the root module document.

Additionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the
resource. For example, if you added a new instance to the root using:

    # arguments omitted for brevity
    google.dns_record_set.new('some_id')

You can get the reference to the `id` field of the created `google.dns_record_set` using the reference:

    $._ref.google_dns_record_set.some_id.get('id')

This is the same as directly entering `"${ google_dns_record_set.some_id.id }"` as the value.

NOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,
or `$` to refer to the root object. Instead, make an explicit outer object using `local`.

**Args**:
  - `resourceLabel` (`string`): The name label of the block.
  - `managed_zone` (`string`): The name of the zone in which this record set will reside.
  - `name` (`string`): The DNS name this record set will apply to.
  - `project` (`string`): The ID of the project in which the resource belongs. If it is not provided, the provider project is used. When `null`, the `project` field will be omitted from the resulting object.
  - `rrdatas` (`list`): The string data for the records in this record set whose meaning depends on the DNS type. For TXT record, if the string data contains spaces, add surrounding \&#34; if you don&#39;t want your string to get split on spaces. To specify a single record value longer than 255 characters such as a TXT record for DKIM, add \&#34;\&#34; inside the Terraform configuration string (e.g. &#34;first255characters\&#34;\&#34;morecharacters&#34;). When `null`, the `rrdatas` field will be omitted from the resulting object.
  - `ttl` (`number`): The time-to-live of this record set (seconds). When `null`, the `ttl` field will be omitted from the resulting object.
  - `type` (`string`): The DNS record set type.
  - `routing_policy` (`list[obj]`): The configuration for steering traffic based on query. You can specify either Weighted Round Robin(WRR) type or Geolocation(GEO) type. When `null`, the `routing_policy` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dns_record_set.routing_policy.new](#fn-routing_policynew) constructor.

**Returns**:
- A mixin object that injects the new resource into the root Terraform configuration.


### fn newAttrs

```ts
newAttrs()
```


`google.dns_record_set.newAttrs` constructs a new object with attributes and blocks configured for the `dns_record_set`
Terraform resource.

Unlike [google.dns_record_set.new](#fn-new), this function will not inject the `resource`
block into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the
[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.

This is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to
injecting into a complete block.

**Args**:
  - `managed_zone` (`string`): The name of the zone in which this record set will reside.
  - `name` (`string`): The DNS name this record set will apply to.
  - `project` (`string`): The ID of the project in which the resource belongs. If it is not provided, the provider project is used. When `null`, the `project` field will be omitted from the resulting object.
  - `rrdatas` (`list`): The string data for the records in this record set whose meaning depends on the DNS type. For TXT record, if the string data contains spaces, add surrounding \&#34; if you don&#39;t want your string to get split on spaces. To specify a single record value longer than 255 characters such as a TXT record for DKIM, add \&#34;\&#34; inside the Terraform configuration string (e.g. &#34;first255characters\&#34;\&#34;morecharacters&#34;). When `null`, the `rrdatas` field will be omitted from the resulting object.
  - `ttl` (`number`): The time-to-live of this record set (seconds). When `null`, the `ttl` field will be omitted from the resulting object.
  - `type` (`string`): The DNS record set type.
  - `routing_policy` (`list[obj]`): The configuration for steering traffic based on query. You can specify either Weighted Round Robin(WRR) type or Geolocation(GEO) type. When `null`, the `routing_policy` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dns_record_set.routing_policy.new](#fn-routing_policynew) constructor.

**Returns**:
  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `dns_record_set` resource into the root Terraform configuration.


### fn withManagedZone

```ts
withManagedZone()
```

`google.string.withManagedZone` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the managed_zone field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `managed_zone` field.


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


### fn withRoutingPolicy

```ts
withRoutingPolicy()
```

`google.list[obj].withRoutingPolicy` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the routing_policy field.

This function will replace the array with the passed in `value`. If you wish to instead append the
passed in value to the existing array, use the [google.list[obj].withRoutingPolicyMixin](TODO) function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `routing_policy` field.


### fn withRoutingPolicyMixin

```ts
withRoutingPolicyMixin()
```

`google.list[obj].withRoutingPolicyMixin` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the routing_policy field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google.list[obj].withRoutingPolicy](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `routing_policy` field.


### fn withRrdatas

```ts
withRrdatas()
```

`google.list.withRrdatas` constructs a mixin object that can be merged into the `list`
Terraform resource block to set or update the rrdatas field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list`): The value to set for the `rrdatas` field.


### fn withTtl

```ts
withTtl()
```

`google.number.withTtl` constructs a mixin object that can be merged into the `number`
Terraform resource block to set or update the ttl field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`number`): The value to set for the `ttl` field.


### fn withType

```ts
withType()
```

`google.string.withType` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the type field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `type` field.


## obj routing_policy



### fn routing_policy.new

```ts
new()
```


`google.dns_record_set.routing_policy.new` constructs a new object with attributes and blocks configured for the `routing_policy`
Terraform sub block.



**Args**:
  - `enable_geo_fencing` (`bool`): Specifies whether to enable fencing for geo queries. When `null`, the `enable_geo_fencing` field will be omitted from the resulting object.
  - `geo` (`list[obj]`): The configuration for Geo location based routing policy. When `null`, the `geo` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dns_record_set.routing_policy.geo.new](#fn-routing_policygeonew) constructor.
  - `primary_backup` (`list[obj]`): The configuration for a primary-backup policy with global to regional failover. Queries are responded to with the global primary targets, but if none of the primary targets are healthy, then we fallback to a regional failover policy. When `null`, the `primary_backup` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dns_record_set.routing_policy.primary_backup.new](#fn-routing_policyprimary_backupnew) constructor.
  - `wrr` (`list[obj]`): The configuration for Weighted Round Robin based routing policy. When `null`, the `wrr` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dns_record_set.routing_policy.wrr.new](#fn-routing_policywrrnew) constructor.

**Returns**:
  - An attribute object that represents the `routing_policy` sub block.


## obj routing_policy.geo



### fn routing_policy.geo.new

```ts
new()
```


`google.dns_record_set.routing_policy.geo.new` constructs a new object with attributes and blocks configured for the `geo`
Terraform sub block.



**Args**:
  - `location` (`string`): The location name defined in Google Cloud.
  - `rrdatas` (`list`):  When `null`, the `rrdatas` field will be omitted from the resulting object.
  - `health_checked_targets` (`list[obj]`): For A and AAAA types only. The list of targets to be health checked. These can be specified along with `rrdatas` within this item. When `null`, the `health_checked_targets` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dns_record_set.routing_policy.geo.health_checked_targets.new](#fn-routing_policyrouting_policyhealth_checked_targetsnew) constructor.

**Returns**:
  - An attribute object that represents the `geo` sub block.


## obj routing_policy.geo.health_checked_targets



### fn routing_policy.geo.health_checked_targets.new

```ts
new()
```


`google.dns_record_set.routing_policy.geo.health_checked_targets.new` constructs a new object with attributes and blocks configured for the `health_checked_targets`
Terraform sub block.



**Args**:
  - `internal_load_balancers` (`list[obj]`): The list of internal load balancers to health check. When `null`, the `internal_load_balancers` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dns_record_set.routing_policy.geo.health_checked_targets.internal_load_balancers.new](#fn-routing_policyrouting_policygeointernal_load_balancersnew) constructor.

**Returns**:
  - An attribute object that represents the `health_checked_targets` sub block.


## obj routing_policy.geo.health_checked_targets.internal_load_balancers



### fn routing_policy.geo.health_checked_targets.internal_load_balancers.new

```ts
new()
```


`google.dns_record_set.routing_policy.geo.health_checked_targets.internal_load_balancers.new` constructs a new object with attributes and blocks configured for the `internal_load_balancers`
Terraform sub block.



**Args**:
  - `ip_address` (`string`): The frontend IP address of the load balancer.
  - `ip_protocol` (`string`): The configured IP protocol of the load balancer. This value is case-sensitive. Possible values: [&#34;tcp&#34;, &#34;udp&#34;]
  - `load_balancer_type` (`string`): The type of load balancer. This value is case-sensitive. Possible values: [&#34;regionalL4ilb&#34;]
  - `network_url` (`string`): The fully qualified url of the network in which the load balancer belongs. This should be formatted like `https://www.googleapis.com/compute/v1/projects/{project}/global/networks/{network}`.
  - `port` (`string`): The configured port of the load balancer.
  - `project` (`string`): The ID of the project in which the load balancer belongs.
  - `region` (`string`): The region of the load balancer. Only needed for regional load balancers. When `null`, the `region` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `internal_load_balancers` sub block.


## obj routing_policy.primary_backup



### fn routing_policy.primary_backup.new

```ts
new()
```


`google.dns_record_set.routing_policy.primary_backup.new` constructs a new object with attributes and blocks configured for the `primary_backup`
Terraform sub block.



**Args**:
  - `enable_geo_fencing_for_backups` (`bool`): Specifies whether to enable fencing for backup geo queries. When `null`, the `enable_geo_fencing_for_backups` field will be omitted from the resulting object.
  - `trickle_ratio` (`number`): Specifies the percentage of traffic to send to the backup targets even when the primary targets are healthy. When `null`, the `trickle_ratio` field will be omitted from the resulting object.
  - `backup_geo` (`list[obj]`): The backup geo targets, which provide a regional failover policy for the otherwise global primary targets. When `null`, the `backup_geo` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dns_record_set.routing_policy.primary_backup.backup_geo.new](#fn-routing_policyrouting_policybackup_geonew) constructor.
  - `primary` (`list[obj]`): The list of global primary targets to be health checked. When `null`, the `primary` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dns_record_set.routing_policy.primary_backup.primary.new](#fn-routing_policyrouting_policyprimarynew) constructor.

**Returns**:
  - An attribute object that represents the `primary_backup` sub block.


## obj routing_policy.primary_backup.backup_geo



### fn routing_policy.primary_backup.backup_geo.new

```ts
new()
```


`google.dns_record_set.routing_policy.primary_backup.backup_geo.new` constructs a new object with attributes and blocks configured for the `backup_geo`
Terraform sub block.



**Args**:
  - `location` (`string`): The location name defined in Google Cloud.
  - `rrdatas` (`list`):  When `null`, the `rrdatas` field will be omitted from the resulting object.
  - `health_checked_targets` (`list[obj]`): For A and AAAA types only. The list of targets to be health checked. These can be specified along with `rrdatas` within this item. When `null`, the `health_checked_targets` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dns_record_set.routing_policy.primary_backup.backup_geo.health_checked_targets.new](#fn-routing_policyrouting_policyprimary_backuphealth_checked_targetsnew) constructor.

**Returns**:
  - An attribute object that represents the `backup_geo` sub block.


## obj routing_policy.primary_backup.backup_geo.health_checked_targets



### fn routing_policy.primary_backup.backup_geo.health_checked_targets.new

```ts
new()
```


`google.dns_record_set.routing_policy.primary_backup.backup_geo.health_checked_targets.new` constructs a new object with attributes and blocks configured for the `health_checked_targets`
Terraform sub block.



**Args**:
  - `internal_load_balancers` (`list[obj]`): The list of internal load balancers to health check. When `null`, the `internal_load_balancers` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dns_record_set.routing_policy.primary_backup.backup_geo.health_checked_targets.internal_load_balancers.new](#fn-routing_policyrouting_policyprimary_backupbackup_geointernal_load_balancersnew) constructor.

**Returns**:
  - An attribute object that represents the `health_checked_targets` sub block.


## obj routing_policy.primary_backup.backup_geo.health_checked_targets.internal_load_balancers



### fn routing_policy.primary_backup.backup_geo.health_checked_targets.internal_load_balancers.new

```ts
new()
```


`google.dns_record_set.routing_policy.primary_backup.backup_geo.health_checked_targets.internal_load_balancers.new` constructs a new object with attributes and blocks configured for the `internal_load_balancers`
Terraform sub block.



**Args**:
  - `ip_address` (`string`): The frontend IP address of the load balancer.
  - `ip_protocol` (`string`): The configured IP protocol of the load balancer. This value is case-sensitive. Possible values: [&#34;tcp&#34;, &#34;udp&#34;]
  - `load_balancer_type` (`string`): The type of load balancer. This value is case-sensitive. Possible values: [&#34;regionalL4ilb&#34;]
  - `network_url` (`string`): The fully qualified url of the network in which the load balancer belongs. This should be formatted like `https://www.googleapis.com/compute/v1/projects/{project}/global/networks/{network}`.
  - `port` (`string`): The configured port of the load balancer.
  - `project` (`string`): The ID of the project in which the load balancer belongs.
  - `region` (`string`): The region of the load balancer. Only needed for regional load balancers. When `null`, the `region` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `internal_load_balancers` sub block.


## obj routing_policy.primary_backup.primary



### fn routing_policy.primary_backup.primary.new

```ts
new()
```


`google.dns_record_set.routing_policy.primary_backup.primary.new` constructs a new object with attributes and blocks configured for the `primary`
Terraform sub block.



**Args**:
  - `internal_load_balancers` (`list[obj]`): The list of internal load balancers to health check. When `null`, the `internal_load_balancers` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dns_record_set.routing_policy.primary_backup.primary.internal_load_balancers.new](#fn-routing_policyrouting_policyprimary_backupinternal_load_balancersnew) constructor.

**Returns**:
  - An attribute object that represents the `primary` sub block.


## obj routing_policy.primary_backup.primary.internal_load_balancers



### fn routing_policy.primary_backup.primary.internal_load_balancers.new

```ts
new()
```


`google.dns_record_set.routing_policy.primary_backup.primary.internal_load_balancers.new` constructs a new object with attributes and blocks configured for the `internal_load_balancers`
Terraform sub block.



**Args**:
  - `ip_address` (`string`): The frontend IP address of the load balancer.
  - `ip_protocol` (`string`): The configured IP protocol of the load balancer. This value is case-sensitive. Possible values: [&#34;tcp&#34;, &#34;udp&#34;]
  - `load_balancer_type` (`string`): The type of load balancer. This value is case-sensitive. Possible values: [&#34;regionalL4ilb&#34;]
  - `network_url` (`string`): The fully qualified url of the network in which the load balancer belongs. This should be formatted like `https://www.googleapis.com/compute/v1/projects/{project}/global/networks/{network}`.
  - `port` (`string`): The configured port of the load balancer.
  - `project` (`string`): The ID of the project in which the load balancer belongs.
  - `region` (`string`): The region of the load balancer. Only needed for regional load balancers. When `null`, the `region` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `internal_load_balancers` sub block.


## obj routing_policy.wrr



### fn routing_policy.wrr.new

```ts
new()
```


`google.dns_record_set.routing_policy.wrr.new` constructs a new object with attributes and blocks configured for the `wrr`
Terraform sub block.



**Args**:
  - `rrdatas` (`list`):  When `null`, the `rrdatas` field will be omitted from the resulting object.
  - `weight` (`number`): The ratio of traffic routed to the target.
  - `health_checked_targets` (`list[obj]`): The list of targets to be health checked. Note that if DNSSEC is enabled for this zone, only one of `rrdatas` or `health_checked_targets` can be set. When `null`, the `health_checked_targets` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dns_record_set.routing_policy.wrr.health_checked_targets.new](#fn-routing_policyrouting_policyhealth_checked_targetsnew) constructor.

**Returns**:
  - An attribute object that represents the `wrr` sub block.


## obj routing_policy.wrr.health_checked_targets



### fn routing_policy.wrr.health_checked_targets.new

```ts
new()
```


`google.dns_record_set.routing_policy.wrr.health_checked_targets.new` constructs a new object with attributes and blocks configured for the `health_checked_targets`
Terraform sub block.



**Args**:
  - `internal_load_balancers` (`list[obj]`): The list of internal load balancers to health check. When `null`, the `internal_load_balancers` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dns_record_set.routing_policy.wrr.health_checked_targets.internal_load_balancers.new](#fn-routing_policyrouting_policywrrinternal_load_balancersnew) constructor.

**Returns**:
  - An attribute object that represents the `health_checked_targets` sub block.


## obj routing_policy.wrr.health_checked_targets.internal_load_balancers



### fn routing_policy.wrr.health_checked_targets.internal_load_balancers.new

```ts
new()
```


`google.dns_record_set.routing_policy.wrr.health_checked_targets.internal_load_balancers.new` constructs a new object with attributes and blocks configured for the `internal_load_balancers`
Terraform sub block.



**Args**:
  - `ip_address` (`string`): The frontend IP address of the load balancer.
  - `ip_protocol` (`string`): The configured IP protocol of the load balancer. This value is case-sensitive. Possible values: [&#34;tcp&#34;, &#34;udp&#34;]
  - `load_balancer_type` (`string`): The type of load balancer. This value is case-sensitive. Possible values: [&#34;regionalL4ilb&#34;]
  - `network_url` (`string`): The fully qualified url of the network in which the load balancer belongs. This should be formatted like `https://www.googleapis.com/compute/v1/projects/{project}/global/networks/{network}`.
  - `port` (`string`): The configured port of the load balancer.
  - `project` (`string`): The ID of the project in which the load balancer belongs.
  - `region` (`string`): The region of the load balancer. Only needed for regional load balancers. When `null`, the `region` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `internal_load_balancers` sub block.
