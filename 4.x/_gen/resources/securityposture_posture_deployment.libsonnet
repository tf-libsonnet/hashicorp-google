local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
local d = (import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet');
{
  '#':: d.pkg(name='securityposture_posture_deployment', url='', help='`securityposture_posture_deployment` represents the `google_securityposture_posture_deployment` Terraform resource.\n\n\n\nThis package contains functions and utilities for setting up the resource using Jsonnet code.\n'),
  '#new':: d.fn(help="\n`google.securityposture_posture_deployment.new` injects a new `google_securityposture_posture_deployment` Terraform `resource`\nblock into the root module document.\n\nAdditionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the\nresource. For example, if you added a new instance to the root using:\n\n    # arguments omitted for brevity\n    google.securityposture_posture_deployment.new('some_id')\n\nYou can get the reference to the `id` field of the created `google.securityposture_posture_deployment` using the reference:\n\n    $._ref.google_securityposture_posture_deployment.some_id.get('id')\n\nThis is the same as directly entering `\"${ google_securityposture_posture_deployment.some_id.id }\"` as the value.\n\nNOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,\nor `$` to refer to the root object. Instead, make an explicit outer object using `local`.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block.\n  - `description` (`string`): Description of the posture deployment. When `null`, the `description` field will be omitted from the resulting object.\n  - `location` (`string`): The location of the resource, eg. global\u0026#39;.\n  - `parent` (`string`): The parent of the resource, an organization. Format should be \u0026#39;organizations/{organization_id}\u0026#39;.\n  - `posture_deployment_id` (`string`): ID of the posture deployment.\n  - `posture_id` (`string`): Relative name of the posture which needs to be deployed. It should be in the format:\n  organizations/\u0026lt;ORG_ID\u0026gt;/locations/\u0026lt;LOCATION\u0026gt;/postures/\u0026lt;postureID\u0026gt;\n  - `posture_revision_id` (`string`): Revision_id the posture which needs to be deployed.\n  - `target_resource` (`string`): The resource on which the posture should be deployed. This can be in one of the following formats:\nprojects/\u0026lt;project_number\u0026gt;\nfolders/\u0026lt;folder_number\u0026gt;\norganizations/\u0026lt;organization_id\u0026gt;\n  - `timeouts` (`obj`): Set the `timeouts` field on the resulting resource block. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.securityposture_posture_deployment.timeouts.new](#fn-timeoutsnew) constructor.\n\n**Returns**:\n- A mixin object that injects the new resource into the root Terraform configuration.\n", args=[]),
  new(
    resourceLabel,
    location,
    parent,
    posture_deployment_id,
    posture_id,
    posture_revision_id,
    target_resource,
    description=null,
    timeouts=null,
    _meta={}
  ):: tf.withResource(
    type='google_securityposture_posture_deployment',
    label=resourceLabel,
    attrs=self.newAttrs(
      description=description,
      location=location,
      parent=parent,
      posture_deployment_id=posture_deployment_id,
      posture_id=posture_id,
      posture_revision_id=posture_revision_id,
      target_resource=target_resource,
      timeouts=timeouts
    ),
    _meta=_meta
  ),
  '#newAttrs':: d.fn(help='\n`google.securityposture_posture_deployment.newAttrs` constructs a new object with attributes and blocks configured for the `securityposture_posture_deployment`\nTerraform resource.\n\nUnlike [google.securityposture_posture_deployment.new](#fn-new), this function will not inject the `resource`\nblock into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the\n[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.\n\nThis is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to\ninjecting into a complete block.\n\n**Args**:\n  - `description` (`string`): Description of the posture deployment. When `null`, the `description` field will be omitted from the resulting object.\n  - `location` (`string`): The location of the resource, eg. global&#39;.\n  - `parent` (`string`): The parent of the resource, an organization. Format should be &#39;organizations/{organization_id}&#39;.\n  - `posture_deployment_id` (`string`): ID of the posture deployment.\n  - `posture_id` (`string`): Relative name of the posture which needs to be deployed. It should be in the format:\n  organizations/&lt;ORG_ID&gt;/locations/&lt;LOCATION&gt;/postures/&lt;postureID&gt;\n  - `posture_revision_id` (`string`): Revision_id the posture which needs to be deployed.\n  - `target_resource` (`string`): The resource on which the posture should be deployed. This can be in one of the following formats:\nprojects/&lt;project_number&gt;\nfolders/&lt;folder_number&gt;\norganizations/&lt;organization_id&gt;\n  - `timeouts` (`obj`): Set the `timeouts` field on the resulting object. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.securityposture_posture_deployment.timeouts.new](#fn-timeoutsnew) constructor.\n\n**Returns**:\n  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `securityposture_posture_deployment` resource into the root Terraform configuration.\n', args=[]),
  newAttrs(
    location,
    parent,
    posture_deployment_id,
    posture_id,
    posture_revision_id,
    target_resource,
    description=null,
    timeouts=null
  ):: std.prune(a={
    description: description,
    location: location,
    parent: parent,
    posture_deployment_id: posture_deployment_id,
    posture_id: posture_id,
    posture_revision_id: posture_revision_id,
    target_resource: target_resource,
    timeouts: timeouts,
  }),
  timeouts:: {
    '#new':: d.fn(help='\n`google.securityposture_posture_deployment.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`\nTerraform sub block.\n\n\n\n**Args**:\n  - `create` (`string`): Set the `create` field on the resulting object. When `null`, the `create` field will be omitted from the resulting object.\n  - `delete` (`string`): Set the `delete` field on the resulting object. When `null`, the `delete` field will be omitted from the resulting object.\n  - `update` (`string`): Set the `update` field on the resulting object. When `null`, the `update` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `timeouts` sub block.\n', args=[]),
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
  '#withDescription':: d.fn(help='`google.string.withDescription` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the description field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `description` field.\n', args=[]),
  withDescription(resourceLabel, value): {
    resource+: {
      google_securityposture_posture_deployment+: {
        [resourceLabel]+: {
          description: value,
        },
      },
    },
  },
  '#withLocation':: d.fn(help='`google.string.withLocation` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the location field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `location` field.\n', args=[]),
  withLocation(resourceLabel, value): {
    resource+: {
      google_securityposture_posture_deployment+: {
        [resourceLabel]+: {
          location: value,
        },
      },
    },
  },
  '#withParent':: d.fn(help='`google.string.withParent` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the parent field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `parent` field.\n', args=[]),
  withParent(resourceLabel, value): {
    resource+: {
      google_securityposture_posture_deployment+: {
        [resourceLabel]+: {
          parent: value,
        },
      },
    },
  },
  '#withPostureDeploymentId':: d.fn(help='`google.string.withPostureDeploymentId` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the posture_deployment_id field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `posture_deployment_id` field.\n', args=[]),
  withPostureDeploymentId(resourceLabel, value): {
    resource+: {
      google_securityposture_posture_deployment+: {
        [resourceLabel]+: {
          posture_deployment_id: value,
        },
      },
    },
  },
  '#withPostureId':: d.fn(help='`google.string.withPostureId` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the posture_id field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `posture_id` field.\n', args=[]),
  withPostureId(resourceLabel, value): {
    resource+: {
      google_securityposture_posture_deployment+: {
        [resourceLabel]+: {
          posture_id: value,
        },
      },
    },
  },
  '#withPostureRevisionId':: d.fn(help='`google.string.withPostureRevisionId` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the posture_revision_id field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `posture_revision_id` field.\n', args=[]),
  withPostureRevisionId(resourceLabel, value): {
    resource+: {
      google_securityposture_posture_deployment+: {
        [resourceLabel]+: {
          posture_revision_id: value,
        },
      },
    },
  },
  '#withTargetResource':: d.fn(help='`google.string.withTargetResource` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the target_resource field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `target_resource` field.\n', args=[]),
  withTargetResource(resourceLabel, value): {
    resource+: {
      google_securityposture_posture_deployment+: {
        [resourceLabel]+: {
          target_resource: value,
        },
      },
    },
  },
  '#withTimeouts':: d.fn(help='`google.obj.withTimeouts` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will replace the map with the passed in `value`. If you wish to instead merge the\npassed in value to the existing map, use the [google.obj.withTimeoutsMixin](TODO) function.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeouts(resourceLabel, value): {
    resource+: {
      google_securityposture_posture_deployment+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  '#withTimeoutsMixin':: d.fn(help='`google.obj.withTimeoutsMixin` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will merge the passed in value to the existing map. If you wish\nto instead replace the entire map with the passed in `value`, use the [google.obj.withTimeouts](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeoutsMixin(resourceLabel, value): {
    resource+: {
      google_securityposture_posture_deployment+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
}
