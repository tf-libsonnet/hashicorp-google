---
permalink: /compute_service_attachment/
---

# compute_service_attachment

`compute_service_attachment` represents the `google_compute_service_attachment` Terraform resource.



This package contains functions and utilities for setting up the resource using Jsonnet code.


## Index

* [`fn new()`](#fn-new)
* [`fn newAttrs()`](#fn-newattrs)
* [`fn withConnectionPreference()`](#fn-withconnectionpreference)
* [`fn withConsumerAcceptLists()`](#fn-withconsumeracceptlists)
* [`fn withConsumerAcceptListsMixin()`](#fn-withconsumeracceptlistsmixin)
* [`fn withConsumerRejectLists()`](#fn-withconsumerrejectlists)
* [`fn withDescription()`](#fn-withdescription)
* [`fn withDomainNames()`](#fn-withdomainnames)
* [`fn withEnableProxyProtocol()`](#fn-withenableproxyprotocol)
* [`fn withName()`](#fn-withname)
* [`fn withNatSubnets()`](#fn-withnatsubnets)
* [`fn withProject()`](#fn-withproject)
* [`fn withReconcileConnections()`](#fn-withreconcileconnections)
* [`fn withRegion()`](#fn-withregion)
* [`fn withTargetService()`](#fn-withtargetservice)
* [`fn withTimeouts()`](#fn-withtimeouts)
* [`fn withTimeoutsMixin()`](#fn-withtimeoutsmixin)
* [`obj consumer_accept_lists`](#obj-consumer_accept_lists)
  * [`fn new()`](#fn-consumer_accept_listsnew)
* [`obj timeouts`](#obj-timeouts)
  * [`fn new()`](#fn-timeoutsnew)

## Fields

### fn new

```ts
new()
```


`google.compute_service_attachment.new` injects a new `google_compute_service_attachment` Terraform `resource`
block into the root module document.

Additionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the
resource. For example, if you added a new instance to the root using:

    # arguments omitted for brevity
    google.compute_service_attachment.new('some_id')

You can get the reference to the `id` field of the created `google.compute_service_attachment` using the reference:

    $._ref.google_compute_service_attachment.some_id.get('id')

This is the same as directly entering `"${ google_compute_service_attachment.some_id.id }"` as the value.

NOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,
or `$` to refer to the root object. Instead, make an explicit outer object using `local`.

**Args**:
  - `resourceLabel` (`string`): The name label of the block.
  - `connection_preference` (`string`): The connection preference to use for this service attachment. Valid
values include &#34;ACCEPT_AUTOMATIC&#34;, &#34;ACCEPT_MANUAL&#34;.
  - `consumer_reject_lists` (`list`): An array of projects that are not allowed to connect to this service
attachment. When `null`, the `consumer_reject_lists` field will be omitted from the resulting object.
  - `description` (`string`): An optional description of this resource. When `null`, the `description` field will be omitted from the resulting object.
  - `domain_names` (`list`): If specified, the domain name will be used during the integration between
the PSC connected endpoints and the Cloud DNS. For example, this is a
valid domain name: &#34;p.mycompany.com.&#34;. Current max number of domain names
supported is 1. When `null`, the `domain_names` field will be omitted from the resulting object.
  - `enable_proxy_protocol` (`bool`): If true, enable the proxy protocol which is for supplying client TCP/IP
address data in TCP connections that traverse proxies on their way to
destination servers.
  - `name` (`string`): Name of the resource. The name must be 1-63 characters long, and
comply with RFC1035. Specifically, the name must be 1-63 characters
long and match the regular expression &#39;[a-z]([-a-z0-9]*[a-z0-9])?&#39;
which means the first character must be a lowercase letter, and all
following characters must be a dash, lowercase letter, or digit,
except the last character, which cannot be a dash.
  - `nat_subnets` (`list`): An array of subnets that is provided for NAT in this service attachment.
  - `project` (`string`): Set the `project` field on the resulting resource block. When `null`, the `project` field will be omitted from the resulting object.
  - `reconcile_connections` (`bool`): This flag determines whether a consumer accept/reject list change can reconcile the statuses of existing ACCEPTED or REJECTED PSC endpoints.

If false, connection policy update will only affect existing PENDING PSC endpoints. Existing ACCEPTED/REJECTED endpoints will remain untouched regardless how the connection policy is modified .
If true, update will affect both PENDING and ACCEPTED/REJECTED PSC endpoints. For example, an ACCEPTED PSC endpoint will be moved to REJECTED if its project is added to the reject list. When `null`, the `reconcile_connections` field will be omitted from the resulting object.
  - `region` (`string`): URL of the region where the resource resides. When `null`, the `region` field will be omitted from the resulting object.
  - `target_service` (`string`): The URL of a forwarding rule that represents the service identified by
this service attachment.
  - `consumer_accept_lists` (`list[obj]`): An array of projects that are allowed to connect to this service
attachment. When `null`, the `consumer_accept_lists` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_service_attachment.consumer_accept_lists.new](#fn-consumer_accept_listsnew) constructor.
  - `timeouts` (`obj`): Set the `timeouts` field on the resulting resource block. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_service_attachment.timeouts.new](#fn-timeoutsnew) constructor.

**Returns**:
- A mixin object that injects the new resource into the root Terraform configuration.


### fn newAttrs

```ts
newAttrs()
```


`google.compute_service_attachment.newAttrs` constructs a new object with attributes and blocks configured for the `compute_service_attachment`
Terraform resource.

Unlike [google.compute_service_attachment.new](#fn-new), this function will not inject the `resource`
block into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the
[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.

This is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to
injecting into a complete block.

**Args**:
  - `connection_preference` (`string`): The connection preference to use for this service attachment. Valid
values include &#34;ACCEPT_AUTOMATIC&#34;, &#34;ACCEPT_MANUAL&#34;.
  - `consumer_reject_lists` (`list`): An array of projects that are not allowed to connect to this service
attachment. When `null`, the `consumer_reject_lists` field will be omitted from the resulting object.
  - `description` (`string`): An optional description of this resource. When `null`, the `description` field will be omitted from the resulting object.
  - `domain_names` (`list`): If specified, the domain name will be used during the integration between
the PSC connected endpoints and the Cloud DNS. For example, this is a
valid domain name: &#34;p.mycompany.com.&#34;. Current max number of domain names
supported is 1. When `null`, the `domain_names` field will be omitted from the resulting object.
  - `enable_proxy_protocol` (`bool`): If true, enable the proxy protocol which is for supplying client TCP/IP
address data in TCP connections that traverse proxies on their way to
destination servers.
  - `name` (`string`): Name of the resource. The name must be 1-63 characters long, and
comply with RFC1035. Specifically, the name must be 1-63 characters
long and match the regular expression &#39;[a-z]([-a-z0-9]*[a-z0-9])?&#39;
which means the first character must be a lowercase letter, and all
following characters must be a dash, lowercase letter, or digit,
except the last character, which cannot be a dash.
  - `nat_subnets` (`list`): An array of subnets that is provided for NAT in this service attachment.
  - `project` (`string`): Set the `project` field on the resulting object. When `null`, the `project` field will be omitted from the resulting object.
  - `reconcile_connections` (`bool`): This flag determines whether a consumer accept/reject list change can reconcile the statuses of existing ACCEPTED or REJECTED PSC endpoints.

If false, connection policy update will only affect existing PENDING PSC endpoints. Existing ACCEPTED/REJECTED endpoints will remain untouched regardless how the connection policy is modified .
If true, update will affect both PENDING and ACCEPTED/REJECTED PSC endpoints. For example, an ACCEPTED PSC endpoint will be moved to REJECTED if its project is added to the reject list. When `null`, the `reconcile_connections` field will be omitted from the resulting object.
  - `region` (`string`): URL of the region where the resource resides. When `null`, the `region` field will be omitted from the resulting object.
  - `target_service` (`string`): The URL of a forwarding rule that represents the service identified by
this service attachment.
  - `consumer_accept_lists` (`list[obj]`): An array of projects that are allowed to connect to this service
attachment. When `null`, the `consumer_accept_lists` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_service_attachment.consumer_accept_lists.new](#fn-consumer_accept_listsnew) constructor.
  - `timeouts` (`obj`): Set the `timeouts` field on the resulting object. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_service_attachment.timeouts.new](#fn-timeoutsnew) constructor.

**Returns**:
  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `compute_service_attachment` resource into the root Terraform configuration.


### fn withConnectionPreference

```ts
withConnectionPreference()
```

`google.string.withConnectionPreference` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the connection_preference field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `connection_preference` field.


### fn withConsumerAcceptLists

```ts
withConsumerAcceptLists()
```

`google.list[obj].withConsumerAcceptLists` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the consumer_accept_lists field.

This function will replace the array with the passed in `value`. If you wish to instead append the
passed in value to the existing array, use the [google.list[obj].withConsumerAcceptListsMixin](TODO) function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `consumer_accept_lists` field.


### fn withConsumerAcceptListsMixin

```ts
withConsumerAcceptListsMixin()
```

`google.list[obj].withConsumerAcceptListsMixin` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the consumer_accept_lists field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google.list[obj].withConsumerAcceptLists](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `consumer_accept_lists` field.


### fn withConsumerRejectLists

```ts
withConsumerRejectLists()
```

`google.list.withConsumerRejectLists` constructs a mixin object that can be merged into the `list`
Terraform resource block to set or update the consumer_reject_lists field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list`): The value to set for the `consumer_reject_lists` field.


### fn withDescription

```ts
withDescription()
```

`google.string.withDescription` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the description field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `description` field.


### fn withDomainNames

```ts
withDomainNames()
```

`google.list.withDomainNames` constructs a mixin object that can be merged into the `list`
Terraform resource block to set or update the domain_names field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list`): The value to set for the `domain_names` field.


### fn withEnableProxyProtocol

```ts
withEnableProxyProtocol()
```

`google.bool.withEnableProxyProtocol` constructs a mixin object that can be merged into the `bool`
Terraform resource block to set or update the enable_proxy_protocol field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`bool`): The value to set for the `enable_proxy_protocol` field.


### fn withName

```ts
withName()
```

`google.string.withName` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the name field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `name` field.


### fn withNatSubnets

```ts
withNatSubnets()
```

`google.list.withNatSubnets` constructs a mixin object that can be merged into the `list`
Terraform resource block to set or update the nat_subnets field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list`): The value to set for the `nat_subnets` field.


### fn withProject

```ts
withProject()
```

`google.string.withProject` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the project field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `project` field.


### fn withReconcileConnections

```ts
withReconcileConnections()
```

`google.bool.withReconcileConnections` constructs a mixin object that can be merged into the `bool`
Terraform resource block to set or update the reconcile_connections field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`bool`): The value to set for the `reconcile_connections` field.


### fn withRegion

```ts
withRegion()
```

`google.string.withRegion` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the region field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `region` field.


### fn withTargetService

```ts
withTargetService()
```

`google.string.withTargetService` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the target_service field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `target_service` field.


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


## obj consumer_accept_lists



### fn consumer_accept_lists.new

```ts
new()
```


`google.compute_service_attachment.consumer_accept_lists.new` constructs a new object with attributes and blocks configured for the `consumer_accept_lists`
Terraform sub block.



**Args**:
  - `connection_limit` (`number`): The number of consumer forwarding rules the consumer project can
create.
  - `project_id_or_num` (`string`): A project that is allowed to connect to this service attachment.

**Returns**:
  - An attribute object that represents the `consumer_accept_lists` sub block.


## obj timeouts



### fn timeouts.new

```ts
new()
```


`google.compute_service_attachment.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`
Terraform sub block.



**Args**:
  - `create` (`string`): Set the `create` field on the resulting object. When `null`, the `create` field will be omitted from the resulting object.
  - `delete` (`string`): Set the `delete` field on the resulting object. When `null`, the `delete` field will be omitted from the resulting object.
  - `update` (`string`): Set the `update` field on the resulting object. When `null`, the `update` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `timeouts` sub block.
