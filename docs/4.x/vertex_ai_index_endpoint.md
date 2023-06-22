---
permalink: /vertex_ai_index_endpoint/
---

# vertex_ai_index_endpoint

`vertex_ai_index_endpoint` represents the `google_vertex_ai_index_endpoint` Terraform resource.



This package contains functions and utilities for setting up the resource using Jsonnet code.


## Index

* [`fn new()`](#fn-new)
* [`fn newAttrs()`](#fn-newattrs)
* [`fn withDescription()`](#fn-withdescription)
* [`fn withDisplayName()`](#fn-withdisplayname)
* [`fn withLabels()`](#fn-withlabels)
* [`fn withNetwork()`](#fn-withnetwork)
* [`fn withProject()`](#fn-withproject)
* [`fn withRegion()`](#fn-withregion)
* [`fn withTimeouts()`](#fn-withtimeouts)
* [`fn withTimeoutsMixin()`](#fn-withtimeoutsmixin)
* [`obj timeouts`](#obj-timeouts)
  * [`fn new()`](#fn-timeoutsnew)

## Fields

### fn new

```ts
new()
```


`google.vertex_ai_index_endpoint.new` injects a new `google_vertex_ai_index_endpoint` Terraform `resource`
block into the root module document.

Additionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the
resource. For example, if you added a new instance to the root using:

    # arguments omitted for brevity
    google.vertex_ai_index_endpoint.new('some_id')

You can get the reference to the `id` field of the created `google.vertex_ai_index_endpoint` using the reference:

    $._ref.google_vertex_ai_index_endpoint.some_id.get('id')

This is the same as directly entering `"${ google_vertex_ai_index_endpoint.some_id.id }"` as the value.

NOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,
or `$` to refer to the root object. Instead, make an explicit outer object using `local`.

**Args**:
  - `resourceLabel` (`string`): The name label of the block.
  - `description` (`string`): The description of the Index. When `null`, the `description` field will be omitted from the resulting object.
  - `display_name` (`string`): The display name of the Index. The name can be up to 128 characters long and can consist of any UTF-8 characters.
  - `labels` (`obj`): The labels with user-defined metadata to organize your Indexes. When `null`, the `labels` field will be omitted from the resulting object.
  - `network` (`string`): The full name of the Google Compute Engine [network](https://cloud.google.com//compute/docs/networks-and-firewalls#networks) to which the index endpoint should be peered.
Private services access must already be configured for the network. If left unspecified, the index endpoint is not peered with any network.
[Format](https://cloud.google.com/compute/docs/reference/rest/v1/networks/insert): &#39;projects/{project}/global/networks/{network}&#39;.
Where &#39;{project}&#39; is a project number, as in &#39;12345&#39;, and &#39;{network}&#39; is network name. When `null`, the `network` field will be omitted from the resulting object.
  - `project` (`string`): Set the `project` field on the resulting resource block. When `null`, the `project` field will be omitted from the resulting object.
  - `region` (`string`): The region of the index endpoint. eg us-central1 When `null`, the `region` field will be omitted from the resulting object.
  - `timeouts` (`obj`): Set the `timeouts` field on the resulting resource block. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.vertex_ai_index_endpoint.timeouts.new](#fn-timeoutsnew) constructor.

**Returns**:
- A mixin object that injects the new resource into the root Terraform configuration.


### fn newAttrs

```ts
newAttrs()
```


`google.vertex_ai_index_endpoint.newAttrs` constructs a new object with attributes and blocks configured for the `vertex_ai_index_endpoint`
Terraform resource.

Unlike [google.vertex_ai_index_endpoint.new](#fn-new), this function will not inject the `resource`
block into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the
[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.

This is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to
injecting into a complete block.

**Args**:
  - `description` (`string`): The description of the Index. When `null`, the `description` field will be omitted from the resulting object.
  - `display_name` (`string`): The display name of the Index. The name can be up to 128 characters long and can consist of any UTF-8 characters.
  - `labels` (`obj`): The labels with user-defined metadata to organize your Indexes. When `null`, the `labels` field will be omitted from the resulting object.
  - `network` (`string`): The full name of the Google Compute Engine [network](https://cloud.google.com//compute/docs/networks-and-firewalls#networks) to which the index endpoint should be peered.
Private services access must already be configured for the network. If left unspecified, the index endpoint is not peered with any network.
[Format](https://cloud.google.com/compute/docs/reference/rest/v1/networks/insert): &#39;projects/{project}/global/networks/{network}&#39;.
Where &#39;{project}&#39; is a project number, as in &#39;12345&#39;, and &#39;{network}&#39; is network name. When `null`, the `network` field will be omitted from the resulting object.
  - `project` (`string`): Set the `project` field on the resulting object. When `null`, the `project` field will be omitted from the resulting object.
  - `region` (`string`): The region of the index endpoint. eg us-central1 When `null`, the `region` field will be omitted from the resulting object.
  - `timeouts` (`obj`): Set the `timeouts` field on the resulting object. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.vertex_ai_index_endpoint.timeouts.new](#fn-timeoutsnew) constructor.

**Returns**:
  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `vertex_ai_index_endpoint` resource into the root Terraform configuration.


### fn withDescription

```ts
withDescription()
```

`google.string.withDescription` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the description field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `description` field.


### fn withDisplayName

```ts
withDisplayName()
```

`google.string.withDisplayName` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the display_name field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `display_name` field.


### fn withLabels

```ts
withLabels()
```

`google.obj.withLabels` constructs a mixin object that can be merged into the `obj`
Terraform resource block to set or update the labels field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`obj`): The value to set for the `labels` field.


### fn withNetwork

```ts
withNetwork()
```

`google.string.withNetwork` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the network field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `network` field.


### fn withProject

```ts
withProject()
```

`google.string.withProject` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the project field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `project` field.


### fn withRegion

```ts
withRegion()
```

`google.string.withRegion` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the region field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `region` field.


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


`google.vertex_ai_index_endpoint.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`
Terraform sub block.



**Args**:
  - `create` (`string`): Set the `create` field on the resulting object. When `null`, the `create` field will be omitted from the resulting object.
  - `delete` (`string`): Set the `delete` field on the resulting object. When `null`, the `delete` field will be omitted from the resulting object.
  - `update` (`string`): Set the `update` field on the resulting object. When `null`, the `update` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `timeouts` sub block.
