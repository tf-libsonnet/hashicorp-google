local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
local d = (import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet');
{
  '#':: d.pkg(name='apigee_envgroup_attachment', url='', help='`apigee_envgroup_attachment` represents the `google_apigee_envgroup_attachment` Terraform resource.\n\n\n\nThis package contains functions and utilities for setting up the resource using Jsonnet code.\n'),
  '#new':: d.fn(help="\n`google.apigee_envgroup_attachment.new` injects a new `google_apigee_envgroup_attachment` Terraform `resource`\nblock into the root module document.\n\nAdditionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the\nresource. For example, if you added a new instance to the root using:\n\n    # arguments omitted for brevity\n    google.apigee_envgroup_attachment.new('some_id')\n\nYou can get the reference to the `id` field of the created `google.apigee_envgroup_attachment` using the reference:\n\n    $._ref.google_apigee_envgroup_attachment.some_id.get('id')\n\nThis is the same as directly entering `\"${ google_apigee_envgroup_attachment.some_id.id }\"` as the value.\n\nNOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,\nor `$` to refer to the root object. Instead, make an explicit outer object using `local`.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block.\n  - `envgroup_id` (`string`): The Apigee environment group associated with the Apigee environment,\nin the format \u0026#39;organizations/{{org_name}}/envgroups/{{envgroup_name}}\u0026#39;.\n  - `environment` (`string`): The resource ID of the environment.\n  - `timeouts` (`obj`):  When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.apigee_envgroup_attachment.timeouts.new](#fn-apigeeenvgroupattachmenttimeoutsnew) constructor.\n\n**Returns**:\n- A mixin object that injects the new resource into the root Terraform configuration.\n", args=[]),
  new(
    resourceLabel,
    envgroup_id,
    environment,
    timeouts=null,
    _meta={}
  ):: tf.withResource(
    type='google_apigee_envgroup_attachment',
    label=resourceLabel,
    attrs=self.newAttrs(envgroup_id=envgroup_id, environment=environment, timeouts=timeouts),
    _meta=_meta
  ),
  '#newAttrs':: d.fn(help='\n`google.apigee_envgroup_attachment.newAttrs` constructs a new object with attributes and blocks configured for the `apigee_envgroup_attachment`\nTerraform resource.\n\nUnlike [google.apigee_envgroup_attachment.new](#fn-apigeeenvgroupattachmentnew), this function will not inject the `resource`\nblock into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the\n[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.\n\nThis is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to\ninjecting into a complete block.\n\n**Args**:\n  - `envgroup_id` (`string`): The Apigee environment group associated with the Apigee environment,\nin the format &#39;organizations/{{org_name}}/envgroups/{{envgroup_name}}&#39;.\n  - `environment` (`string`): The resource ID of the environment.\n  - `timeouts` (`obj`):  When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.apigee_envgroup_attachment.timeouts.new](#fn-apigeeenvgroupattachmenttimeoutsnew) constructor.\n\n**Returns**:\n  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `apigee_envgroup_attachment` resource into the root Terraform configuration.\n', args=[]),
  newAttrs(
    envgroup_id,
    environment,
    timeouts=null
  ):: std.prune(a={
    envgroup_id: envgroup_id,
    environment: environment,
    timeouts: timeouts,
  }),
  timeouts:: {
    '#new':: d.fn(help='\n`google.apigee_envgroup_attachment.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`\nTerraform sub block.\n\n\n\n**Args**:\n  - `create` (`string`):  When `null`, the `create` field will be omitted from the resulting object.\n  - `delete` (`string`):  When `null`, the `delete` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `timeouts` sub block.\n', args=[]),
    new(
      create=null,
      delete=null
    ):: std.prune(a={
      create: create,
      delete: delete,
    }),
  },
  '#withEnvgroupId':: d.fn(help='`google.apigee_envgroup_attachment.withEnvgroupId` constructs a mixin object that can be merged into the `apigee_envgroup_attachment`\nTerraform resource block to set or update the envgroup_id field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`TODO`): The value to set for the `envgroup_id` field.\n', args=[]),
  withEnvgroupId(resourceLabel, value):: {
    resource+: {
      google_apigee_envgroup_attachment+: {
        [resourceLabel]+: {
          envgroup_id: value,
        },
      },
    },
  },
  '#withEnvironment':: d.fn(help='`google.apigee_envgroup_attachment.withEnvironment` constructs a mixin object that can be merged into the `apigee_envgroup_attachment`\nTerraform resource block to set or update the environment field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`TODO`): The value to set for the `environment` field.\n', args=[]),
  withEnvironment(resourceLabel, value):: {
    resource+: {
      google_apigee_envgroup_attachment+: {
        [resourceLabel]+: {
          environment: value,
        },
      },
    },
  },
  '#withTimeouts':: d.fn(help='`google.apigee_envgroup_attachment.withTimeouts` constructs a mixin object that can be merged into the `apigee_envgroup_attachment`\nTerraform resource block to set or update the timeouts field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`TODO`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeouts(resourceLabel, value):: {
    resource+: {
      google_apigee_envgroup_attachment+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  '#withTimeoutsMixin':: d.fn(help='`google.apigee_envgroup_attachment.withTimeoutsMixin` constructs a mixin object that can be merged into the `apigee_envgroup_attachment`\nTerraform resource block to set or update the timeouts field.\n\nThis function will merge the passed in value to the existing map. If you wish\nto instead replace the entire map with the passed in `value`, use the [google.apigee_envgroup_attachment.withTimeouts](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`TODO`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeoutsMixin(resourceLabel, value):: {
    resource+: {
      google_apigee_envgroup_attachment+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
}
