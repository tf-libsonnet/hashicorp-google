local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
local d = (import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet');
{
  '#':: d.pkg(name='compute_backend_service_signed_url_key', url='', help='`compute_backend_service_signed_url_key` represents the `google_compute_backend_service_signed_url_key` Terraform resource.\n\n\n\nThis package contains functions and utilities for setting up the resource using Jsonnet code.\n'),
  '#new':: d.fn(help="\n`google.compute_backend_service_signed_url_key.new` injects a new `google_compute_backend_service_signed_url_key` Terraform `resource`\nblock into the root module document.\n\nAdditionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the\nresource. For example, if you added a new instance to the root using:\n\n    # arguments omitted for brevity\n    google.compute_backend_service_signed_url_key.new('some_id')\n\nYou can get the reference to the `id` field of the created `google.compute_backend_service_signed_url_key` using the reference:\n\n    $._ref.google_compute_backend_service_signed_url_key.some_id.get('id')\n\nThis is the same as directly entering `\"${ google_compute_backend_service_signed_url_key.some_id.id }\"` as the value.\n\nNOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,\nor `$` to refer to the root object. Instead, make an explicit outer object using `local`.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block.\n  - `backend_service` (`string`): The backend service this signed URL key belongs.\n  - `key_value` (`string`): 128-bit key value used for signing the URL. The key value must be a\nvalid RFC 4648 Section 5 base64url encoded string.\n  - `name` (`string`): Name of the signed URL key.\n  - `project` (`string`):  When `null`, the `project` field will be omitted from the resulting object.\n  - `timeouts` (`obj`):  When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_backend_service_signed_url_key.timeouts.new](#fn-computebackendservicesignedurlkeytimeoutsnew) constructor.\n\n**Returns**:\n- A mixin object that injects the new resource into the root Terraform configuration.\n", args=[]),
  new(
    resourceLabel,
    backend_service,
    key_value,
    name,
    project=null,
    timeouts=null,
    _meta={}
  ):: tf.withResource(
    type='google_compute_backend_service_signed_url_key',
    label=resourceLabel,
    attrs=self.newAttrs(
      backend_service=backend_service,
      key_value=key_value,
      name=name,
      project=project,
      timeouts=timeouts
    ),
    _meta=_meta
  ),
  '#newAttrs':: d.fn(help='\n`google.compute_backend_service_signed_url_key.newAttrs` constructs a new object with attributes and blocks configured for the `compute_backend_service_signed_url_key`\nTerraform resource.\n\nUnlike [google.compute_backend_service_signed_url_key.new](#fn-computebackendservicesignedurlkeynew), this function will not inject the `resource`\nblock into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the\n[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.\n\nThis is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to\ninjecting into a complete block.\n\n**Args**:\n  - `backend_service` (`string`): The backend service this signed URL key belongs.\n  - `key_value` (`string`): 128-bit key value used for signing the URL. The key value must be a\nvalid RFC 4648 Section 5 base64url encoded string.\n  - `name` (`string`): Name of the signed URL key.\n  - `project` (`string`):  When `null`, the `project` field will be omitted from the resulting object.\n  - `timeouts` (`obj`):  When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_backend_service_signed_url_key.timeouts.new](#fn-computebackendservicesignedurlkeytimeoutsnew) constructor.\n\n**Returns**:\n  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `compute_backend_service_signed_url_key` resource into the root Terraform configuration.\n', args=[]),
  newAttrs(
    backend_service,
    key_value,
    name,
    project=null,
    timeouts=null
  ):: std.prune(a={
    backend_service: backend_service,
    key_value: key_value,
    name: name,
    project: project,
    timeouts: timeouts,
  }),
  timeouts:: {
    '#new':: d.fn(help='\n`google.compute_backend_service_signed_url_key.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`\nTerraform sub block.\n\n\n\n**Args**:\n  - `create` (`string`):  When `null`, the `create` field will be omitted from the resulting object.\n  - `delete` (`string`):  When `null`, the `delete` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `timeouts` sub block.\n', args=[]),
    new(
      create=null,
      delete=null
    ):: std.prune(a={
      create: create,
      delete: delete,
    }),
  },
  '#withBackendService':: d.fn(help='`google.compute_backend_service_signed_url_key.withBackendService` constructs a mixin object that can be merged into the `compute_backend_service_signed_url_key`\nTerraform resource block to set or update the backend_service field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`TODO`): The value to set for the `backend_service` field.\n', args=[]),
  withBackendService(resourceLabel, value):: {
    resource+: {
      google_compute_backend_service_signed_url_key+: {
        [resourceLabel]+: {
          backend_service: value,
        },
      },
    },
  },
  '#withKeyValue':: d.fn(help='`google.compute_backend_service_signed_url_key.withKeyValue` constructs a mixin object that can be merged into the `compute_backend_service_signed_url_key`\nTerraform resource block to set or update the key_value field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`TODO`): The value to set for the `key_value` field.\n', args=[]),
  withKeyValue(resourceLabel, value):: {
    resource+: {
      google_compute_backend_service_signed_url_key+: {
        [resourceLabel]+: {
          key_value: value,
        },
      },
    },
  },
  '#withName':: d.fn(help='`google.compute_backend_service_signed_url_key.withName` constructs a mixin object that can be merged into the `compute_backend_service_signed_url_key`\nTerraform resource block to set or update the name field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`TODO`): The value to set for the `name` field.\n', args=[]),
  withName(resourceLabel, value):: {
    resource+: {
      google_compute_backend_service_signed_url_key+: {
        [resourceLabel]+: {
          name: value,
        },
      },
    },
  },
  '#withProject':: d.fn(help='`google.compute_backend_service_signed_url_key.withProject` constructs a mixin object that can be merged into the `compute_backend_service_signed_url_key`\nTerraform resource block to set or update the project field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`TODO`): The value to set for the `project` field.\n', args=[]),
  withProject(resourceLabel, value):: {
    resource+: {
      google_compute_backend_service_signed_url_key+: {
        [resourceLabel]+: {
          project: value,
        },
      },
    },
  },
  '#withTimeouts':: d.fn(help='`google.compute_backend_service_signed_url_key.withTimeouts` constructs a mixin object that can be merged into the `compute_backend_service_signed_url_key`\nTerraform resource block to set or update the timeouts field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`TODO`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeouts(resourceLabel, value):: {
    resource+: {
      google_compute_backend_service_signed_url_key+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  '#withTimeoutsMixin':: d.fn(help='`google.compute_backend_service_signed_url_key.withTimeoutsMixin` constructs a mixin object that can be merged into the `compute_backend_service_signed_url_key`\nTerraform resource block to set or update the timeouts field.\n\nThis function will merge the passed in value to the existing map. If you wish\nto instead replace the entire map with the passed in `value`, use the [google.compute_backend_service_signed_url_key.withTimeouts](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`TODO`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeoutsMixin(resourceLabel, value):: {
    resource+: {
      google_compute_backend_service_signed_url_key+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
}
