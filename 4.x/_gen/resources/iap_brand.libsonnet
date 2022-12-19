local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
local d = (import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet');
{
  '#':: d.pkg(name='iap_brand', url='', help='`iap_brand` represents the `google_iap_brand` Terraform resource.\n\n\n\nThis package contains functions and utilities for setting up the resource using Jsonnet code.\n'),
  '#new':: d.fn(help="\n`google.iap_brand.new` injects a new `google_iap_brand` Terraform `resource`\nblock into the root module document.\n\nAdditionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the\nresource. For example, if you added a new instance to the root using:\n\n    # arguments omitted for brevity\n    google.iap_brand.new('some_id')\n\nYou can get the reference to the `id` field of the created `google.iap_brand` using the reference:\n\n    $._ref.google_iap_brand.some_id.get('id')\n\nThis is the same as directly entering `\"${ google_iap_brand.some_id.id }\"` as the value.\n\nNOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,\nor `$` to refer to the root object. Instead, make an explicit outer object using `local`.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block.\n  - `application_title` (`string`): Application name displayed on OAuth consent screen.\n  - `project` (`string`):  When `null`, the `project` field will be omitted from the resulting object.\n  - `support_email` (`string`): Support email displayed on the OAuth consent screen. Can be either a\nuser or group email. When a user email is specified, the caller must\nbe the user with the associated email address. When a group email is\nspecified, the caller can be either a user or a service account which\nis an owner of the specified group in Cloud Identity.\n  - `timeouts` (`obj`):  When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.iap_brand.timeouts.new](#fn-iapbrandtimeoutsnew) constructor.\n\n**Returns**:\n- A mixin object that injects the new resource into the root Terraform configuration.\n", args=[]),
  new(
    resourceLabel,
    application_title,
    support_email,
    project=null,
    timeouts=null,
    _meta={}
  ):: tf.withResource(
    type='google_iap_brand',
    label=resourceLabel,
    attrs=self.newAttrs(
      application_title=application_title,
      project=project,
      support_email=support_email,
      timeouts=timeouts
    ),
    _meta=_meta
  ),
  '#newAttrs':: d.fn(help='\n`google.iap_brand.newAttrs` constructs a new object with attributes and blocks configured for the `iap_brand`\nTerraform resource.\n\nUnlike [google.iap_brand.new](#fn-iapbrandnew), this function will not inject the `resource`\nblock into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the\n[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.\n\nThis is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to\ninjecting into a complete block.\n\n**Args**:\n  - `application_title` (`string`): Application name displayed on OAuth consent screen.\n  - `project` (`string`):  When `null`, the `project` field will be omitted from the resulting object.\n  - `support_email` (`string`): Support email displayed on the OAuth consent screen. Can be either a\nuser or group email. When a user email is specified, the caller must\nbe the user with the associated email address. When a group email is\nspecified, the caller can be either a user or a service account which\nis an owner of the specified group in Cloud Identity.\n  - `timeouts` (`obj`):  When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.iap_brand.timeouts.new](#fn-iapbrandtimeoutsnew) constructor.\n\n**Returns**:\n  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `iap_brand` resource into the root Terraform configuration.\n', args=[]),
  newAttrs(
    application_title,
    support_email,
    project=null,
    timeouts=null
  ):: std.prune(a={
    application_title: application_title,
    project: project,
    support_email: support_email,
    timeouts: timeouts,
  }),
  timeouts:: {
    '#new':: d.fn(help='\n`google.iap_brand.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`\nTerraform sub block.\n\n\n\n**Args**:\n  - `create` (`string`):  When `null`, the `create` field will be omitted from the resulting object.\n  - `delete` (`string`):  When `null`, the `delete` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `timeouts` sub block.\n', args=[]),
    new(
      create=null,
      delete=null
    ):: std.prune(a={
      create: create,
      delete: delete,
    }),
  },
  '#withApplicationTitle':: d.fn(help='`google.iap_brand.withApplicationTitle` constructs a mixin object that can be merged into the `iap_brand`\nTerraform resource block to set or update the application_title field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`TODO`): The value to set for the `application_title` field.\n', args=[]),
  withApplicationTitle(resourceLabel, value):: {
    resource+: {
      google_iap_brand+: {
        [resourceLabel]+: {
          application_title: value,
        },
      },
    },
  },
  '#withProject':: d.fn(help='`google.iap_brand.withProject` constructs a mixin object that can be merged into the `iap_brand`\nTerraform resource block to set or update the project field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`TODO`): The value to set for the `project` field.\n', args=[]),
  withProject(resourceLabel, value):: {
    resource+: {
      google_iap_brand+: {
        [resourceLabel]+: {
          project: value,
        },
      },
    },
  },
  '#withSupportEmail':: d.fn(help='`google.iap_brand.withSupportEmail` constructs a mixin object that can be merged into the `iap_brand`\nTerraform resource block to set or update the support_email field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`TODO`): The value to set for the `support_email` field.\n', args=[]),
  withSupportEmail(resourceLabel, value):: {
    resource+: {
      google_iap_brand+: {
        [resourceLabel]+: {
          support_email: value,
        },
      },
    },
  },
  '#withTimeouts':: d.fn(help='`google.iap_brand.withTimeouts` constructs a mixin object that can be merged into the `iap_brand`\nTerraform resource block to set or update the timeouts field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`TODO`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeouts(resourceLabel, value):: {
    resource+: {
      google_iap_brand+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  '#withTimeoutsMixin':: d.fn(help='`google.iap_brand.withTimeoutsMixin` constructs a mixin object that can be merged into the `iap_brand`\nTerraform resource block to set or update the timeouts field.\n\nThis function will merge the passed in value to the existing map. If you wish\nto instead replace the entire map with the passed in `value`, use the [google.iap_brand.withTimeouts](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`TODO`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeoutsMixin(resourceLabel, value):: {
    resource+: {
      google_iap_brand+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
}
