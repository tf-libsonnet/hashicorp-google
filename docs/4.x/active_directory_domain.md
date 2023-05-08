---
permalink: /active_directory_domain/
---

# active_directory_domain

`active_directory_domain` represents the `google_active_directory_domain` Terraform resource.



This package contains functions and utilities for setting up the resource using Jsonnet code.


## Index

* [`fn new()`](#fn-new)
* [`fn newAttrs()`](#fn-newattrs)
* [`fn withAdmin()`](#fn-withadmin)
* [`fn withAuthorizedNetworks()`](#fn-withauthorizednetworks)
* [`fn withDomainName()`](#fn-withdomainname)
* [`fn withLabels()`](#fn-withlabels)
* [`fn withLocations()`](#fn-withlocations)
* [`fn withProject()`](#fn-withproject)
* [`fn withReservedIpRange()`](#fn-withreservediprange)
* [`fn withTimeouts()`](#fn-withtimeouts)
* [`fn withTimeoutsMixin()`](#fn-withtimeoutsmixin)
* [`obj timeouts`](#obj-timeouts)
  * [`fn new()`](#fn-timeoutsnew)

## Fields

### fn new

```ts
new()
```


`google.active_directory_domain.new` injects a new `google_active_directory_domain` Terraform `resource`
block into the root module document.

Additionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the
resource. For example, if you added a new instance to the root using:

    # arguments omitted for brevity
    google.active_directory_domain.new('some_id')

You can get the reference to the `id` field of the created `google.active_directory_domain` using the reference:

    $._ref.google_active_directory_domain.some_id.get('id')

This is the same as directly entering `"${ google_active_directory_domain.some_id.id }"` as the value.

NOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,
or `$` to refer to the root object. Instead, make an explicit outer object using `local`.

**Args**:
  - `resourceLabel` (`string`): The name label of the block.
  - `admin` (`string`): The name of delegated administrator account used to perform Active Directory operations.
If not specified, setupadmin will be used. When `null`, the `admin` field will be omitted from the resulting object.
  - `authorized_networks` (`list`): The full names of the Google Compute Engine networks the domain instance is connected to. The domain is only available on networks listed in authorizedNetworks.
If CIDR subnets overlap between networks, domain creation will fail. When `null`, the `authorized_networks` field will be omitted from the resulting object.
  - `domain_name` (`string`): The fully qualified domain name. e.g. mydomain.myorganization.com, with the restrictions,
https://cloud.google.com/managed-microsoft-ad/reference/rest/v1/projects.locations.global.domains.
  - `labels` (`obj`): Resource labels that can contain user-provided metadata When `null`, the `labels` field will be omitted from the resulting object.
  - `locations` (`list`): Locations where domain needs to be provisioned. [regions][compute/docs/regions-zones/]
e.g. us-west1 or us-east4 Service supports up to 4 locations at once. Each location will use a /26 block.
  - `project` (`string`): Set the `project` field on the resulting resource block. When `null`, the `project` field will be omitted from the resulting object.
  - `reserved_ip_range` (`string`): The CIDR range of internal addresses that are reserved for this domain. Reserved networks must be /24 or larger.
Ranges must be unique and non-overlapping with existing subnets in authorizedNetworks
  - `timeouts` (`obj`): Set the `timeouts` field on the resulting resource block. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.active_directory_domain.timeouts.new](#fn-timeoutsnew) constructor.

**Returns**:
- A mixin object that injects the new resource into the root Terraform configuration.


### fn newAttrs

```ts
newAttrs()
```


`google.active_directory_domain.newAttrs` constructs a new object with attributes and blocks configured for the `active_directory_domain`
Terraform resource.

Unlike [google.active_directory_domain.new](#fn-new), this function will not inject the `resource`
block into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the
[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.

This is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to
injecting into a complete block.

**Args**:
  - `admin` (`string`): The name of delegated administrator account used to perform Active Directory operations.
If not specified, setupadmin will be used. When `null`, the `admin` field will be omitted from the resulting object.
  - `authorized_networks` (`list`): The full names of the Google Compute Engine networks the domain instance is connected to. The domain is only available on networks listed in authorizedNetworks.
If CIDR subnets overlap between networks, domain creation will fail. When `null`, the `authorized_networks` field will be omitted from the resulting object.
  - `domain_name` (`string`): The fully qualified domain name. e.g. mydomain.myorganization.com, with the restrictions,
https://cloud.google.com/managed-microsoft-ad/reference/rest/v1/projects.locations.global.domains.
  - `labels` (`obj`): Resource labels that can contain user-provided metadata When `null`, the `labels` field will be omitted from the resulting object.
  - `locations` (`list`): Locations where domain needs to be provisioned. [regions][compute/docs/regions-zones/]
e.g. us-west1 or us-east4 Service supports up to 4 locations at once. Each location will use a /26 block.
  - `project` (`string`): Set the `project` field on the resulting object. When `null`, the `project` field will be omitted from the resulting object.
  - `reserved_ip_range` (`string`): The CIDR range of internal addresses that are reserved for this domain. Reserved networks must be /24 or larger.
Ranges must be unique and non-overlapping with existing subnets in authorizedNetworks
  - `timeouts` (`obj`): Set the `timeouts` field on the resulting object. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.active_directory_domain.timeouts.new](#fn-timeoutsnew) constructor.

**Returns**:
  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `active_directory_domain` resource into the root Terraform configuration.


### fn withAdmin

```ts
withAdmin()
```

`google.string.withAdmin` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the admin field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `admin` field.


### fn withAuthorizedNetworks

```ts
withAuthorizedNetworks()
```

`google.list.withAuthorizedNetworks` constructs a mixin object that can be merged into the `list`
Terraform resource block to set or update the authorized_networks field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list`): The value to set for the `authorized_networks` field.


### fn withDomainName

```ts
withDomainName()
```

`google.string.withDomainName` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the domain_name field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `domain_name` field.


### fn withLabels

```ts
withLabels()
```

`google.obj.withLabels` constructs a mixin object that can be merged into the `obj`
Terraform resource block to set or update the labels field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`obj`): The value to set for the `labels` field.


### fn withLocations

```ts
withLocations()
```

`google.list.withLocations` constructs a mixin object that can be merged into the `list`
Terraform resource block to set or update the locations field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list`): The value to set for the `locations` field.


### fn withProject

```ts
withProject()
```

`google.string.withProject` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the project field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `project` field.


### fn withReservedIpRange

```ts
withReservedIpRange()
```

`google.string.withReservedIpRange` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the reserved_ip_range field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `reserved_ip_range` field.


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


`google.active_directory_domain.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`
Terraform sub block.



**Args**:
  - `create` (`string`): Set the `create` field on the resulting object. When `null`, the `create` field will be omitted from the resulting object.
  - `delete` (`string`): Set the `delete` field on the resulting object. When `null`, the `delete` field will be omitted from the resulting object.
  - `update` (`string`): Set the `update` field on the resulting object. When `null`, the `update` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `timeouts` sub block.
