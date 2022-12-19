local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
local d = (import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet');
{
  '#':: d.pkg(name='app_engine_firewall_rule', url='', help='`app_engine_firewall_rule` represents the `google_app_engine_firewall_rule` Terraform resource.\n\n\n\nThis package contains functions and utilities for setting up the resource using Jsonnet code.\n'),
  '#new':: d.fn(help="\n`google.app_engine_firewall_rule.new` injects a new `google_app_engine_firewall_rule` Terraform `resource`\nblock into the root module document.\n\nAdditionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the\nresource. For example, if you added a new instance to the root using:\n\n    # arguments omitted for brevity\n    google.app_engine_firewall_rule.new('some_id')\n\nYou can get the reference to the `id` field of the created `google.app_engine_firewall_rule` using the reference:\n\n    $._ref.google_app_engine_firewall_rule.some_id.get('id')\n\nThis is the same as directly entering `\"${ google_app_engine_firewall_rule.some_id.id }\"` as the value.\n\nNOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,\nor `$` to refer to the root object. Instead, make an explicit outer object using `local`.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block.\n  - `action` (`string`): The action to take if this rule matches. Possible values: [\u0026#34;UNSPECIFIED_ACTION\u0026#34;, \u0026#34;ALLOW\u0026#34;, \u0026#34;DENY\u0026#34;]\n  - `description` (`string`): An optional string description of this rule. When `null`, the `description` field will be omitted from the resulting object.\n  - `priority` (`number`): A positive integer that defines the order of rule evaluation.\nRules with the lowest priority are evaluated first.\n\nA default rule at priority Int32.MaxValue matches all IPv4 and\nIPv6 traffic when no previous rule matches. Only the action of\nthis rule can be modified by the user. When `null`, the `priority` field will be omitted from the resulting object.\n  - `project` (`string`):  When `null`, the `project` field will be omitted from the resulting object.\n  - `source_range` (`string`): IP address or range, defined using CIDR notation, of requests that this rule applies to.\n  - `timeouts` (`obj`):  When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.app_engine_firewall_rule.timeouts.new](#fn-app_engine_firewall_ruletimeoutsnew) constructor.\n\n**Returns**:\n- A mixin object that injects the new resource into the root Terraform configuration.\n", args=[]),
  new(
    resourceLabel,
    action,
    source_range,
    description=null,
    priority=null,
    project=null,
    timeouts=null,
    _meta={}
  ):: tf.withResource(
    type='google_app_engine_firewall_rule',
    label=resourceLabel,
    attrs=self.newAttrs(
      action=action,
      description=description,
      priority=priority,
      project=project,
      source_range=source_range,
      timeouts=timeouts
    ),
    _meta=_meta
  ),
  '#newAttrs':: d.fn(help='\n`google.app_engine_firewall_rule.newAttrs` constructs a new object with attributes and blocks configured for the `app_engine_firewall_rule`\nTerraform resource.\n\nUnlike [google.app_engine_firewall_rule.new](#fn-app_engine_firewall_rulenew), this function will not inject the `resource`\nblock into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the\n[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.\n\nThis is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to\ninjecting into a complete block.\n\n**Args**:\n  - `action` (`string`): The action to take if this rule matches. Possible values: [&#34;UNSPECIFIED_ACTION&#34;, &#34;ALLOW&#34;, &#34;DENY&#34;]\n  - `description` (`string`): An optional string description of this rule. When `null`, the `description` field will be omitted from the resulting object.\n  - `priority` (`number`): A positive integer that defines the order of rule evaluation.\nRules with the lowest priority are evaluated first.\n\nA default rule at priority Int32.MaxValue matches all IPv4 and\nIPv6 traffic when no previous rule matches. Only the action of\nthis rule can be modified by the user. When `null`, the `priority` field will be omitted from the resulting object.\n  - `project` (`string`):  When `null`, the `project` field will be omitted from the resulting object.\n  - `source_range` (`string`): IP address or range, defined using CIDR notation, of requests that this rule applies to.\n  - `timeouts` (`obj`):  When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.app_engine_firewall_rule.timeouts.new](#fn-app_engine_firewall_ruletimeoutsnew) constructor.\n\n**Returns**:\n  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `app_engine_firewall_rule` resource into the root Terraform configuration.\n', args=[]),
  newAttrs(
    action,
    source_range,
    description=null,
    priority=null,
    project=null,
    timeouts=null
  ):: std.prune(a={
    action: action,
    description: description,
    priority: priority,
    project: project,
    source_range: source_range,
    timeouts: timeouts,
  }),
  timeouts:: {
    '#new':: d.fn(help='\n`google.app_engine_firewall_rule.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`\nTerraform sub block.\n\n\n\n**Args**:\n  - `create` (`string`):  When `null`, the `create` field will be omitted from the resulting object.\n  - `delete` (`string`):  When `null`, the `delete` field will be omitted from the resulting object.\n  - `update` (`string`):  When `null`, the `update` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `timeouts` sub block.\n', args=[]),
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
  '#withAction':: d.fn(help='`google.string.withAction` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the action field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `action` field.\n', args=[]),
  withAction(resourceLabel, value): {
    resource+: {
      google_app_engine_firewall_rule+: {
        [resourceLabel]+: {
          action: value,
        },
      },
    },
  },
  '#withDescription':: d.fn(help='`google.string.withDescription` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the description field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `description` field.\n', args=[]),
  withDescription(resourceLabel, value): {
    resource+: {
      google_app_engine_firewall_rule+: {
        [resourceLabel]+: {
          description: value,
        },
      },
    },
  },
  '#withPriority':: d.fn(help='`google.number.withPriority` constructs a mixin object that can be merged into the `number`\nTerraform resource block to set or update the priority field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`number`): The value to set for the `priority` field.\n', args=[]),
  withPriority(resourceLabel, value): {
    resource+: {
      google_app_engine_firewall_rule+: {
        [resourceLabel]+: {
          priority: value,
        },
      },
    },
  },
  '#withProject':: d.fn(help='`google.string.withProject` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the project field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `project` field.\n', args=[]),
  withProject(resourceLabel, value): {
    resource+: {
      google_app_engine_firewall_rule+: {
        [resourceLabel]+: {
          project: value,
        },
      },
    },
  },
  '#withSourceRange':: d.fn(help='`google.string.withSourceRange` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the source_range field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `source_range` field.\n', args=[]),
  withSourceRange(resourceLabel, value): {
    resource+: {
      google_app_engine_firewall_rule+: {
        [resourceLabel]+: {
          source_range: value,
        },
      },
    },
  },
  '#withTimeouts':: d.fn(help='`google.obj.withTimeouts` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will replace the map with the passed in `value`. If you wish to instead merge the\npassed in value to the existing map, use the [google.obj.withTimeoutsMixin](TODO) function.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeouts(resourceLabel, value): {
    resource+: {
      google_app_engine_firewall_rule+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  '#withTimeoutsMixin':: d.fn(help='`google.obj.withTimeoutsMixin` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will merge the passed in value to the existing map. If you wish\nto instead replace the entire map with the passed in `value`, use the [google.obj.withTimeouts](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeoutsMixin(resourceLabel, value): {
    resource+: {
      google_app_engine_firewall_rule+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
}
