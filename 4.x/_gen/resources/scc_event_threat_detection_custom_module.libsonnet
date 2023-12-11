local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
local d = (import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet');
{
  '#':: d.pkg(name='scc_event_threat_detection_custom_module', url='', help='`scc_event_threat_detection_custom_module` represents the `google_scc_event_threat_detection_custom_module` Terraform resource.\n\n\n\nThis package contains functions and utilities for setting up the resource using Jsonnet code.\n'),
  '#new':: d.fn(help="\n`google.scc_event_threat_detection_custom_module.new` injects a new `google_scc_event_threat_detection_custom_module` Terraform `resource`\nblock into the root module document.\n\nAdditionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the\nresource. For example, if you added a new instance to the root using:\n\n    # arguments omitted for brevity\n    google.scc_event_threat_detection_custom_module.new('some_id')\n\nYou can get the reference to the `id` field of the created `google.scc_event_threat_detection_custom_module` using the reference:\n\n    $._ref.google_scc_event_threat_detection_custom_module.some_id.get('id')\n\nThis is the same as directly entering `\"${ google_scc_event_threat_detection_custom_module.some_id.id }\"` as the value.\n\nNOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,\nor `$` to refer to the root object. Instead, make an explicit outer object using `local`.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block.\n  - `config` (`string`): Config for the module. For the resident module, its config value is defined at this level.\nFor the inherited module, its config value is inherited from the ancestor module.\n  - `display_name` (`string`): The human readable name to be displayed for the module. When `null`, the `display_name` field will be omitted from the resulting object.\n  - `enablement_state` (`string`): The state of enablement for the module at the given level of the hierarchy. Possible values: [\u0026#34;ENABLED\u0026#34;, \u0026#34;DISABLED\u0026#34;]\n  - `organization` (`string`): Numerical ID of the parent organization.\n  - `type` (`string`): Immutable. Type for the module. e.g. CONFIGURABLE_BAD_IP.\n  - `timeouts` (`obj`): Set the `timeouts` field on the resulting resource block. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.scc_event_threat_detection_custom_module.timeouts.new](#fn-timeoutsnew) constructor.\n\n**Returns**:\n- A mixin object that injects the new resource into the root Terraform configuration.\n", args=[]),
  new(
    resourceLabel,
    config,
    enablement_state,
    organization,
    type,
    display_name=null,
    timeouts=null,
    _meta={}
  ):: tf.withResource(
    type='google_scc_event_threat_detection_custom_module',
    label=resourceLabel,
    attrs=self.newAttrs(
      config=config,
      display_name=display_name,
      enablement_state=enablement_state,
      organization=organization,
      timeouts=timeouts,
      type=type
    ),
    _meta=_meta
  ),
  '#newAttrs':: d.fn(help='\n`google.scc_event_threat_detection_custom_module.newAttrs` constructs a new object with attributes and blocks configured for the `scc_event_threat_detection_custom_module`\nTerraform resource.\n\nUnlike [google.scc_event_threat_detection_custom_module.new](#fn-new), this function will not inject the `resource`\nblock into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the\n[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.\n\nThis is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to\ninjecting into a complete block.\n\n**Args**:\n  - `config` (`string`): Config for the module. For the resident module, its config value is defined at this level.\nFor the inherited module, its config value is inherited from the ancestor module.\n  - `display_name` (`string`): The human readable name to be displayed for the module. When `null`, the `display_name` field will be omitted from the resulting object.\n  - `enablement_state` (`string`): The state of enablement for the module at the given level of the hierarchy. Possible values: [&#34;ENABLED&#34;, &#34;DISABLED&#34;]\n  - `organization` (`string`): Numerical ID of the parent organization.\n  - `type` (`string`): Immutable. Type for the module. e.g. CONFIGURABLE_BAD_IP.\n  - `timeouts` (`obj`): Set the `timeouts` field on the resulting object. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.scc_event_threat_detection_custom_module.timeouts.new](#fn-timeoutsnew) constructor.\n\n**Returns**:\n  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `scc_event_threat_detection_custom_module` resource into the root Terraform configuration.\n', args=[]),
  newAttrs(
    config,
    enablement_state,
    organization,
    type,
    display_name=null,
    timeouts=null
  ):: std.prune(a={
    config: config,
    display_name: display_name,
    enablement_state: enablement_state,
    organization: organization,
    timeouts: timeouts,
    type: type,
  }),
  timeouts:: {
    '#new':: d.fn(help='\n`google.scc_event_threat_detection_custom_module.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`\nTerraform sub block.\n\n\n\n**Args**:\n  - `create` (`string`): Set the `create` field on the resulting object. When `null`, the `create` field will be omitted from the resulting object.\n  - `delete` (`string`): Set the `delete` field on the resulting object. When `null`, the `delete` field will be omitted from the resulting object.\n  - `update` (`string`): Set the `update` field on the resulting object. When `null`, the `update` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `timeouts` sub block.\n', args=[]),
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
  '#withConfig':: d.fn(help='`google.string.withConfig` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the config field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `config` field.\n', args=[]),
  withConfig(resourceLabel, value): {
    resource+: {
      google_scc_event_threat_detection_custom_module+: {
        [resourceLabel]+: {
          config: value,
        },
      },
    },
  },
  '#withDisplayName':: d.fn(help='`google.string.withDisplayName` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the display_name field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `display_name` field.\n', args=[]),
  withDisplayName(resourceLabel, value): {
    resource+: {
      google_scc_event_threat_detection_custom_module+: {
        [resourceLabel]+: {
          display_name: value,
        },
      },
    },
  },
  '#withEnablementState':: d.fn(help='`google.string.withEnablementState` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the enablement_state field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `enablement_state` field.\n', args=[]),
  withEnablementState(resourceLabel, value): {
    resource+: {
      google_scc_event_threat_detection_custom_module+: {
        [resourceLabel]+: {
          enablement_state: value,
        },
      },
    },
  },
  '#withOrganization':: d.fn(help='`google.string.withOrganization` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the organization field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `organization` field.\n', args=[]),
  withOrganization(resourceLabel, value): {
    resource+: {
      google_scc_event_threat_detection_custom_module+: {
        [resourceLabel]+: {
          organization: value,
        },
      },
    },
  },
  '#withTimeouts':: d.fn(help='`google.obj.withTimeouts` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will replace the map with the passed in `value`. If you wish to instead merge the\npassed in value to the existing map, use the [google.obj.withTimeoutsMixin](TODO) function.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeouts(resourceLabel, value): {
    resource+: {
      google_scc_event_threat_detection_custom_module+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  '#withTimeoutsMixin':: d.fn(help='`google.obj.withTimeoutsMixin` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will merge the passed in value to the existing map. If you wish\nto instead replace the entire map with the passed in `value`, use the [google.obj.withTimeouts](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeoutsMixin(resourceLabel, value): {
    resource+: {
      google_scc_event_threat_detection_custom_module+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
  '#withType':: d.fn(help='`google.string.withType` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the type field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `type` field.\n', args=[]),
  withType(resourceLabel, value): {
    resource+: {
      google_scc_event_threat_detection_custom_module+: {
        [resourceLabel]+: {
          type: value,
        },
      },
    },
  },
}
