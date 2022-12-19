local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
local d = (import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet');
{
  '#':: d.pkg(name='notebooks_environment', url='', help='`notebooks_environment` represents the `google_notebooks_environment` Terraform resource.\n\n\n\nThis package contains functions and utilities for setting up the resource using Jsonnet code.\n'),
  container_image:: {
    '#new':: d.fn(help='\n`google.notebooks_environment.container_image.new` constructs a new object with attributes and blocks configured for the `container_image`\nTerraform sub block.\n\n\n\n**Args**:\n  - `repository` (`string`): The path to the container image repository.\nFor example: gcr.io/{project_id}/{imageName}\n  - `tag` (`string`): The tag of the container image. If not specified, this defaults to the latest tag. When `null`, the `tag` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `container_image` sub block.\n', args=[]),
    new(
      repository,
      tag=null
    ):: std.prune(a={
      repository: repository,
      tag: tag,
    }),
  },
  '#new':: d.fn(help="\n`google.notebooks_environment.new` injects a new `google_notebooks_environment` Terraform `resource`\nblock into the root module document.\n\nAdditionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the\nresource. For example, if you added a new instance to the root using:\n\n    # arguments omitted for brevity\n    google.notebooks_environment.new('some_id')\n\nYou can get the reference to the `id` field of the created `google.notebooks_environment` using the reference:\n\n    $._ref.google_notebooks_environment.some_id.get('id')\n\nThis is the same as directly entering `\"${ google_notebooks_environment.some_id.id }\"` as the value.\n\nNOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,\nor `$` to refer to the root object. Instead, make an explicit outer object using `local`.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block.\n  - `description` (`string`): A brief description of this environment. When `null`, the `description` field will be omitted from the resulting object.\n  - `display_name` (`string`): Display name of this environment for the UI. When `null`, the `display_name` field will be omitted from the resulting object.\n  - `location` (`string`): A reference to the zone where the machine resides.\n  - `name` (`string`): The name specified for the Environment instance.\nFormat: projects/{project_id}/locations/{location}/environments/{environmentId}\n  - `post_startup_script` (`string`): Path to a Bash script that automatically runs after a notebook instance fully boots up.\nThe path must be a URL or Cloud Storage path. Example: \u0026#34;gs://path-to-file/file-name\u0026#34; When `null`, the `post_startup_script` field will be omitted from the resulting object.\n  - `project` (`string`):  When `null`, the `project` field will be omitted from the resulting object.\n  - `container_image` (`list[obj]`): Use a container image to start the notebook instance. When `null`, the `container_image` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.notebooks_environment.container_image.new](#fn-notebooksenvironmentcontainerimagenew) constructor.\n  - `timeouts` (`obj`):  When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.notebooks_environment.timeouts.new](#fn-notebooksenvironmenttimeoutsnew) constructor.\n  - `vm_image` (`list[obj]`): Use a Compute Engine VM image to start the notebook instance. When `null`, the `vm_image` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.notebooks_environment.vm_image.new](#fn-notebooksenvironmentvmimagenew) constructor.\n\n**Returns**:\n- A mixin object that injects the new resource into the root Terraform configuration.\n", args=[]),
  new(
    resourceLabel,
    location,
    name,
    container_image=null,
    description=null,
    display_name=null,
    post_startup_script=null,
    project=null,
    timeouts=null,
    vm_image=null,
    _meta={}
  ):: tf.withResource(
    type='google_notebooks_environment',
    label=resourceLabel,
    attrs=self.newAttrs(
      container_image=container_image,
      description=description,
      display_name=display_name,
      location=location,
      name=name,
      post_startup_script=post_startup_script,
      project=project,
      timeouts=timeouts,
      vm_image=vm_image
    ),
    _meta=_meta
  ),
  '#newAttrs':: d.fn(help='\n`google.notebooks_environment.newAttrs` constructs a new object with attributes and blocks configured for the `notebooks_environment`\nTerraform resource.\n\nUnlike [google.notebooks_environment.new](#fn-notebooksenvironmentnew), this function will not inject the `resource`\nblock into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the\n[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.\n\nThis is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to\ninjecting into a complete block.\n\n**Args**:\n  - `description` (`string`): A brief description of this environment. When `null`, the `description` field will be omitted from the resulting object.\n  - `display_name` (`string`): Display name of this environment for the UI. When `null`, the `display_name` field will be omitted from the resulting object.\n  - `location` (`string`): A reference to the zone where the machine resides.\n  - `name` (`string`): The name specified for the Environment instance.\nFormat: projects/{project_id}/locations/{location}/environments/{environmentId}\n  - `post_startup_script` (`string`): Path to a Bash script that automatically runs after a notebook instance fully boots up.\nThe path must be a URL or Cloud Storage path. Example: &#34;gs://path-to-file/file-name&#34; When `null`, the `post_startup_script` field will be omitted from the resulting object.\n  - `project` (`string`):  When `null`, the `project` field will be omitted from the resulting object.\n  - `container_image` (`list[obj]`): Use a container image to start the notebook instance. When `null`, the `container_image` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.notebooks_environment.container_image.new](#fn-notebooksenvironmentcontainerimagenew) constructor.\n  - `timeouts` (`obj`):  When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.notebooks_environment.timeouts.new](#fn-notebooksenvironmenttimeoutsnew) constructor.\n  - `vm_image` (`list[obj]`): Use a Compute Engine VM image to start the notebook instance. When `null`, the `vm_image` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.notebooks_environment.vm_image.new](#fn-notebooksenvironmentvmimagenew) constructor.\n\n**Returns**:\n  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `notebooks_environment` resource into the root Terraform configuration.\n', args=[]),
  newAttrs(
    location,
    name,
    container_image=null,
    description=null,
    display_name=null,
    post_startup_script=null,
    project=null,
    timeouts=null,
    vm_image=null
  ):: std.prune(a={
    container_image: container_image,
    description: description,
    display_name: display_name,
    location: location,
    name: name,
    post_startup_script: post_startup_script,
    project: project,
    timeouts: timeouts,
    vm_image: vm_image,
  }),
  timeouts:: {
    '#new':: d.fn(help='\n`google.notebooks_environment.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`\nTerraform sub block.\n\n\n\n**Args**:\n  - `create` (`string`):  When `null`, the `create` field will be omitted from the resulting object.\n  - `delete` (`string`):  When `null`, the `delete` field will be omitted from the resulting object.\n  - `update` (`string`):  When `null`, the `update` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `timeouts` sub block.\n', args=[]),
    new(
      create=null,
      delete=null,
      update=null
    ):: std.prune(a={
      create: create,
      delete: delete,
      update: update,
    }),
  },
  vm_image:: {
    '#new':: d.fn(help='\n`google.notebooks_environment.vm_image.new` constructs a new object with attributes and blocks configured for the `vm_image`\nTerraform sub block.\n\n\n\n**Args**:\n  - `image_family` (`string`): Use this VM image family to find the image; the newest image in this family will be used. When `null`, the `image_family` field will be omitted from the resulting object.\n  - `image_name` (`string`): Use VM image name to find the image. When `null`, the `image_name` field will be omitted from the resulting object.\n  - `project` (`string`): The name of the Google Cloud project that this VM image belongs to.\nFormat: projects/{project_id}\n\n**Returns**:\n  - An attribute object that represents the `vm_image` sub block.\n', args=[]),
    new(
      project,
      image_family=null,
      image_name=null
    ):: std.prune(a={
      image_family: image_family,
      image_name: image_name,
      project: project,
    }),
  },
  '#withContainerImage':: d.fn(help='`google.list[obj].withContainerImage` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the container_image field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [google.list[obj].withContainerImageMixin](TODO) function.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `container_image` field.\n', args=[]),
  withContainerImage(resourceLabel, value): {
    resource+: {
      google_notebooks_environment+: {
        [resourceLabel]+: {
          container_image: value,
        },
      },
    },
  },
  '#withContainerImageMixin':: d.fn(help='`google.list[obj].withContainerImageMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the container_image field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google.list[obj].withContainerImage](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `container_image` field.\n', args=[]),
  withContainerImageMixin(resourceLabel, value): {
    resource+: {
      google_notebooks_environment+: {
        [resourceLabel]+: {
          container_image+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withDescription':: d.fn(help='`google.string.withDescription` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the description field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `description` field.\n', args=[]),
  withDescription(resourceLabel, value): {
    resource+: {
      google_notebooks_environment+: {
        [resourceLabel]+: {
          description: value,
        },
      },
    },
  },
  '#withDisplayName':: d.fn(help='`google.string.withDisplayName` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the display_name field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `display_name` field.\n', args=[]),
  withDisplayName(resourceLabel, value): {
    resource+: {
      google_notebooks_environment+: {
        [resourceLabel]+: {
          display_name: value,
        },
      },
    },
  },
  '#withLocation':: d.fn(help='`google.string.withLocation` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the location field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `location` field.\n', args=[]),
  withLocation(resourceLabel, value): {
    resource+: {
      google_notebooks_environment+: {
        [resourceLabel]+: {
          location: value,
        },
      },
    },
  },
  '#withName':: d.fn(help='`google.string.withName` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the name field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `name` field.\n', args=[]),
  withName(resourceLabel, value): {
    resource+: {
      google_notebooks_environment+: {
        [resourceLabel]+: {
          name: value,
        },
      },
    },
  },
  '#withPostStartupScript':: d.fn(help='`google.string.withPostStartupScript` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the post_startup_script field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `post_startup_script` field.\n', args=[]),
  withPostStartupScript(resourceLabel, value): {
    resource+: {
      google_notebooks_environment+: {
        [resourceLabel]+: {
          post_startup_script: value,
        },
      },
    },
  },
  '#withProject':: d.fn(help='`google.string.withProject` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the project field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `project` field.\n', args=[]),
  withProject(resourceLabel, value): {
    resource+: {
      google_notebooks_environment+: {
        [resourceLabel]+: {
          project: value,
        },
      },
    },
  },
  '#withTimeouts':: d.fn(help='`google.obj.withTimeouts` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will replace the map with the passed in `value`. If you wish to instead merge the\npassed in value to the existing map, use the [google.obj.withTimeoutsMixin](TODO) function.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeouts(resourceLabel, value): {
    resource+: {
      google_notebooks_environment+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  '#withTimeoutsMixin':: d.fn(help='`google.obj.withTimeoutsMixin` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will merge the passed in value to the existing map. If you wish\nto instead replace the entire map with the passed in `value`, use the [google.obj.withTimeouts](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeoutsMixin(resourceLabel, value): {
    resource+: {
      google_notebooks_environment+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
  '#withVmImage':: d.fn(help='`google.list[obj].withVmImage` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the vm_image field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [google.list[obj].withVmImageMixin](TODO) function.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `vm_image` field.\n', args=[]),
  withVmImage(resourceLabel, value): {
    resource+: {
      google_notebooks_environment+: {
        [resourceLabel]+: {
          vm_image: value,
        },
      },
    },
  },
  '#withVmImageMixin':: d.fn(help='`google.list[obj].withVmImageMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the vm_image field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google.list[obj].withVmImage](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `vm_image` field.\n', args=[]),
  withVmImageMixin(resourceLabel, value): {
    resource+: {
      google_notebooks_environment+: {
        [resourceLabel]+: {
          vm_image+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
}
