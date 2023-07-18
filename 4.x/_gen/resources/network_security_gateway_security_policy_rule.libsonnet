local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
local d = (import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet');
{
  '#':: d.pkg(name='network_security_gateway_security_policy_rule', url='', help='`network_security_gateway_security_policy_rule` represents the `google_network_security_gateway_security_policy_rule` Terraform resource.\n\n\n\nThis package contains functions and utilities for setting up the resource using Jsonnet code.\n'),
  '#new':: d.fn(help="\n`google.network_security_gateway_security_policy_rule.new` injects a new `google_network_security_gateway_security_policy_rule` Terraform `resource`\nblock into the root module document.\n\nAdditionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the\nresource. For example, if you added a new instance to the root using:\n\n    # arguments omitted for brevity\n    google.network_security_gateway_security_policy_rule.new('some_id')\n\nYou can get the reference to the `id` field of the created `google.network_security_gateway_security_policy_rule` using the reference:\n\n    $._ref.google_network_security_gateway_security_policy_rule.some_id.get('id')\n\nThis is the same as directly entering `\"${ google_network_security_gateway_security_policy_rule.some_id.id }\"` as the value.\n\nNOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,\nor `$` to refer to the root object. Instead, make an explicit outer object using `local`.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block.\n  - `application_matcher` (`string`): CEL expression for matching on L7/application level criteria. When `null`, the `application_matcher` field will be omitted from the resulting object.\n  - `basic_profile` (`string`): Profile which tells what the primitive action should be. Possible values are: * ALLOW * DENY. Possible values: [\u0026#34;BASIC_PROFILE_UNSPECIFIED\u0026#34;, \u0026#34;ALLOW\u0026#34;, \u0026#34;DENY\u0026#34;]\n  - `description` (`string`): Free-text description of the resource. When `null`, the `description` field will be omitted from the resulting object.\n  - `enabled` (`bool`): Whether the rule is enforced.\n  - `gateway_security_policy` (`string`): The name of the gatewat security policy this rule belongs to.\n  - `location` (`string`): The location of the gateway security policy.\n  - `name` (`string`): Name of the resource. ame is the full resource name so projects/{project}/locations/{location}/gatewaySecurityPolicies/{gateway_security_policy}/rules/{rule}\nrule should match the pattern: (^a-z?$).\n  - `priority` (`number`): Priority of the rule. Lower number corresponds to higher precedence.\n  - `project` (`string`): Set the `project` field on the resulting resource block. When `null`, the `project` field will be omitted from the resulting object.\n  - `session_matcher` (`string`): CEL expression for matching on session criteria.\n  - `tls_inspection_enabled` (`bool`): Flag to enable TLS inspection of traffic matching on. Can only be true if the\nparent GatewaySecurityPolicy references a TLSInspectionConfig. When `null`, the `tls_inspection_enabled` field will be omitted from the resulting object.\n  - `timeouts` (`obj`): Set the `timeouts` field on the resulting resource block. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.network_security_gateway_security_policy_rule.timeouts.new](#fn-timeoutsnew) constructor.\n\n**Returns**:\n- A mixin object that injects the new resource into the root Terraform configuration.\n", args=[]),
  new(
    resourceLabel,
    basic_profile,
    enabled,
    gateway_security_policy,
    location,
    name,
    priority,
    session_matcher,
    application_matcher=null,
    description=null,
    project=null,
    timeouts=null,
    tls_inspection_enabled=null,
    _meta={}
  ):: tf.withResource(
    type='google_network_security_gateway_security_policy_rule',
    label=resourceLabel,
    attrs=self.newAttrs(
      application_matcher=application_matcher,
      basic_profile=basic_profile,
      description=description,
      enabled=enabled,
      gateway_security_policy=gateway_security_policy,
      location=location,
      name=name,
      priority=priority,
      project=project,
      session_matcher=session_matcher,
      timeouts=timeouts,
      tls_inspection_enabled=tls_inspection_enabled
    ),
    _meta=_meta
  ),
  '#newAttrs':: d.fn(help='\n`google.network_security_gateway_security_policy_rule.newAttrs` constructs a new object with attributes and blocks configured for the `network_security_gateway_security_policy_rule`\nTerraform resource.\n\nUnlike [google.network_security_gateway_security_policy_rule.new](#fn-new), this function will not inject the `resource`\nblock into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the\n[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.\n\nThis is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to\ninjecting into a complete block.\n\n**Args**:\n  - `application_matcher` (`string`): CEL expression for matching on L7/application level criteria. When `null`, the `application_matcher` field will be omitted from the resulting object.\n  - `basic_profile` (`string`): Profile which tells what the primitive action should be. Possible values are: * ALLOW * DENY. Possible values: [&#34;BASIC_PROFILE_UNSPECIFIED&#34;, &#34;ALLOW&#34;, &#34;DENY&#34;]\n  - `description` (`string`): Free-text description of the resource. When `null`, the `description` field will be omitted from the resulting object.\n  - `enabled` (`bool`): Whether the rule is enforced.\n  - `gateway_security_policy` (`string`): The name of the gatewat security policy this rule belongs to.\n  - `location` (`string`): The location of the gateway security policy.\n  - `name` (`string`): Name of the resource. ame is the full resource name so projects/{project}/locations/{location}/gatewaySecurityPolicies/{gateway_security_policy}/rules/{rule}\nrule should match the pattern: (^a-z?$).\n  - `priority` (`number`): Priority of the rule. Lower number corresponds to higher precedence.\n  - `project` (`string`): Set the `project` field on the resulting object. When `null`, the `project` field will be omitted from the resulting object.\n  - `session_matcher` (`string`): CEL expression for matching on session criteria.\n  - `tls_inspection_enabled` (`bool`): Flag to enable TLS inspection of traffic matching on. Can only be true if the\nparent GatewaySecurityPolicy references a TLSInspectionConfig. When `null`, the `tls_inspection_enabled` field will be omitted from the resulting object.\n  - `timeouts` (`obj`): Set the `timeouts` field on the resulting object. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.network_security_gateway_security_policy_rule.timeouts.new](#fn-timeoutsnew) constructor.\n\n**Returns**:\n  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `network_security_gateway_security_policy_rule` resource into the root Terraform configuration.\n', args=[]),
  newAttrs(
    basic_profile,
    enabled,
    gateway_security_policy,
    location,
    name,
    priority,
    session_matcher,
    application_matcher=null,
    description=null,
    project=null,
    timeouts=null,
    tls_inspection_enabled=null
  ):: std.prune(a={
    application_matcher: application_matcher,
    basic_profile: basic_profile,
    description: description,
    enabled: enabled,
    gateway_security_policy: gateway_security_policy,
    location: location,
    name: name,
    priority: priority,
    project: project,
    session_matcher: session_matcher,
    timeouts: timeouts,
    tls_inspection_enabled: tls_inspection_enabled,
  }),
  timeouts:: {
    '#new':: d.fn(help='\n`google.network_security_gateway_security_policy_rule.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`\nTerraform sub block.\n\n\n\n**Args**:\n  - `create` (`string`): Set the `create` field on the resulting object. When `null`, the `create` field will be omitted from the resulting object.\n  - `delete` (`string`): Set the `delete` field on the resulting object. When `null`, the `delete` field will be omitted from the resulting object.\n  - `update` (`string`): Set the `update` field on the resulting object. When `null`, the `update` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `timeouts` sub block.\n', args=[]),
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
  '#withApplicationMatcher':: d.fn(help='`google.string.withApplicationMatcher` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the application_matcher field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `application_matcher` field.\n', args=[]),
  withApplicationMatcher(resourceLabel, value): {
    resource+: {
      google_network_security_gateway_security_policy_rule+: {
        [resourceLabel]+: {
          application_matcher: value,
        },
      },
    },
  },
  '#withBasicProfile':: d.fn(help='`google.string.withBasicProfile` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the basic_profile field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `basic_profile` field.\n', args=[]),
  withBasicProfile(resourceLabel, value): {
    resource+: {
      google_network_security_gateway_security_policy_rule+: {
        [resourceLabel]+: {
          basic_profile: value,
        },
      },
    },
  },
  '#withDescription':: d.fn(help='`google.string.withDescription` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the description field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `description` field.\n', args=[]),
  withDescription(resourceLabel, value): {
    resource+: {
      google_network_security_gateway_security_policy_rule+: {
        [resourceLabel]+: {
          description: value,
        },
      },
    },
  },
  '#withEnabled':: d.fn(help='`google.bool.withEnabled` constructs a mixin object that can be merged into the `bool`\nTerraform resource block to set or update the enabled field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`bool`): The value to set for the `enabled` field.\n', args=[]),
  withEnabled(resourceLabel, value): {
    resource+: {
      google_network_security_gateway_security_policy_rule+: {
        [resourceLabel]+: {
          enabled: value,
        },
      },
    },
  },
  '#withGatewaySecurityPolicy':: d.fn(help='`google.string.withGatewaySecurityPolicy` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the gateway_security_policy field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `gateway_security_policy` field.\n', args=[]),
  withGatewaySecurityPolicy(resourceLabel, value): {
    resource+: {
      google_network_security_gateway_security_policy_rule+: {
        [resourceLabel]+: {
          gateway_security_policy: value,
        },
      },
    },
  },
  '#withLocation':: d.fn(help='`google.string.withLocation` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the location field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `location` field.\n', args=[]),
  withLocation(resourceLabel, value): {
    resource+: {
      google_network_security_gateway_security_policy_rule+: {
        [resourceLabel]+: {
          location: value,
        },
      },
    },
  },
  '#withName':: d.fn(help='`google.string.withName` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the name field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `name` field.\n', args=[]),
  withName(resourceLabel, value): {
    resource+: {
      google_network_security_gateway_security_policy_rule+: {
        [resourceLabel]+: {
          name: value,
        },
      },
    },
  },
  '#withPriority':: d.fn(help='`google.number.withPriority` constructs a mixin object that can be merged into the `number`\nTerraform resource block to set or update the priority field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`number`): The value to set for the `priority` field.\n', args=[]),
  withPriority(resourceLabel, value): {
    resource+: {
      google_network_security_gateway_security_policy_rule+: {
        [resourceLabel]+: {
          priority: value,
        },
      },
    },
  },
  '#withProject':: d.fn(help='`google.string.withProject` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the project field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `project` field.\n', args=[]),
  withProject(resourceLabel, value): {
    resource+: {
      google_network_security_gateway_security_policy_rule+: {
        [resourceLabel]+: {
          project: value,
        },
      },
    },
  },
  '#withSessionMatcher':: d.fn(help='`google.string.withSessionMatcher` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the session_matcher field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `session_matcher` field.\n', args=[]),
  withSessionMatcher(resourceLabel, value): {
    resource+: {
      google_network_security_gateway_security_policy_rule+: {
        [resourceLabel]+: {
          session_matcher: value,
        },
      },
    },
  },
  '#withTimeouts':: d.fn(help='`google.obj.withTimeouts` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will replace the map with the passed in `value`. If you wish to instead merge the\npassed in value to the existing map, use the [google.obj.withTimeoutsMixin](TODO) function.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeouts(resourceLabel, value): {
    resource+: {
      google_network_security_gateway_security_policy_rule+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  '#withTimeoutsMixin':: d.fn(help='`google.obj.withTimeoutsMixin` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will merge the passed in value to the existing map. If you wish\nto instead replace the entire map with the passed in `value`, use the [google.obj.withTimeouts](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeoutsMixin(resourceLabel, value): {
    resource+: {
      google_network_security_gateway_security_policy_rule+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
  '#withTlsInspectionEnabled':: d.fn(help='`google.bool.withTlsInspectionEnabled` constructs a mixin object that can be merged into the `bool`\nTerraform resource block to set or update the tls_inspection_enabled field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`bool`): The value to set for the `tls_inspection_enabled` field.\n', args=[]),
  withTlsInspectionEnabled(resourceLabel, value): {
    resource+: {
      google_network_security_gateway_security_policy_rule+: {
        [resourceLabel]+: {
          tls_inspection_enabled: value,
        },
      },
    },
  },
}
