---
permalink: /apigee_instance/
---

# apigee_instance

`apigee_instance` represents the `google_apigee_instance` Terraform resource.



This package contains functions and utilities for setting up the resource using Jsonnet code.


## Index

* [`fn new()`](#fn-new)
* [`fn newAttrs()`](#fn-newattrs)
* [`fn withConsumerAcceptList()`](#fn-withconsumeracceptlist)
* [`fn withDescription()`](#fn-withdescription)
* [`fn withDiskEncryptionKeyName()`](#fn-withdiskencryptionkeyname)
* [`fn withDisplayName()`](#fn-withdisplayname)
* [`fn withIpRange()`](#fn-withiprange)
* [`fn withLocation()`](#fn-withlocation)
* [`fn withName()`](#fn-withname)
* [`fn withOrgId()`](#fn-withorgid)
* [`fn withPeeringCidrRange()`](#fn-withpeeringcidrrange)
* [`fn withTimeouts()`](#fn-withtimeouts)
* [`fn withTimeoutsMixin()`](#fn-withtimeoutsmixin)
* [`obj timeouts`](#obj-timeouts)
  * [`fn new()`](#fn-timeoutsnew)

## Fields

### fn new

```ts
new()
```


`google.apigee_instance.new` injects a new `google_apigee_instance` Terraform `resource`
block into the root module document.

Additionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the
resource. For example, if you added a new instance to the root using:

    # arguments omitted for brevity
    google.apigee_instance.new('some_id')

You can get the reference to the `id` field of the created `google.apigee_instance` using the reference:

    $._ref.google_apigee_instance.some_id.get('id')

This is the same as directly entering `"${ google_apigee_instance.some_id.id }"` as the value.

NOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,
or `$` to refer to the root object. Instead, make an explicit outer object using `local`.

**Args**:
  - `resourceLabel` (`string`): The name label of the block.
  - `consumer_accept_list` (`list`): Optional. Customer accept list represents the list of projects (id/number) on customer
side that can privately connect to the service attachment. It is an optional field
which the customers can provide during the instance creation. By default, the customer
project associated with the Apigee organization will be included to the list. When `null`, the `consumer_accept_list` field will be omitted from the resulting object.
  - `description` (`string`): Description of the instance. When `null`, the `description` field will be omitted from the resulting object.
  - `disk_encryption_key_name` (`string`): Customer Managed Encryption Key (CMEK) used for disk and volume encryption. Required for Apigee paid subscriptions only.
Use the following format: &#39;projects/([^/]&#43;)/locations/([^/]&#43;)/keyRings/([^/]&#43;)/cryptoKeys/([^/]&#43;)&#39; When `null`, the `disk_encryption_key_name` field will be omitted from the resulting object.
  - `display_name` (`string`): Display name of the instance. When `null`, the `display_name` field will be omitted from the resulting object.
  - `ip_range` (`string`): IP range represents the customer-provided CIDR block of length 22 that will be used for
the Apigee instance creation. This optional range, if provided, should be freely
available as part of larger named range the customer has allocated to the Service
Networking peering. If this is not provided, Apigee will automatically request for any
available /22 CIDR block from Service Networking. The customer should use this CIDR block
for configuring their firewall needs to allow traffic from Apigee.
Input format: &#34;a.b.c.d/22&#34; When `null`, the `ip_range` field will be omitted from the resulting object.
  - `location` (`string`): Required. Compute Engine location where the instance resides.
  - `name` (`string`): Resource ID of the instance.
  - `org_id` (`string`): The Apigee Organization associated with the Apigee instance,
in the format &#39;organizations/{{org_name}}&#39;.
  - `peering_cidr_range` (`string`): The size of the CIDR block range that will be reserved by the instance. For valid values,
see [CidrRange](https://cloud.google.com/apigee/docs/reference/apis/apigee/rest/v1/organizations.instances#CidrRange) on the documentation. When `null`, the `peering_cidr_range` field will be omitted from the resulting object.
  - `timeouts` (`obj`):  When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.apigee_instance.timeouts.new](#fn-apigee_instancetimeoutsnew) constructor.

**Returns**:
- A mixin object that injects the new resource into the root Terraform configuration.


### fn newAttrs

```ts
newAttrs()
```


`google.apigee_instance.newAttrs` constructs a new object with attributes and blocks configured for the `apigee_instance`
Terraform resource.

Unlike [google.apigee_instance.new](#fn-apigee_instancenew), this function will not inject the `resource`
block into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the
[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.

This is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to
injecting into a complete block.

**Args**:
  - `consumer_accept_list` (`list`): Optional. Customer accept list represents the list of projects (id/number) on customer
side that can privately connect to the service attachment. It is an optional field
which the customers can provide during the instance creation. By default, the customer
project associated with the Apigee organization will be included to the list. When `null`, the `consumer_accept_list` field will be omitted from the resulting object.
  - `description` (`string`): Description of the instance. When `null`, the `description` field will be omitted from the resulting object.
  - `disk_encryption_key_name` (`string`): Customer Managed Encryption Key (CMEK) used for disk and volume encryption. Required for Apigee paid subscriptions only.
Use the following format: &#39;projects/([^/]&#43;)/locations/([^/]&#43;)/keyRings/([^/]&#43;)/cryptoKeys/([^/]&#43;)&#39; When `null`, the `disk_encryption_key_name` field will be omitted from the resulting object.
  - `display_name` (`string`): Display name of the instance. When `null`, the `display_name` field will be omitted from the resulting object.
  - `ip_range` (`string`): IP range represents the customer-provided CIDR block of length 22 that will be used for
the Apigee instance creation. This optional range, if provided, should be freely
available as part of larger named range the customer has allocated to the Service
Networking peering. If this is not provided, Apigee will automatically request for any
available /22 CIDR block from Service Networking. The customer should use this CIDR block
for configuring their firewall needs to allow traffic from Apigee.
Input format: &#34;a.b.c.d/22&#34; When `null`, the `ip_range` field will be omitted from the resulting object.
  - `location` (`string`): Required. Compute Engine location where the instance resides.
  - `name` (`string`): Resource ID of the instance.
  - `org_id` (`string`): The Apigee Organization associated with the Apigee instance,
in the format &#39;organizations/{{org_name}}&#39;.
  - `peering_cidr_range` (`string`): The size of the CIDR block range that will be reserved by the instance. For valid values,
see [CidrRange](https://cloud.google.com/apigee/docs/reference/apis/apigee/rest/v1/organizations.instances#CidrRange) on the documentation. When `null`, the `peering_cidr_range` field will be omitted from the resulting object.
  - `timeouts` (`obj`):  When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.apigee_instance.timeouts.new](#fn-apigee_instancetimeoutsnew) constructor.

**Returns**:
  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `apigee_instance` resource into the root Terraform configuration.


### fn withConsumerAcceptList

```ts
withConsumerAcceptList()
```

`google.list.withConsumerAcceptList` constructs a mixin object that can be merged into the `list`
Terraform resource block to set or update the consumer_accept_list field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list`): The value to set for the `consumer_accept_list` field.


### fn withDescription

```ts
withDescription()
```

`google.string.withDescription` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the description field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `description` field.


### fn withDiskEncryptionKeyName

```ts
withDiskEncryptionKeyName()
```

`google.string.withDiskEncryptionKeyName` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the disk_encryption_key_name field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `disk_encryption_key_name` field.


### fn withDisplayName

```ts
withDisplayName()
```

`google.string.withDisplayName` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the display_name field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `display_name` field.


### fn withIpRange

```ts
withIpRange()
```

`google.string.withIpRange` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the ip_range field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `ip_range` field.


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


### fn withOrgId

```ts
withOrgId()
```

`google.string.withOrgId` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the org_id field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `org_id` field.


### fn withPeeringCidrRange

```ts
withPeeringCidrRange()
```

`google.string.withPeeringCidrRange` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the peering_cidr_range field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `peering_cidr_range` field.


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


## obj timeouts



### fn timeouts.new

```ts
new()
```


`google.apigee_instance.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`
Terraform sub block.



**Args**:
  - `create` (`string`):  When `null`, the `create` field will be omitted from the resulting object.
  - `delete` (`string`):  When `null`, the `delete` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `timeouts` sub block.
