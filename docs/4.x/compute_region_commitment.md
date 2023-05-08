---
permalink: /compute_region_commitment/
---

# compute_region_commitment

`compute_region_commitment` represents the `google_compute_region_commitment` Terraform resource.



This package contains functions and utilities for setting up the resource using Jsonnet code.


## Index

* [`fn new()`](#fn-new)
* [`fn newAttrs()`](#fn-newattrs)
* [`fn withAutoRenew()`](#fn-withautorenew)
* [`fn withCategory()`](#fn-withcategory)
* [`fn withDescription()`](#fn-withdescription)
* [`fn withLicenseResource()`](#fn-withlicenseresource)
* [`fn withLicenseResourceMixin()`](#fn-withlicenseresourcemixin)
* [`fn withName()`](#fn-withname)
* [`fn withPlan()`](#fn-withplan)
* [`fn withProject()`](#fn-withproject)
* [`fn withRegion()`](#fn-withregion)
* [`fn withResources()`](#fn-withresources)
* [`fn withResourcesMixin()`](#fn-withresourcesmixin)
* [`fn withTimeouts()`](#fn-withtimeouts)
* [`fn withTimeoutsMixin()`](#fn-withtimeoutsmixin)
* [`fn withType()`](#fn-withtype)
* [`obj license_resource`](#obj-license_resource)
  * [`fn new()`](#fn-license_resourcenew)
* [`obj resources`](#obj-resources)
  * [`fn new()`](#fn-resourcesnew)
* [`obj timeouts`](#obj-timeouts)
  * [`fn new()`](#fn-timeoutsnew)

## Fields

### fn new

```ts
new()
```


`google.compute_region_commitment.new` injects a new `google_compute_region_commitment` Terraform `resource`
block into the root module document.

Additionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the
resource. For example, if you added a new instance to the root using:

    # arguments omitted for brevity
    google.compute_region_commitment.new('some_id')

You can get the reference to the `id` field of the created `google.compute_region_commitment` using the reference:

    $._ref.google_compute_region_commitment.some_id.get('id')

This is the same as directly entering `"${ google_compute_region_commitment.some_id.id }"` as the value.

NOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,
or `$` to refer to the root object. Instead, make an explicit outer object using `local`.

**Args**:
  - `resourceLabel` (`string`): The name label of the block.
  - `auto_renew` (`bool`): Specifies whether to enable automatic renewal for the commitment.
The default value is false if not specified.
If the field is set to true, the commitment will be automatically renewed for either
one or three years according to the terms of the existing commitment. When `null`, the `auto_renew` field will be omitted from the resulting object.
  - `category` (`string`): The category of the commitment. Category MACHINE specifies commitments composed of
machine resources such as VCPU or MEMORY, listed in resources. Category LICENSE
specifies commitments composed of software licenses, listed in licenseResources.
Note that only MACHINE commitments should have a Type specified. Possible values: [&#34;LICENSE&#34;, &#34;MACHINE&#34;] When `null`, the `category` field will be omitted from the resulting object.
  - `description` (`string`): An optional description of this resource. When `null`, the `description` field will be omitted from the resulting object.
  - `name` (`string`): Name of the resource. The name must be 1-63 characters long and match
the regular expression &#39;[a-z]([-a-z0-9]*[a-z0-9])?&#39; which means the
first character must be a lowercase letter, and all following
characters must be a dash, lowercase letter, or digit, except the last
character, which cannot be a dash.
  - `plan` (`string`): The plan for this commitment, which determines duration and discount rate.
The currently supported plans are TWELVE_MONTH (1 year), and THIRTY_SIX_MONTH (3 years). Possible values: [&#34;TWELVE_MONTH&#34;, &#34;THIRTY_SIX_MONTH&#34;]
  - `project` (`string`): Set the `project` field on the resulting resource block. When `null`, the `project` field will be omitted from the resulting object.
  - `region` (`string`): URL of the region where this commitment may be used. When `null`, the `region` field will be omitted from the resulting object.
  - `type` (`string`): The type of commitment, which affects the discount rate and the eligible resources.
Type MEMORY_OPTIMIZED specifies a commitment that will only apply to memory optimized
machines. Type ACCELERATOR_OPTIMIZED specifies a commitment that will only apply to
accelerator optimized machines. Possible values: [&#34;MEMORY_OPTIMIZED&#34;, &#34;ACCELERATOR_OPTIMIZED&#34;] When `null`, the `type` field will be omitted from the resulting object.
  - `license_resource` (`list[obj]`): The license specification required as part of a license commitment. When `null`, the `license_resource` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_region_commitment.license_resource.new](#fn-license_resourcenew) constructor.
  - `resources` (`list[obj]`): A list of commitment amounts for particular resources.
Note that VCPU and MEMORY resource commitments must occur together. When `null`, the `resources` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_region_commitment.resources.new](#fn-resourcesnew) constructor.
  - `timeouts` (`obj`): Set the `timeouts` field on the resulting resource block. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_region_commitment.timeouts.new](#fn-timeoutsnew) constructor.

**Returns**:
- A mixin object that injects the new resource into the root Terraform configuration.


### fn newAttrs

```ts
newAttrs()
```


`google.compute_region_commitment.newAttrs` constructs a new object with attributes and blocks configured for the `compute_region_commitment`
Terraform resource.

Unlike [google.compute_region_commitment.new](#fn-new), this function will not inject the `resource`
block into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the
[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.

This is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to
injecting into a complete block.

**Args**:
  - `auto_renew` (`bool`): Specifies whether to enable automatic renewal for the commitment.
The default value is false if not specified.
If the field is set to true, the commitment will be automatically renewed for either
one or three years according to the terms of the existing commitment. When `null`, the `auto_renew` field will be omitted from the resulting object.
  - `category` (`string`): The category of the commitment. Category MACHINE specifies commitments composed of
machine resources such as VCPU or MEMORY, listed in resources. Category LICENSE
specifies commitments composed of software licenses, listed in licenseResources.
Note that only MACHINE commitments should have a Type specified. Possible values: [&#34;LICENSE&#34;, &#34;MACHINE&#34;] When `null`, the `category` field will be omitted from the resulting object.
  - `description` (`string`): An optional description of this resource. When `null`, the `description` field will be omitted from the resulting object.
  - `name` (`string`): Name of the resource. The name must be 1-63 characters long and match
the regular expression &#39;[a-z]([-a-z0-9]*[a-z0-9])?&#39; which means the
first character must be a lowercase letter, and all following
characters must be a dash, lowercase letter, or digit, except the last
character, which cannot be a dash.
  - `plan` (`string`): The plan for this commitment, which determines duration and discount rate.
The currently supported plans are TWELVE_MONTH (1 year), and THIRTY_SIX_MONTH (3 years). Possible values: [&#34;TWELVE_MONTH&#34;, &#34;THIRTY_SIX_MONTH&#34;]
  - `project` (`string`): Set the `project` field on the resulting object. When `null`, the `project` field will be omitted from the resulting object.
  - `region` (`string`): URL of the region where this commitment may be used. When `null`, the `region` field will be omitted from the resulting object.
  - `type` (`string`): The type of commitment, which affects the discount rate and the eligible resources.
Type MEMORY_OPTIMIZED specifies a commitment that will only apply to memory optimized
machines. Type ACCELERATOR_OPTIMIZED specifies a commitment that will only apply to
accelerator optimized machines. Possible values: [&#34;MEMORY_OPTIMIZED&#34;, &#34;ACCELERATOR_OPTIMIZED&#34;] When `null`, the `type` field will be omitted from the resulting object.
  - `license_resource` (`list[obj]`): The license specification required as part of a license commitment. When `null`, the `license_resource` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_region_commitment.license_resource.new](#fn-license_resourcenew) constructor.
  - `resources` (`list[obj]`): A list of commitment amounts for particular resources.
Note that VCPU and MEMORY resource commitments must occur together. When `null`, the `resources` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_region_commitment.resources.new](#fn-resourcesnew) constructor.
  - `timeouts` (`obj`): Set the `timeouts` field on the resulting object. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_region_commitment.timeouts.new](#fn-timeoutsnew) constructor.

**Returns**:
  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `compute_region_commitment` resource into the root Terraform configuration.


### fn withAutoRenew

```ts
withAutoRenew()
```

`google.bool.withAutoRenew` constructs a mixin object that can be merged into the `bool`
Terraform resource block to set or update the auto_renew field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`bool`): The value to set for the `auto_renew` field.


### fn withCategory

```ts
withCategory()
```

`google.string.withCategory` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the category field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `category` field.


### fn withDescription

```ts
withDescription()
```

`google.string.withDescription` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the description field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `description` field.


### fn withLicenseResource

```ts
withLicenseResource()
```

`google.list[obj].withLicenseResource` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the license_resource field.

This function will replace the array with the passed in `value`. If you wish to instead append the
passed in value to the existing array, use the [google.list[obj].withLicenseResourceMixin](TODO) function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `license_resource` field.


### fn withLicenseResourceMixin

```ts
withLicenseResourceMixin()
```

`google.list[obj].withLicenseResourceMixin` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the license_resource field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google.list[obj].withLicenseResource](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `license_resource` field.


### fn withName

```ts
withName()
```

`google.string.withName` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the name field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `name` field.


### fn withPlan

```ts
withPlan()
```

`google.string.withPlan` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the plan field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `plan` field.


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


### fn withResources

```ts
withResources()
```

`google.list[obj].withResources` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the resources field.

This function will replace the array with the passed in `value`. If you wish to instead append the
passed in value to the existing array, use the [google.list[obj].withResourcesMixin](TODO) function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `resources` field.


### fn withResourcesMixin

```ts
withResourcesMixin()
```

`google.list[obj].withResourcesMixin` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the resources field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google.list[obj].withResources](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `resources` field.


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


### fn withType

```ts
withType()
```

`google.string.withType` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the type field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `type` field.


## obj license_resource



### fn license_resource.new

```ts
new()
```


`google.compute_region_commitment.license_resource.new` constructs a new object with attributes and blocks configured for the `license_resource`
Terraform sub block.



**Args**:
  - `amount` (`string`): The number of licenses purchased. When `null`, the `amount` field will be omitted from the resulting object.
  - `cores_per_license` (`string`): Specifies the core range of the instance for which this license applies. When `null`, the `cores_per_license` field will be omitted from the resulting object.
  - `license` (`string`): Any applicable license URI.

**Returns**:
  - An attribute object that represents the `license_resource` sub block.


## obj resources



### fn resources.new

```ts
new()
```


`google.compute_region_commitment.resources.new` constructs a new object with attributes and blocks configured for the `resources`
Terraform sub block.



**Args**:
  - `accelerator_type` (`string`): Name of the accelerator type resource. Applicable only when the type is ACCELERATOR. When `null`, the `accelerator_type` field will be omitted from the resulting object.
  - `amount` (`string`): The amount of the resource purchased (in a type-dependent unit,
such as bytes). For vCPUs, this can just be an integer. For memory,
this must be provided in MB. Memory must be a multiple of 256 MB,
with up to 6.5GB of memory per every vCPU. When `null`, the `amount` field will be omitted from the resulting object.
  - `type` (`string`): Type of resource for which this commitment applies.
Possible values are VCPU, MEMORY, LOCAL_SSD, and ACCELERATOR. When `null`, the `type` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `resources` sub block.


## obj timeouts



### fn timeouts.new

```ts
new()
```


`google.compute_region_commitment.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`
Terraform sub block.



**Args**:
  - `create` (`string`): Set the `create` field on the resulting object. When `null`, the `create` field will be omitted from the resulting object.
  - `delete` (`string`): Set the `delete` field on the resulting object. When `null`, the `delete` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `timeouts` sub block.
