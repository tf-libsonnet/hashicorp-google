local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
local d = (import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet');
{
  '#':: d.pkg(name='apigee_flowhook', url='', help='`apigee_flowhook` represents the `google_apigee_flowhook` Terraform resource.\n\n\n\nThis package contains functions and utilities for setting up the resource using Jsonnet code.\n'),
  '#new':: d.fn(help="\n`google.apigee_flowhook.new` injects a new `google_apigee_flowhook` Terraform `resource`\nblock into the root module document.\n\nAdditionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the\nresource. For example, if you added a new instance to the root using:\n\n    # arguments omitted for brevity\n    google.apigee_flowhook.new('some_id')\n\nYou can get the reference to the `id` field of the created `google.apigee_flowhook` using the reference:\n\n    $._ref.google_apigee_flowhook.some_id.get('id')\n\nThis is the same as directly entering `\"${ google_apigee_flowhook.some_id.id }\"` as the value.\n\nNOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,\nor `$` to refer to the root object. Instead, make an explicit outer object using `local`.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block.\n  - `continue_on_error` (`bool`): Flag that specifies whether execution should continue if the flow hook throws an exception. Set to true to continue execution. Set to false to stop execution if the flow hook throws an exception. Defaults to true. When `null`, the `continue_on_error` field will be omitted from the resulting object.\n  - `description` (`string`): Description of the flow hook. When `null`, the `description` field will be omitted from the resulting object.\n  - `environment` (`string`): The resource ID of the environment.\n  - `flow_hook_point` (`string`): Where in the API call flow the flow hook is invoked. Must be one of PreProxyFlowHook, PostProxyFlowHook, PreTargetFlowHook, or PostTargetFlowHook.\n  - `org_id` (`string`): The Apigee Organization associated with the environment\n  - `sharedflow` (`string`): Id of the Sharedflow attaching to a flowhook point.\n  - `timeouts` (`obj`): Set the `timeouts` field on the resulting resource block. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.apigee_flowhook.timeouts.new](#fn-timeoutsnew) constructor.\n\n**Returns**:\n- A mixin object that injects the new resource into the root Terraform configuration.\n", args=[]),
  new(
    resourceLabel,
    environment,
    flow_hook_point,
    org_id,
    sharedflow,
    continue_on_error=null,
    description=null,
    timeouts=null,
    _meta={}
  ):: tf.withResource(
    type='google_apigee_flowhook',
    label=resourceLabel,
    attrs=self.newAttrs(
      continue_on_error=continue_on_error,
      description=description,
      environment=environment,
      flow_hook_point=flow_hook_point,
      org_id=org_id,
      sharedflow=sharedflow,
      timeouts=timeouts
    ),
    _meta=_meta
  ),
  '#newAttrs':: d.fn(help='\n`google.apigee_flowhook.newAttrs` constructs a new object with attributes and blocks configured for the `apigee_flowhook`\nTerraform resource.\n\nUnlike [google.apigee_flowhook.new](#fn-new), this function will not inject the `resource`\nblock into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the\n[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.\n\nThis is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to\ninjecting into a complete block.\n\n**Args**:\n  - `continue_on_error` (`bool`): Flag that specifies whether execution should continue if the flow hook throws an exception. Set to true to continue execution. Set to false to stop execution if the flow hook throws an exception. Defaults to true. When `null`, the `continue_on_error` field will be omitted from the resulting object.\n  - `description` (`string`): Description of the flow hook. When `null`, the `description` field will be omitted from the resulting object.\n  - `environment` (`string`): The resource ID of the environment.\n  - `flow_hook_point` (`string`): Where in the API call flow the flow hook is invoked. Must be one of PreProxyFlowHook, PostProxyFlowHook, PreTargetFlowHook, or PostTargetFlowHook.\n  - `org_id` (`string`): The Apigee Organization associated with the environment\n  - `sharedflow` (`string`): Id of the Sharedflow attaching to a flowhook point.\n  - `timeouts` (`obj`): Set the `timeouts` field on the resulting object. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.apigee_flowhook.timeouts.new](#fn-timeoutsnew) constructor.\n\n**Returns**:\n  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `apigee_flowhook` resource into the root Terraform configuration.\n', args=[]),
  newAttrs(
    environment,
    flow_hook_point,
    org_id,
    sharedflow,
    continue_on_error=null,
    description=null,
    timeouts=null
  ):: std.prune(a={
    continue_on_error: continue_on_error,
    description: description,
    environment: environment,
    flow_hook_point: flow_hook_point,
    org_id: org_id,
    sharedflow: sharedflow,
    timeouts: timeouts,
  }),
  timeouts:: {
    '#new':: d.fn(help='\n`google.apigee_flowhook.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`\nTerraform sub block.\n\n\n\n**Args**:\n  - `create` (`string`): Set the `create` field on the resulting object. When `null`, the `create` field will be omitted from the resulting object.\n  - `delete` (`string`): Set the `delete` field on the resulting object. When `null`, the `delete` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `timeouts` sub block.\n', args=[]),
    new(
      create=null,
      delete=null
    ):: std.prune(a={
      create: create,
      delete: delete,
    }),
  },
  '#withContinueOnError':: d.fn(help='`google.bool.withContinueOnError` constructs a mixin object that can be merged into the `bool`\nTerraform resource block to set or update the continue_on_error field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`bool`): The value to set for the `continue_on_error` field.\n', args=[]),
  withContinueOnError(resourceLabel, value): {
    resource+: {
      google_apigee_flowhook+: {
        [resourceLabel]+: {
          continue_on_error: value,
        },
      },
    },
  },
  '#withDescription':: d.fn(help='`google.string.withDescription` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the description field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `description` field.\n', args=[]),
  withDescription(resourceLabel, value): {
    resource+: {
      google_apigee_flowhook+: {
        [resourceLabel]+: {
          description: value,
        },
      },
    },
  },
  '#withEnvironment':: d.fn(help='`google.string.withEnvironment` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the environment field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `environment` field.\n', args=[]),
  withEnvironment(resourceLabel, value): {
    resource+: {
      google_apigee_flowhook+: {
        [resourceLabel]+: {
          environment: value,
        },
      },
    },
  },
  '#withFlowHookPoint':: d.fn(help='`google.string.withFlowHookPoint` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the flow_hook_point field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `flow_hook_point` field.\n', args=[]),
  withFlowHookPoint(resourceLabel, value): {
    resource+: {
      google_apigee_flowhook+: {
        [resourceLabel]+: {
          flow_hook_point: value,
        },
      },
    },
  },
  '#withOrgId':: d.fn(help='`google.string.withOrgId` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the org_id field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `org_id` field.\n', args=[]),
  withOrgId(resourceLabel, value): {
    resource+: {
      google_apigee_flowhook+: {
        [resourceLabel]+: {
          org_id: value,
        },
      },
    },
  },
  '#withSharedflow':: d.fn(help='`google.string.withSharedflow` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the sharedflow field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `sharedflow` field.\n', args=[]),
  withSharedflow(resourceLabel, value): {
    resource+: {
      google_apigee_flowhook+: {
        [resourceLabel]+: {
          sharedflow: value,
        },
      },
    },
  },
  '#withTimeouts':: d.fn(help='`google.obj.withTimeouts` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will replace the map with the passed in `value`. If you wish to instead merge the\npassed in value to the existing map, use the [google.obj.withTimeoutsMixin](TODO) function.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeouts(resourceLabel, value): {
    resource+: {
      google_apigee_flowhook+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  '#withTimeoutsMixin':: d.fn(help='`google.obj.withTimeoutsMixin` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will merge the passed in value to the existing map. If you wish\nto instead replace the entire map with the passed in `value`, use the [google.obj.withTimeouts](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeoutsMixin(resourceLabel, value): {
    resource+: {
      google_apigee_flowhook+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
}
