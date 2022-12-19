local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
local d = (import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet');
{
  '#':: d.pkg(name='apigee_nat_address', url='', help='`apigee_nat_address` represents the `google_apigee_nat_address` Terraform resource.\n\n\n\nThis package contains functions and utilities for setting up the resource using Jsonnet code.\n'),
  '#new':: d.fn(help="\n`google.apigee_nat_address.new` injects a new `google_apigee_nat_address` Terraform `resource`\nblock into the root module document.\n\nAdditionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the\nresource. For example, if you added a new instance to the root using:\n\n    # arguments omitted for brevity\n    google.apigee_nat_address.new('some_id')\n\nYou can get the reference to the `id` field of the created `google.apigee_nat_address` using the reference:\n\n    $._ref.google_apigee_nat_address.some_id.get('id')\n\nThis is the same as directly entering `\"${ google_apigee_nat_address.some_id.id }\"` as the value.\n\nNOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,\nor `$` to refer to the root object. Instead, make an explicit outer object using `local`.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block.\n  - `instance_id` (`string`): The Apigee instance associated with the Apigee environment,\nin the format \u0026#39;organizations/{{org_name}}/instances/{{instance_name}}\u0026#39;.\n  - `name` (`string`): Resource ID of the NAT address.\n  - `timeouts` (`obj`):  When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.apigee_nat_address.timeouts.new](#fn-apigeenataddresstimeoutsnew) constructor.\n\n**Returns**:\n- A mixin object that injects the new resource into the root Terraform configuration.\n", args=[]),
  new(
    resourceLabel,
    instance_id,
    name,
    timeouts=null,
    _meta={}
  ):: tf.withResource(
    type='google_apigee_nat_address',
    label=resourceLabel,
    attrs=self.newAttrs(instance_id=instance_id, name=name, timeouts=timeouts),
    _meta=_meta
  ),
  '#newAttrs':: d.fn(help='\n`google.apigee_nat_address.newAttrs` constructs a new object with attributes and blocks configured for the `apigee_nat_address`\nTerraform resource.\n\nUnlike [google.apigee_nat_address.new](#fn-apigeenataddressnew), this function will not inject the `resource`\nblock into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the\n[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.\n\nThis is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to\ninjecting into a complete block.\n\n**Args**:\n  - `instance_id` (`string`): The Apigee instance associated with the Apigee environment,\nin the format &#39;organizations/{{org_name}}/instances/{{instance_name}}&#39;.\n  - `name` (`string`): Resource ID of the NAT address.\n  - `timeouts` (`obj`):  When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.apigee_nat_address.timeouts.new](#fn-apigeenataddresstimeoutsnew) constructor.\n\n**Returns**:\n  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `apigee_nat_address` resource into the root Terraform configuration.\n', args=[]),
  newAttrs(
    instance_id,
    name,
    timeouts=null
  ):: std.prune(a={
    instance_id: instance_id,
    name: name,
    timeouts: timeouts,
  }),
  timeouts:: {
    '#new':: d.fn(help='\n`google.apigee_nat_address.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`\nTerraform sub block.\n\n\n\n**Args**:\n  - `create` (`string`):  When `null`, the `create` field will be omitted from the resulting object.\n  - `delete` (`string`):  When `null`, the `delete` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `timeouts` sub block.\n', args=[]),
    new(
      create=null,
      delete=null
    ):: std.prune(a={
      create: create,
      delete: delete,
    }),
  },
  '#withInstanceId':: d.fn(help='`google.apigee_nat_address.withInstanceId` constructs a mixin object that can be merged into the `apigee_nat_address`\nTerraform resource block to set or update the instance_id field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`TODO`): The value to set for the `instance_id` field.\n', args=[]),
  withInstanceId(resourceLabel, value):: {
    resource+: {
      google_apigee_nat_address+: {
        [resourceLabel]+: {
          instance_id: value,
        },
      },
    },
  },
  '#withName':: d.fn(help='`google.apigee_nat_address.withName` constructs a mixin object that can be merged into the `apigee_nat_address`\nTerraform resource block to set or update the name field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`TODO`): The value to set for the `name` field.\n', args=[]),
  withName(resourceLabel, value):: {
    resource+: {
      google_apigee_nat_address+: {
        [resourceLabel]+: {
          name: value,
        },
      },
    },
  },
  '#withTimeouts':: d.fn(help='`google.apigee_nat_address.withTimeouts` constructs a mixin object that can be merged into the `apigee_nat_address`\nTerraform resource block to set or update the timeouts field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`TODO`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeouts(resourceLabel, value):: {
    resource+: {
      google_apigee_nat_address+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  '#withTimeoutsMixin':: d.fn(help='`google.apigee_nat_address.withTimeoutsMixin` constructs a mixin object that can be merged into the `apigee_nat_address`\nTerraform resource block to set or update the timeouts field.\n\nThis function will merge the passed in value to the existing map. If you wish\nto instead replace the entire map with the passed in `value`, use the [google.apigee_nat_address.withTimeouts](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`TODO`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeoutsMixin(resourceLabel, value):: {
    resource+: {
      google_apigee_nat_address+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
}
