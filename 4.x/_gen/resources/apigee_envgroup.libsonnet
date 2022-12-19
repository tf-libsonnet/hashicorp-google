local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
local d = (import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet');
{
  '#':: d.pkg(name='apigee_envgroup', url='', help='`apigee_envgroup` represents the `google_apigee_envgroup` Terraform resource.\n\n\n\nThis package contains functions and utilities for setting up the resource using Jsonnet code.\n'),
  '#new':: d.fn(help="\n`google.apigee_envgroup.new` injects a new `google_apigee_envgroup` Terraform `resource`\nblock into the root module document.\n\nAdditionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the\nresource. For example, if you added a new instance to the root using:\n\n    # arguments omitted for brevity\n    google.apigee_envgroup.new('some_id')\n\nYou can get the reference to the `id` field of the created `google.apigee_envgroup` using the reference:\n\n    $._ref.google_apigee_envgroup.some_id.get('id')\n\nThis is the same as directly entering `\"${ google_apigee_envgroup.some_id.id }\"` as the value.\n\nNOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,\nor `$` to refer to the root object. Instead, make an explicit outer object using `local`.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block.\n  - `hostnames` (`list`): Hostnames of the environment group. When `null`, the `hostnames` field will be omitted from the resulting object.\n  - `name` (`string`): The resource ID of the environment group.\n  - `org_id` (`string`): The Apigee Organization associated with the Apigee environment group,\nin the format \u0026#39;organizations/{{org_name}}\u0026#39;.\n  - `timeouts` (`obj`):  When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.apigee_envgroup.timeouts.new](#fn-apigeeenvgrouptimeoutsnew) constructor.\n\n**Returns**:\n- A mixin object that injects the new resource into the root Terraform configuration.\n", args=[]),
  new(
    resourceLabel,
    name,
    org_id,
    hostnames=null,
    timeouts=null,
    _meta={}
  ):: tf.withResource(
    type='google_apigee_envgroup',
    label=resourceLabel,
    attrs=self.newAttrs(
      hostnames=hostnames,
      name=name,
      org_id=org_id,
      timeouts=timeouts
    ),
    _meta=_meta
  ),
  '#newAttrs':: d.fn(help='\n`google.apigee_envgroup.newAttrs` constructs a new object with attributes and blocks configured for the `apigee_envgroup`\nTerraform resource.\n\nUnlike [google.apigee_envgroup.new](#fn-apigeeenvgroupnew), this function will not inject the `resource`\nblock into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the\n[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.\n\nThis is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to\ninjecting into a complete block.\n\n**Args**:\n  - `hostnames` (`list`): Hostnames of the environment group. When `null`, the `hostnames` field will be omitted from the resulting object.\n  - `name` (`string`): The resource ID of the environment group.\n  - `org_id` (`string`): The Apigee Organization associated with the Apigee environment group,\nin the format &#39;organizations/{{org_name}}&#39;.\n  - `timeouts` (`obj`):  When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.apigee_envgroup.timeouts.new](#fn-apigeeenvgrouptimeoutsnew) constructor.\n\n**Returns**:\n  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `apigee_envgroup` resource into the root Terraform configuration.\n', args=[]),
  newAttrs(
    name,
    org_id,
    hostnames=null,
    timeouts=null
  ):: std.prune(a={
    hostnames: hostnames,
    name: name,
    org_id: org_id,
    timeouts: timeouts,
  }),
  timeouts:: {
    '#new':: d.fn(help='\n`google.apigee_envgroup.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`\nTerraform sub block.\n\n\n\n**Args**:\n  - `create` (`string`):  When `null`, the `create` field will be omitted from the resulting object.\n  - `delete` (`string`):  When `null`, the `delete` field will be omitted from the resulting object.\n  - `update` (`string`):  When `null`, the `update` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `timeouts` sub block.\n', args=[]),
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
  '#withHostnames':: d.fn(help='`google.apigee_envgroup.withHostnames` constructs a mixin object that can be merged into the `apigee_envgroup`\nTerraform resource block to set or update the hostnames field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`TODO`): The value to set for the `hostnames` field.\n', args=[]),
  withHostnames(resourceLabel, value):: {
    resource+: {
      google_apigee_envgroup+: {
        [resourceLabel]+: {
          hostnames: value,
        },
      },
    },
  },
  '#withName':: d.fn(help='`google.apigee_envgroup.withName` constructs a mixin object that can be merged into the `apigee_envgroup`\nTerraform resource block to set or update the name field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`TODO`): The value to set for the `name` field.\n', args=[]),
  withName(resourceLabel, value):: {
    resource+: {
      google_apigee_envgroup+: {
        [resourceLabel]+: {
          name: value,
        },
      },
    },
  },
  '#withOrgId':: d.fn(help='`google.apigee_envgroup.withOrgId` constructs a mixin object that can be merged into the `apigee_envgroup`\nTerraform resource block to set or update the org_id field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`TODO`): The value to set for the `org_id` field.\n', args=[]),
  withOrgId(resourceLabel, value):: {
    resource+: {
      google_apigee_envgroup+: {
        [resourceLabel]+: {
          org_id: value,
        },
      },
    },
  },
  '#withTimeouts':: d.fn(help='`google.apigee_envgroup.withTimeouts` constructs a mixin object that can be merged into the `apigee_envgroup`\nTerraform resource block to set or update the timeouts field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`TODO`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeouts(resourceLabel, value):: {
    resource+: {
      google_apigee_envgroup+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  '#withTimeoutsMixin':: d.fn(help='`google.apigee_envgroup.withTimeoutsMixin` constructs a mixin object that can be merged into the `apigee_envgroup`\nTerraform resource block to set or update the timeouts field.\n\nThis function will merge the passed in value to the existing map. If you wish\nto instead replace the entire map with the passed in `value`, use the [google.apigee_envgroup.withTimeouts](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`TODO`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeoutsMixin(resourceLabel, value):: {
    resource+: {
      google_apigee_envgroup+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
}
