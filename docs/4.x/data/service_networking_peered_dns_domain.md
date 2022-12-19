---
permalink: /data/service_networking_peered_dns_domain/
---

# data.service_networking_peered_dns_domain

`service_networking_peered_dns_domain` represents the `google_service_networking_peered_dns_domain` Terraform data source.



This package contains functions and utilities for setting up the data source using Jsonnet code.


## Index

* [`fn new()`](#fn-new)
* [`fn newAttrs()`](#fn-newattrs)
* [`fn withName()`](#fn-withname)
* [`fn withNetwork()`](#fn-withnetwork)
* [`fn withProject()`](#fn-withproject)
* [`fn withService()`](#fn-withservice)

## Fields

### fn new

```ts
new()
```


`google.data.service_networking_peered_dns_domain.new` injects a new `data_google_service_networking_peered_dns_domain` Terraform `data source`
block into the root module document.

Additionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the
resource. For example, if you added a new instance to the root using:

    # arguments omitted for brevity
    google.data.service_networking_peered_dns_domain.new('some_id')

You can get the reference to the `id` field of the created `google.data.service_networking_peered_dns_domain` using the reference:

    $._ref.data_google_service_networking_peered_dns_domain.some_id.get('id')

This is the same as directly entering `"${ data_google_service_networking_peered_dns_domain.some_id.id }"` as the value.

NOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,
or `$` to refer to the root object. Instead, make an explicit outer object using `local`.

**Args**:
  - `dataSrcLabel` (`string`): The name label of the block.
  - `name` (`string`): 
  - `network` (`string`): 
  - `project` (`string`): 
  - `service` (`string`): 

**Returns**:
- A mixin object that injects the new data source into the root Terraform configuration.


### fn newAttrs

```ts
newAttrs()
```


`google.data.service_networking_peered_dns_domain.newAttrs` constructs a new object with attributes and blocks configured for the `service_networking_peered_dns_domain`
Terraform data source.

Unlike [google.data.service_networking_peered_dns_domain.new](#fn-servicenetworkingpeereddnsdomainnew), this function will not inject the `data source`
block into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the
[tf.withData](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withdata) function to build a complete block.

This is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to
injecting into a complete block.

**Args**:
  - `name` (`string`): 
  - `network` (`string`): 
  - `project` (`string`): 
  - `service` (`string`): 

**Returns**:
  - An attribute object that can be used with [tf.withData](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withdata) to construct a new `service_networking_peered_dns_domain` data source into the root Terraform configuration.


### fn withName

```ts
withName()
```

`google.service_networking_peered_dns_domain.withName` constructs a mixin object that can be merged into the `service_networking_peered_dns_domain`
Terraform data source block to set or update the name field.



**Args**:
  - `dataSrcLabel` (`string`): The name label of the block to update.
  - `value` (`TODO`): The value to set for the `name` field.


### fn withNetwork

```ts
withNetwork()
```

`google.service_networking_peered_dns_domain.withNetwork` constructs a mixin object that can be merged into the `service_networking_peered_dns_domain`
Terraform data source block to set or update the network field.



**Args**:
  - `dataSrcLabel` (`string`): The name label of the block to update.
  - `value` (`TODO`): The value to set for the `network` field.


### fn withProject

```ts
withProject()
```

`google.service_networking_peered_dns_domain.withProject` constructs a mixin object that can be merged into the `service_networking_peered_dns_domain`
Terraform data source block to set or update the project field.



**Args**:
  - `dataSrcLabel` (`string`): The name label of the block to update.
  - `value` (`TODO`): The value to set for the `project` field.


### fn withService

```ts
withService()
```

`google.service_networking_peered_dns_domain.withService` constructs a mixin object that can be merged into the `service_networking_peered_dns_domain`
Terraform data source block to set or update the service field.



**Args**:
  - `dataSrcLabel` (`string`): The name label of the block to update.
  - `value` (`TODO`): The value to set for the `service` field.
