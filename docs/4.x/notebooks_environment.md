---
permalink: /notebooks_environment/
---

# notebooks_environment

`notebooks_environment` represents the `google_notebooks_environment` Terraform resource.



This package contains functions and utilities for setting up the resource using Jsonnet code.


## Index

* [`fn new()`](#fn-new)
* [`fn newAttrs()`](#fn-newattrs)
* [`fn withContainerImage()`](#fn-withcontainerimage)
* [`fn withContainerImageMixin()`](#fn-withcontainerimagemixin)
* [`fn withDescription()`](#fn-withdescription)
* [`fn withDisplayName()`](#fn-withdisplayname)
* [`fn withLocation()`](#fn-withlocation)
* [`fn withName()`](#fn-withname)
* [`fn withPostStartupScript()`](#fn-withpoststartupscript)
* [`fn withProject()`](#fn-withproject)
* [`fn withTimeouts()`](#fn-withtimeouts)
* [`fn withTimeoutsMixin()`](#fn-withtimeoutsmixin)
* [`fn withVmImage()`](#fn-withvmimage)
* [`fn withVmImageMixin()`](#fn-withvmimagemixin)
* [`obj container_image`](#obj-container_image)
  * [`fn new()`](#fn-container_imagenew)
* [`obj timeouts`](#obj-timeouts)
  * [`fn new()`](#fn-timeoutsnew)
* [`obj vm_image`](#obj-vm_image)
  * [`fn new()`](#fn-vm_imagenew)

## Fields

### fn new

```ts
new()
```


`google.notebooks_environment.new` injects a new `google_notebooks_environment` Terraform `resource`
block into the root module document.

Additionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the
resource. For example, if you added a new instance to the root using:

    # arguments omitted for brevity
    google.notebooks_environment.new('some_id')

You can get the reference to the `id` field of the created `google.notebooks_environment` using the reference:

    $._ref.google_notebooks_environment.some_id.get('id')

This is the same as directly entering `"${ google_notebooks_environment.some_id.id }"` as the value.

NOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,
or `$` to refer to the root object. Instead, make an explicit outer object using `local`.

**Args**:
  - `resourceLabel` (`string`): The name label of the block.
  - `description` (`string`): A brief description of this environment. When `null`, the `description` field will be omitted from the resulting object.
  - `display_name` (`string`): Display name of this environment for the UI. When `null`, the `display_name` field will be omitted from the resulting object.
  - `location` (`string`): A reference to the zone where the machine resides.
  - `name` (`string`): The name specified for the Environment instance.
Format: projects/{project_id}/locations/{location}/environments/{environmentId}
  - `post_startup_script` (`string`): Path to a Bash script that automatically runs after a notebook instance fully boots up.
The path must be a URL or Cloud Storage path. Example: &#34;gs://path-to-file/file-name&#34; When `null`, the `post_startup_script` field will be omitted from the resulting object.
  - `project` (`string`):  When `null`, the `project` field will be omitted from the resulting object.
  - `container_image` (`list[obj]`): Use a container image to start the notebook instance. When `null`, the `container_image` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.notebooks_environment.container_image.new](#fn-notebooksenvironmentcontainerimagenew) constructor.
  - `timeouts` (`obj`):  When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.notebooks_environment.timeouts.new](#fn-notebooksenvironmenttimeoutsnew) constructor.
  - `vm_image` (`list[obj]`): Use a Compute Engine VM image to start the notebook instance. When `null`, the `vm_image` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.notebooks_environment.vm_image.new](#fn-notebooksenvironmentvmimagenew) constructor.

**Returns**:
- A mixin object that injects the new resource into the root Terraform configuration.


### fn newAttrs

```ts
newAttrs()
```


`google.notebooks_environment.newAttrs` constructs a new object with attributes and blocks configured for the `notebooks_environment`
Terraform resource.

Unlike [google.notebooks_environment.new](#fn-notebooksenvironmentnew), this function will not inject the `resource`
block into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the
[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.

This is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to
injecting into a complete block.

**Args**:
  - `description` (`string`): A brief description of this environment. When `null`, the `description` field will be omitted from the resulting object.
  - `display_name` (`string`): Display name of this environment for the UI. When `null`, the `display_name` field will be omitted from the resulting object.
  - `location` (`string`): A reference to the zone where the machine resides.
  - `name` (`string`): The name specified for the Environment instance.
Format: projects/{project_id}/locations/{location}/environments/{environmentId}
  - `post_startup_script` (`string`): Path to a Bash script that automatically runs after a notebook instance fully boots up.
The path must be a URL or Cloud Storage path. Example: &#34;gs://path-to-file/file-name&#34; When `null`, the `post_startup_script` field will be omitted from the resulting object.
  - `project` (`string`):  When `null`, the `project` field will be omitted from the resulting object.
  - `container_image` (`list[obj]`): Use a container image to start the notebook instance. When `null`, the `container_image` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.notebooks_environment.container_image.new](#fn-notebooksenvironmentcontainerimagenew) constructor.
  - `timeouts` (`obj`):  When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.notebooks_environment.timeouts.new](#fn-notebooksenvironmenttimeoutsnew) constructor.
  - `vm_image` (`list[obj]`): Use a Compute Engine VM image to start the notebook instance. When `null`, the `vm_image` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.notebooks_environment.vm_image.new](#fn-notebooksenvironmentvmimagenew) constructor.

**Returns**:
  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `notebooks_environment` resource into the root Terraform configuration.


### fn withContainerImage

```ts
withContainerImage()
```

`google.notebooks_environment.withContainerImage` constructs a mixin object that can be merged into the `notebooks_environment`
Terraform resource block to set or update the container_image field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`TODO`): The value to set for the `container_image` field.


### fn withContainerImageMixin

```ts
withContainerImageMixin()
```

`google.notebooks_environment.withContainerImageMixin` constructs a mixin object that can be merged into the `notebooks_environment`
Terraform resource block to set or update the container_image field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google.notebooks_environment.withContainerImage](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`TODO`): The value to set for the `container_image` field.


### fn withDescription

```ts
withDescription()
```

`google.notebooks_environment.withDescription` constructs a mixin object that can be merged into the `notebooks_environment`
Terraform resource block to set or update the description field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`TODO`): The value to set for the `description` field.


### fn withDisplayName

```ts
withDisplayName()
```

`google.notebooks_environment.withDisplayName` constructs a mixin object that can be merged into the `notebooks_environment`
Terraform resource block to set or update the display_name field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`TODO`): The value to set for the `display_name` field.


### fn withLocation

```ts
withLocation()
```

`google.notebooks_environment.withLocation` constructs a mixin object that can be merged into the `notebooks_environment`
Terraform resource block to set or update the location field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`TODO`): The value to set for the `location` field.


### fn withName

```ts
withName()
```

`google.notebooks_environment.withName` constructs a mixin object that can be merged into the `notebooks_environment`
Terraform resource block to set or update the name field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`TODO`): The value to set for the `name` field.


### fn withPostStartupScript

```ts
withPostStartupScript()
```

`google.notebooks_environment.withPostStartupScript` constructs a mixin object that can be merged into the `notebooks_environment`
Terraform resource block to set or update the post_startup_script field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`TODO`): The value to set for the `post_startup_script` field.


### fn withProject

```ts
withProject()
```

`google.notebooks_environment.withProject` constructs a mixin object that can be merged into the `notebooks_environment`
Terraform resource block to set or update the project field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`TODO`): The value to set for the `project` field.


### fn withTimeouts

```ts
withTimeouts()
```

`google.notebooks_environment.withTimeouts` constructs a mixin object that can be merged into the `notebooks_environment`
Terraform resource block to set or update the timeouts field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`TODO`): The value to set for the `timeouts` field.


### fn withTimeoutsMixin

```ts
withTimeoutsMixin()
```

`google.notebooks_environment.withTimeoutsMixin` constructs a mixin object that can be merged into the `notebooks_environment`
Terraform resource block to set or update the timeouts field.

This function will merge the passed in value to the existing map. If you wish
to instead replace the entire map with the passed in `value`, use the [google.notebooks_environment.withTimeouts](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`TODO`): The value to set for the `timeouts` field.


### fn withVmImage

```ts
withVmImage()
```

`google.notebooks_environment.withVmImage` constructs a mixin object that can be merged into the `notebooks_environment`
Terraform resource block to set or update the vm_image field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`TODO`): The value to set for the `vm_image` field.


### fn withVmImageMixin

```ts
withVmImageMixin()
```

`google.notebooks_environment.withVmImageMixin` constructs a mixin object that can be merged into the `notebooks_environment`
Terraform resource block to set or update the vm_image field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google.notebooks_environment.withVmImage](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`TODO`): The value to set for the `vm_image` field.


## obj container_image



### fn container_image.new

```ts
new()
```


`google.notebooks_environment.container_image.new` constructs a new object with attributes and blocks configured for the `container_image`
Terraform sub block.



**Args**:
  - `repository` (`string`): The path to the container image repository.
For example: gcr.io/{project_id}/{imageName}
  - `tag` (`string`): The tag of the container image. If not specified, this defaults to the latest tag. When `null`, the `tag` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `container_image` sub block.


## obj timeouts



### fn timeouts.new

```ts
new()
```


`google.notebooks_environment.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`
Terraform sub block.



**Args**:
  - `create` (`string`):  When `null`, the `create` field will be omitted from the resulting object.
  - `delete` (`string`):  When `null`, the `delete` field will be omitted from the resulting object.
  - `update` (`string`):  When `null`, the `update` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `timeouts` sub block.


## obj vm_image



### fn vm_image.new

```ts
new()
```


`google.notebooks_environment.vm_image.new` constructs a new object with attributes and blocks configured for the `vm_image`
Terraform sub block.



**Args**:
  - `image_family` (`string`): Use this VM image family to find the image; the newest image in this family will be used. When `null`, the `image_family` field will be omitted from the resulting object.
  - `image_name` (`string`): Use VM image name to find the image. When `null`, the `image_name` field will be omitted from the resulting object.
  - `project` (`string`): The name of the Google Cloud project that this VM image belongs to.
Format: projects/{project_id}

**Returns**:
  - An attribute object that represents the `vm_image` sub block.
