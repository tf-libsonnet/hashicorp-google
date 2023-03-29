local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
local d = (import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet');
{
  '#':: d.pkg(name='apigee_sharedflow_deployment', url='', help='`apigee_sharedflow_deployment` represents the `google_apigee_sharedflow_deployment` Terraform resource.\n\n\n\nThis package contains functions and utilities for setting up the resource using Jsonnet code.\n'),
  '#new':: d.fn(help="\n`google.apigee_sharedflow_deployment.new` injects a new `google_apigee_sharedflow_deployment` Terraform `resource`\nblock into the root module document.\n\nAdditionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the\nresource. For example, if you added a new instance to the root using:\n\n    # arguments omitted for brevity\n    google.apigee_sharedflow_deployment.new('some_id')\n\nYou can get the reference to the `id` field of the created `google.apigee_sharedflow_deployment` using the reference:\n\n    $._ref.google_apigee_sharedflow_deployment.some_id.get('id')\n\nThis is the same as directly entering `\"${ google_apigee_sharedflow_deployment.some_id.id }\"` as the value.\n\nNOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,\nor `$` to refer to the root object. Instead, make an explicit outer object using `local`.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block.\n  - `environment` (`string`): The resource ID of the environment.\n  - `org_id` (`string`): The Apigee Organization associated with the Apigee instance\n  - `revision` (`string`): Revision of the Sharedflow to be deployed.\n  - `service_account` (`string`): The service account represents the identity of the deployed proxy, and determines what permissions it has. The format must be {ACCOUNT_ID}@{PROJECT}.iam.gserviceaccount.com. When `null`, the `service_account` field will be omitted from the resulting object.\n  - `sharedflow_id` (`string`): Id of the Sharedflow to be deployed.\n  - `timeouts` (`obj`): Set the `timeouts` field on the resulting resource block. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.apigee_sharedflow_deployment.timeouts.new](#fn-timeoutsnew) constructor.\n\n**Returns**:\n- A mixin object that injects the new resource into the root Terraform configuration.\n", args=[]),
  new(
    resourceLabel,
    environment,
    org_id,
    revision,
    sharedflow_id,
    service_account=null,
    timeouts=null,
    _meta={}
  ):: tf.withResource(
    type='google_apigee_sharedflow_deployment',
    label=resourceLabel,
    attrs=self.newAttrs(
      environment=environment,
      org_id=org_id,
      revision=revision,
      service_account=service_account,
      sharedflow_id=sharedflow_id,
      timeouts=timeouts
    ),
    _meta=_meta
  ),
  '#newAttrs':: d.fn(help='\n`google.apigee_sharedflow_deployment.newAttrs` constructs a new object with attributes and blocks configured for the `apigee_sharedflow_deployment`\nTerraform resource.\n\nUnlike [google.apigee_sharedflow_deployment.new](#fn-new), this function will not inject the `resource`\nblock into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the\n[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.\n\nThis is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to\ninjecting into a complete block.\n\n**Args**:\n  - `environment` (`string`): The resource ID of the environment.\n  - `org_id` (`string`): The Apigee Organization associated with the Apigee instance\n  - `revision` (`string`): Revision of the Sharedflow to be deployed.\n  - `service_account` (`string`): The service account represents the identity of the deployed proxy, and determines what permissions it has. The format must be {ACCOUNT_ID}@{PROJECT}.iam.gserviceaccount.com. When `null`, the `service_account` field will be omitted from the resulting object.\n  - `sharedflow_id` (`string`): Id of the Sharedflow to be deployed.\n  - `timeouts` (`obj`): Set the `timeouts` field on the resulting object. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.apigee_sharedflow_deployment.timeouts.new](#fn-timeoutsnew) constructor.\n\n**Returns**:\n  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `apigee_sharedflow_deployment` resource into the root Terraform configuration.\n', args=[]),
  newAttrs(
    environment,
    org_id,
    revision,
    sharedflow_id,
    service_account=null,
    timeouts=null
  ):: std.prune(a={
    environment: environment,
    org_id: org_id,
    revision: revision,
    service_account: service_account,
    sharedflow_id: sharedflow_id,
    timeouts: timeouts,
  }),
  timeouts:: {
    '#new':: d.fn(help='\n`google.apigee_sharedflow_deployment.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`\nTerraform sub block.\n\n\n\n**Args**:\n  - `create` (`string`): Set the `create` field on the resulting object. When `null`, the `create` field will be omitted from the resulting object.\n  - `delete` (`string`): Set the `delete` field on the resulting object. When `null`, the `delete` field will be omitted from the resulting object.\n  - `update` (`string`): Set the `update` field on the resulting object. When `null`, the `update` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `timeouts` sub block.\n', args=[]),
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
  '#withEnvironment':: d.fn(help='`google.string.withEnvironment` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the environment field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `environment` field.\n', args=[]),
  withEnvironment(resourceLabel, value): {
    resource+: {
      google_apigee_sharedflow_deployment+: {
        [resourceLabel]+: {
          environment: value,
        },
      },
    },
  },
  '#withOrgId':: d.fn(help='`google.string.withOrgId` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the org_id field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `org_id` field.\n', args=[]),
  withOrgId(resourceLabel, value): {
    resource+: {
      google_apigee_sharedflow_deployment+: {
        [resourceLabel]+: {
          org_id: value,
        },
      },
    },
  },
  '#withRevision':: d.fn(help='`google.string.withRevision` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the revision field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `revision` field.\n', args=[]),
  withRevision(resourceLabel, value): {
    resource+: {
      google_apigee_sharedflow_deployment+: {
        [resourceLabel]+: {
          revision: value,
        },
      },
    },
  },
  '#withServiceAccount':: d.fn(help='`google.string.withServiceAccount` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the service_account field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `service_account` field.\n', args=[]),
  withServiceAccount(resourceLabel, value): {
    resource+: {
      google_apigee_sharedflow_deployment+: {
        [resourceLabel]+: {
          service_account: value,
        },
      },
    },
  },
  '#withSharedflowId':: d.fn(help='`google.string.withSharedflowId` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the sharedflow_id field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `sharedflow_id` field.\n', args=[]),
  withSharedflowId(resourceLabel, value): {
    resource+: {
      google_apigee_sharedflow_deployment+: {
        [resourceLabel]+: {
          sharedflow_id: value,
        },
      },
    },
  },
  '#withTimeouts':: d.fn(help='`google.obj.withTimeouts` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will replace the map with the passed in `value`. If you wish to instead merge the\npassed in value to the existing map, use the [google.obj.withTimeoutsMixin](TODO) function.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeouts(resourceLabel, value): {
    resource+: {
      google_apigee_sharedflow_deployment+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  '#withTimeoutsMixin':: d.fn(help='`google.obj.withTimeoutsMixin` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will merge the passed in value to the existing map. If you wish\nto instead replace the entire map with the passed in `value`, use the [google.obj.withTimeouts](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeoutsMixin(resourceLabel, value): {
    resource+: {
      google_apigee_sharedflow_deployment+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
}
