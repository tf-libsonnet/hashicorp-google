---
permalink: /apigee_env_references/
---

# apigee_env_references

`apigee_env_references` represents the `google_apigee_env_references` Terraform resource.



This package contains functions and utilities for setting up the resource using Jsonnet code.


## Index

* [`fn new()`](#fn-new)
* [`fn newAttrs()`](#fn-newattrs)
* [`fn withDescription()`](#fn-withdescription)
* [`fn withEnvId()`](#fn-withenvid)
* [`fn withName()`](#fn-withname)
* [`fn withRefers()`](#fn-withrefers)
* [`fn withResourceType()`](#fn-withresourcetype)
* [`fn withTimeouts()`](#fn-withtimeouts)
* [`fn withTimeoutsMixin()`](#fn-withtimeoutsmixin)
* [`obj timeouts`](#obj-timeouts)
  * [`fn new()`](#fn-timeoutsnew)

## Fields

### fn new

```ts
new()
```


`google.apigee_env_references.new` injects a new `google_apigee_env_references` Terraform `resource`
block into the root module document.

Additionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the
resource. For example, if you added a new instance to the root using:

    # arguments omitted for brevity
    google.apigee_env_references.new('some_id')

You can get the reference to the `id` field of the created `google.apigee_env_references` using the reference:

    $._ref.google_apigee_env_references.some_id.get('id')

This is the same as directly entering `"${ google_apigee_env_references.some_id.id }"` as the value.

NOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,
or `$` to refer to the root object. Instead, make an explicit outer object using `local`.

**Args**:
  - `resourceLabel` (`string`): The name label of the block.
  - `description` (`string`): Optional. A human-readable description of this reference. When `null`, the `description` field will be omitted from the resulting object.
  - `env_id` (`string`): The Apigee environment group associated with the Apigee environment,
in the format &#39;organizations/{{org_name}}/environments/{{env_name}}&#39;.
  - `name` (`string`): Required. The resource id of this reference. Values must match the regular expression [\w\s-.]&#43;.
  - `refers` (`string`): Required. The id of the resource to which this reference refers. Must be the id of a resource that exists in the parent environment and is of the given resourceType.
  - `resource_type` (`string`): The type of resource referred to by this reference. Valid values are &#39;KeyStore&#39; or &#39;TrustStore&#39;.
  - `timeouts` (`obj`): Set the `timeouts` field on the resulting resource block. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.apigee_env_references.timeouts.new](#fn-timeoutsnew) constructor.

**Returns**:
- A mixin object that injects the new resource into the root Terraform configuration.


### fn newAttrs

```ts
newAttrs()
```


`google.apigee_env_references.newAttrs` constructs a new object with attributes and blocks configured for the `apigee_env_references`
Terraform resource.

Unlike [google.apigee_env_references.new](#fn-new), this function will not inject the `resource`
block into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the
[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.

This is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to
injecting into a complete block.

**Args**:
  - `description` (`string`): Optional. A human-readable description of this reference. When `null`, the `description` field will be omitted from the resulting object.
  - `env_id` (`string`): The Apigee environment group associated with the Apigee environment,
in the format &#39;organizations/{{org_name}}/environments/{{env_name}}&#39;.
  - `name` (`string`): Required. The resource id of this reference. Values must match the regular expression [\w\s-.]&#43;.
  - `refers` (`string`): Required. The id of the resource to which this reference refers. Must be the id of a resource that exists in the parent environment and is of the given resourceType.
  - `resource_type` (`string`): The type of resource referred to by this reference. Valid values are &#39;KeyStore&#39; or &#39;TrustStore&#39;.
  - `timeouts` (`obj`): Set the `timeouts` field on the resulting object. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.apigee_env_references.timeouts.new](#fn-timeoutsnew) constructor.

**Returns**:
  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `apigee_env_references` resource into the root Terraform configuration.


### fn withDescription

```ts
withDescription()
```

`google.string.withDescription` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the description field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `description` field.


### fn withEnvId

```ts
withEnvId()
```

`google.string.withEnvId` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the env_id field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `env_id` field.


### fn withName

```ts
withName()
```

`google.string.withName` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the name field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `name` field.


### fn withRefers

```ts
withRefers()
```

`google.string.withRefers` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the refers field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `refers` field.


### fn withResourceType

```ts
withResourceType()
```

`google.string.withResourceType` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the resource_type field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `resource_type` field.


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


`google.apigee_env_references.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`
Terraform sub block.



**Args**:
  - `create` (`string`): Set the `create` field on the resulting object. When `null`, the `create` field will be omitted from the resulting object.
  - `delete` (`string`): Set the `delete` field on the resulting object. When `null`, the `delete` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `timeouts` sub block.
