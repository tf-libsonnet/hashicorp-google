local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
local d = (import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet');
{
  '#':: d.pkg(name='cloudbuildv2_repository', url='', help='`cloudbuildv2_repository` represents the `google_cloudbuildv2_repository` Terraform resource.\n\n\n\nThis package contains functions and utilities for setting up the resource using Jsonnet code.\n'),
  '#new':: d.fn(help="\n`google.cloudbuildv2_repository.new` injects a new `google_cloudbuildv2_repository` Terraform `resource`\nblock into the root module document.\n\nAdditionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the\nresource. For example, if you added a new instance to the root using:\n\n    # arguments omitted for brevity\n    google.cloudbuildv2_repository.new('some_id')\n\nYou can get the reference to the `id` field of the created `google.cloudbuildv2_repository` using the reference:\n\n    $._ref.google_cloudbuildv2_repository.some_id.get('id')\n\nThis is the same as directly entering `\"${ google_cloudbuildv2_repository.some_id.id }\"` as the value.\n\nNOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,\nor `$` to refer to the root object. Instead, make an explicit outer object using `local`.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block.\n  - `annotations` (`obj`): Allows clients to store small amounts of arbitrary data. When `null`, the `annotations` field will be omitted from the resulting object.\n  - `location` (`string`): The location for the resource When `null`, the `location` field will be omitted from the resulting object.\n  - `name` (`string`): Name of the repository.\n  - `parent_connection` (`string`): The connection for the resource\n  - `project` (`string`): The project for the resource When `null`, the `project` field will be omitted from the resulting object.\n  - `remote_uri` (`string`): Required. Git Clone HTTPS URI.\n  - `timeouts` (`obj`): Set the `timeouts` field on the resulting resource block. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.cloudbuildv2_repository.timeouts.new](#fn-timeoutsnew) constructor.\n\n**Returns**:\n- A mixin object that injects the new resource into the root Terraform configuration.\n", args=[]),
  new(
    resourceLabel,
    name,
    parent_connection,
    remote_uri,
    annotations=null,
    location=null,
    project=null,
    timeouts=null,
    _meta={}
  ):: tf.withResource(
    type='google_cloudbuildv2_repository',
    label=resourceLabel,
    attrs=self.newAttrs(
      annotations=annotations,
      location=location,
      name=name,
      parent_connection=parent_connection,
      project=project,
      remote_uri=remote_uri,
      timeouts=timeouts
    ),
    _meta=_meta
  ),
  '#newAttrs':: d.fn(help='\n`google.cloudbuildv2_repository.newAttrs` constructs a new object with attributes and blocks configured for the `cloudbuildv2_repository`\nTerraform resource.\n\nUnlike [google.cloudbuildv2_repository.new](#fn-new), this function will not inject the `resource`\nblock into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the\n[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.\n\nThis is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to\ninjecting into a complete block.\n\n**Args**:\n  - `annotations` (`obj`): Allows clients to store small amounts of arbitrary data. When `null`, the `annotations` field will be omitted from the resulting object.\n  - `location` (`string`): The location for the resource When `null`, the `location` field will be omitted from the resulting object.\n  - `name` (`string`): Name of the repository.\n  - `parent_connection` (`string`): The connection for the resource\n  - `project` (`string`): The project for the resource When `null`, the `project` field will be omitted from the resulting object.\n  - `remote_uri` (`string`): Required. Git Clone HTTPS URI.\n  - `timeouts` (`obj`): Set the `timeouts` field on the resulting object. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.cloudbuildv2_repository.timeouts.new](#fn-timeoutsnew) constructor.\n\n**Returns**:\n  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `cloudbuildv2_repository` resource into the root Terraform configuration.\n', args=[]),
  newAttrs(
    name,
    parent_connection,
    remote_uri,
    annotations=null,
    location=null,
    project=null,
    timeouts=null
  ):: std.prune(a={
    annotations: annotations,
    location: location,
    name: name,
    parent_connection: parent_connection,
    project: project,
    remote_uri: remote_uri,
    timeouts: timeouts,
  }),
  timeouts:: {
    '#new':: d.fn(help='\n`google.cloudbuildv2_repository.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`\nTerraform sub block.\n\n\n\n**Args**:\n  - `create` (`string`): Set the `create` field on the resulting object. When `null`, the `create` field will be omitted from the resulting object.\n  - `delete` (`string`): Set the `delete` field on the resulting object. When `null`, the `delete` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `timeouts` sub block.\n', args=[]),
    new(
      create=null,
      delete=null
    ):: std.prune(a={
      create: create,
      delete: delete,
    }),
  },
  '#withAnnotations':: d.fn(help='`google.obj.withAnnotations` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the annotations field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `annotations` field.\n', args=[]),
  withAnnotations(resourceLabel, value): {
    resource+: {
      google_cloudbuildv2_repository+: {
        [resourceLabel]+: {
          annotations: value,
        },
      },
    },
  },
  '#withLocation':: d.fn(help='`google.string.withLocation` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the location field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `location` field.\n', args=[]),
  withLocation(resourceLabel, value): {
    resource+: {
      google_cloudbuildv2_repository+: {
        [resourceLabel]+: {
          location: value,
        },
      },
    },
  },
  '#withName':: d.fn(help='`google.string.withName` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the name field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `name` field.\n', args=[]),
  withName(resourceLabel, value): {
    resource+: {
      google_cloudbuildv2_repository+: {
        [resourceLabel]+: {
          name: value,
        },
      },
    },
  },
  '#withParentConnection':: d.fn(help='`google.string.withParentConnection` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the parent_connection field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `parent_connection` field.\n', args=[]),
  withParentConnection(resourceLabel, value): {
    resource+: {
      google_cloudbuildv2_repository+: {
        [resourceLabel]+: {
          parent_connection: value,
        },
      },
    },
  },
  '#withProject':: d.fn(help='`google.string.withProject` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the project field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `project` field.\n', args=[]),
  withProject(resourceLabel, value): {
    resource+: {
      google_cloudbuildv2_repository+: {
        [resourceLabel]+: {
          project: value,
        },
      },
    },
  },
  '#withRemoteUri':: d.fn(help='`google.string.withRemoteUri` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the remote_uri field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `remote_uri` field.\n', args=[]),
  withRemoteUri(resourceLabel, value): {
    resource+: {
      google_cloudbuildv2_repository+: {
        [resourceLabel]+: {
          remote_uri: value,
        },
      },
    },
  },
  '#withTimeouts':: d.fn(help='`google.obj.withTimeouts` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will replace the map with the passed in `value`. If you wish to instead merge the\npassed in value to the existing map, use the [google.obj.withTimeoutsMixin](TODO) function.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeouts(resourceLabel, value): {
    resource+: {
      google_cloudbuildv2_repository+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  '#withTimeoutsMixin':: d.fn(help='`google.obj.withTimeoutsMixin` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will merge the passed in value to the existing map. If you wish\nto instead replace the entire map with the passed in `value`, use the [google.obj.withTimeouts](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeoutsMixin(resourceLabel, value): {
    resource+: {
      google_cloudbuildv2_repository+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
}
