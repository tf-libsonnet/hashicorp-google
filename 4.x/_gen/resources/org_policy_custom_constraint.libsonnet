local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
local d = (import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet');
{
  '#':: d.pkg(name='org_policy_custom_constraint', url='', help='`org_policy_custom_constraint` represents the `google_org_policy_custom_constraint` Terraform resource.\n\n\n\nThis package contains functions and utilities for setting up the resource using Jsonnet code.\n'),
  '#new':: d.fn(help="\n`google.org_policy_custom_constraint.new` injects a new `google_org_policy_custom_constraint` Terraform `resource`\nblock into the root module document.\n\nAdditionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the\nresource. For example, if you added a new instance to the root using:\n\n    # arguments omitted for brevity\n    google.org_policy_custom_constraint.new('some_id')\n\nYou can get the reference to the `id` field of the created `google.org_policy_custom_constraint` using the reference:\n\n    $._ref.google_org_policy_custom_constraint.some_id.get('id')\n\nThis is the same as directly entering `\"${ google_org_policy_custom_constraint.some_id.id }\"` as the value.\n\nNOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,\nor `$` to refer to the root object. Instead, make an explicit outer object using `local`.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block.\n  - `action_type` (`string`): The action to take if the condition is met. Possible values: [\u0026#34;ALLOW\u0026#34;, \u0026#34;DENY\u0026#34;]\n  - `condition` (`string`): A CEL condition that refers to a supported service resource, for example \u0026#39;resource.management.autoUpgrade == false\u0026#39;. For details about CEL usage, see [Common Expression Language](https://cloud.google.com/resource-manager/docs/organization-policy/creating-managing-custom-constraints#common_expression_language).\n  - `description` (`string`): A human-friendly description of the constraint to display as an error message when the policy is violated. When `null`, the `description` field will be omitted from the resulting object.\n  - `display_name` (`string`): A human-friendly name for the constraint. When `null`, the `display_name` field will be omitted from the resulting object.\n  - `method_types` (`list`): A list of RESTful methods for which to enforce the constraint. Can be \u0026#39;CREATE\u0026#39;, \u0026#39;UPDATE\u0026#39;, or both. Not all Google Cloud services support both methods. To see supported methods for each service, find the service in [Supported services](https://cloud.google.com/resource-manager/docs/organization-policy/custom-constraint-supported-services).\n  - `name` (`string`): Immutable. The name of the custom constraint. This is unique within the organization.\n  - `parent` (`string`): The parent of the resource, an organization. Format should be \u0026#39;organizations/{organization_id}\u0026#39;.\n  - `resource_types` (`list`): Immutable. The fully qualified name of the Google Cloud REST resource containing the object and field you want to restrict. For example, \u0026#39;container.googleapis.com/NodePool\u0026#39;.\n  - `timeouts` (`obj`): Set the `timeouts` field on the resulting resource block. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.org_policy_custom_constraint.timeouts.new](#fn-timeoutsnew) constructor.\n\n**Returns**:\n- A mixin object that injects the new resource into the root Terraform configuration.\n", args=[]),
  new(
    resourceLabel,
    action_type,
    condition,
    method_types,
    name,
    parent,
    resource_types,
    description=null,
    display_name=null,
    timeouts=null,
    _meta={}
  ):: tf.withResource(
    type='google_org_policy_custom_constraint',
    label=resourceLabel,
    attrs=self.newAttrs(
      action_type=action_type,
      condition=condition,
      description=description,
      display_name=display_name,
      method_types=method_types,
      name=name,
      parent=parent,
      resource_types=resource_types,
      timeouts=timeouts
    ),
    _meta=_meta
  ),
  '#newAttrs':: d.fn(help='\n`google.org_policy_custom_constraint.newAttrs` constructs a new object with attributes and blocks configured for the `org_policy_custom_constraint`\nTerraform resource.\n\nUnlike [google.org_policy_custom_constraint.new](#fn-new), this function will not inject the `resource`\nblock into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the\n[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.\n\nThis is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to\ninjecting into a complete block.\n\n**Args**:\n  - `action_type` (`string`): The action to take if the condition is met. Possible values: [&#34;ALLOW&#34;, &#34;DENY&#34;]\n  - `condition` (`string`): A CEL condition that refers to a supported service resource, for example &#39;resource.management.autoUpgrade == false&#39;. For details about CEL usage, see [Common Expression Language](https://cloud.google.com/resource-manager/docs/organization-policy/creating-managing-custom-constraints#common_expression_language).\n  - `description` (`string`): A human-friendly description of the constraint to display as an error message when the policy is violated. When `null`, the `description` field will be omitted from the resulting object.\n  - `display_name` (`string`): A human-friendly name for the constraint. When `null`, the `display_name` field will be omitted from the resulting object.\n  - `method_types` (`list`): A list of RESTful methods for which to enforce the constraint. Can be &#39;CREATE&#39;, &#39;UPDATE&#39;, or both. Not all Google Cloud services support both methods. To see supported methods for each service, find the service in [Supported services](https://cloud.google.com/resource-manager/docs/organization-policy/custom-constraint-supported-services).\n  - `name` (`string`): Immutable. The name of the custom constraint. This is unique within the organization.\n  - `parent` (`string`): The parent of the resource, an organization. Format should be &#39;organizations/{organization_id}&#39;.\n  - `resource_types` (`list`): Immutable. The fully qualified name of the Google Cloud REST resource containing the object and field you want to restrict. For example, &#39;container.googleapis.com/NodePool&#39;.\n  - `timeouts` (`obj`): Set the `timeouts` field on the resulting object. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.org_policy_custom_constraint.timeouts.new](#fn-timeoutsnew) constructor.\n\n**Returns**:\n  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `org_policy_custom_constraint` resource into the root Terraform configuration.\n', args=[]),
  newAttrs(
    action_type,
    condition,
    method_types,
    name,
    parent,
    resource_types,
    description=null,
    display_name=null,
    timeouts=null
  ):: std.prune(a={
    action_type: action_type,
    condition: condition,
    description: description,
    display_name: display_name,
    method_types: method_types,
    name: name,
    parent: parent,
    resource_types: resource_types,
    timeouts: timeouts,
  }),
  timeouts:: {
    '#new':: d.fn(help='\n`google.org_policy_custom_constraint.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`\nTerraform sub block.\n\n\n\n**Args**:\n  - `create` (`string`): Set the `create` field on the resulting object. When `null`, the `create` field will be omitted from the resulting object.\n  - `delete` (`string`): Set the `delete` field on the resulting object. When `null`, the `delete` field will be omitted from the resulting object.\n  - `update` (`string`): Set the `update` field on the resulting object. When `null`, the `update` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `timeouts` sub block.\n', args=[]),
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
  '#withActionType':: d.fn(help='`google.string.withActionType` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the action_type field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `action_type` field.\n', args=[]),
  withActionType(resourceLabel, value): {
    resource+: {
      google_org_policy_custom_constraint+: {
        [resourceLabel]+: {
          action_type: value,
        },
      },
    },
  },
  '#withCondition':: d.fn(help='`google.string.withCondition` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the condition field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `condition` field.\n', args=[]),
  withCondition(resourceLabel, value): {
    resource+: {
      google_org_policy_custom_constraint+: {
        [resourceLabel]+: {
          condition: value,
        },
      },
    },
  },
  '#withDescription':: d.fn(help='`google.string.withDescription` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the description field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `description` field.\n', args=[]),
  withDescription(resourceLabel, value): {
    resource+: {
      google_org_policy_custom_constraint+: {
        [resourceLabel]+: {
          description: value,
        },
      },
    },
  },
  '#withDisplayName':: d.fn(help='`google.string.withDisplayName` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the display_name field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `display_name` field.\n', args=[]),
  withDisplayName(resourceLabel, value): {
    resource+: {
      google_org_policy_custom_constraint+: {
        [resourceLabel]+: {
          display_name: value,
        },
      },
    },
  },
  '#withMethodTypes':: d.fn(help='`google.list.withMethodTypes` constructs a mixin object that can be merged into the `list`\nTerraform resource block to set or update the method_types field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list`): The value to set for the `method_types` field.\n', args=[]),
  withMethodTypes(resourceLabel, value): {
    resource+: {
      google_org_policy_custom_constraint+: {
        [resourceLabel]+: {
          method_types: value,
        },
      },
    },
  },
  '#withName':: d.fn(help='`google.string.withName` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the name field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `name` field.\n', args=[]),
  withName(resourceLabel, value): {
    resource+: {
      google_org_policy_custom_constraint+: {
        [resourceLabel]+: {
          name: value,
        },
      },
    },
  },
  '#withParent':: d.fn(help='`google.string.withParent` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the parent field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `parent` field.\n', args=[]),
  withParent(resourceLabel, value): {
    resource+: {
      google_org_policy_custom_constraint+: {
        [resourceLabel]+: {
          parent: value,
        },
      },
    },
  },
  '#withResourceTypes':: d.fn(help='`google.list.withResourceTypes` constructs a mixin object that can be merged into the `list`\nTerraform resource block to set or update the resource_types field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list`): The value to set for the `resource_types` field.\n', args=[]),
  withResourceTypes(resourceLabel, value): {
    resource+: {
      google_org_policy_custom_constraint+: {
        [resourceLabel]+: {
          resource_types: value,
        },
      },
    },
  },
  '#withTimeouts':: d.fn(help='`google.obj.withTimeouts` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will replace the map with the passed in `value`. If you wish to instead merge the\npassed in value to the existing map, use the [google.obj.withTimeoutsMixin](TODO) function.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeouts(resourceLabel, value): {
    resource+: {
      google_org_policy_custom_constraint+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  '#withTimeoutsMixin':: d.fn(help='`google.obj.withTimeoutsMixin` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will merge the passed in value to the existing map. If you wish\nto instead replace the entire map with the passed in `value`, use the [google.obj.withTimeouts](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeoutsMixin(resourceLabel, value): {
    resource+: {
      google_org_policy_custom_constraint+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
}
