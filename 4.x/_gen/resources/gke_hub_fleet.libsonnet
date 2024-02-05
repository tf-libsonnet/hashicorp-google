local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
local d = (import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet');
{
  '#':: d.pkg(name='gke_hub_fleet', url='', help='`gke_hub_fleet` represents the `google_gke_hub_fleet` Terraform resource.\n\n\n\nThis package contains functions and utilities for setting up the resource using Jsonnet code.\n'),
  default_cluster_config:: {
    binary_authorization_config:: {
      '#new':: d.fn(help='\n`google.gke_hub_fleet.default_cluster_config.binary_authorization_config.new` constructs a new object with attributes and blocks configured for the `binary_authorization_config`\nTerraform sub block.\n\n\n\n**Args**:\n  - `evaluation_mode` (`string`): Mode of operation for binauthz policy evaluation. Possible values: [&#34;DISABLED&#34;, &#34;POLICY_BINDINGS&#34;] When `null`, the `evaluation_mode` field will be omitted from the resulting object.\n  - `policy_bindings` (`list[obj]`): Binauthz policies that apply to this cluster. When `null`, the `policy_bindings` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.gke_hub_fleet.default_cluster_config.binary_authorization_config.policy_bindings.new](#fn-default_cluster_configdefault_cluster_configpolicy_bindingsnew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `binary_authorization_config` sub block.\n', args=[]),
      new(
        evaluation_mode=null,
        policy_bindings=null
      ):: std.prune(a={
        evaluation_mode: evaluation_mode,
        policy_bindings: policy_bindings,
      }),
      policy_bindings:: {
        '#new':: d.fn(help='\n`google.gke_hub_fleet.default_cluster_config.binary_authorization_config.policy_bindings.new` constructs a new object with attributes and blocks configured for the `policy_bindings`\nTerraform sub block.\n\n\n\n**Args**:\n  - `name` (`string`): The relative resource name of the binauthz platform policy to audit. GKE\nplatform policies have the following format:\n&#39;projects/{project_number}/platforms/gke/policies/{policy_id}&#39;. When `null`, the `name` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `policy_bindings` sub block.\n', args=[]),
        new(
          name=null
        ):: std.prune(a={
          name: name,
        }),
      },
    },
    '#new':: d.fn(help='\n`google.gke_hub_fleet.default_cluster_config.new` constructs a new object with attributes and blocks configured for the `default_cluster_config`\nTerraform sub block.\n\n\n\n**Args**:\n  - `binary_authorization_config` (`list[obj]`): Enable/Disable binary authorization features for the cluster. When `null`, the `binary_authorization_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.gke_hub_fleet.default_cluster_config.binary_authorization_config.new](#fn-default_cluster_configbinary_authorization_confignew) constructor.\n  - `security_posture_config` (`list[obj]`): Enable/Disable Security Posture features for the cluster. When `null`, the `security_posture_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.gke_hub_fleet.default_cluster_config.security_posture_config.new](#fn-default_cluster_configsecurity_posture_confignew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `default_cluster_config` sub block.\n', args=[]),
    new(
      binary_authorization_config=null,
      security_posture_config=null
    ):: std.prune(a={
      binary_authorization_config: binary_authorization_config,
      security_posture_config: security_posture_config,
    }),
    security_posture_config:: {
      '#new':: d.fn(help='\n`google.gke_hub_fleet.default_cluster_config.security_posture_config.new` constructs a new object with attributes and blocks configured for the `security_posture_config`\nTerraform sub block.\n\n\n\n**Args**:\n  - `mode` (`string`): Sets which mode to use for Security Posture features. Possible values: [&#34;DISABLED&#34;, &#34;BASIC&#34;] When `null`, the `mode` field will be omitted from the resulting object.\n  - `vulnerability_mode` (`string`): Sets which mode to use for vulnerability scanning. Possible values: [&#34;VULNERABILITY_DISABLED&#34;, &#34;VULNERABILITY_BASIC&#34;, &#34;VULNERABILITY_ENTERPRISE&#34;] When `null`, the `vulnerability_mode` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `security_posture_config` sub block.\n', args=[]),
      new(
        mode=null,
        vulnerability_mode=null
      ):: std.prune(a={
        mode: mode,
        vulnerability_mode: vulnerability_mode,
      }),
    },
  },
  '#new':: d.fn(help="\n`google.gke_hub_fleet.new` injects a new `google_gke_hub_fleet` Terraform `resource`\nblock into the root module document.\n\nAdditionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the\nresource. For example, if you added a new instance to the root using:\n\n    # arguments omitted for brevity\n    google.gke_hub_fleet.new('some_id')\n\nYou can get the reference to the `id` field of the created `google.gke_hub_fleet` using the reference:\n\n    $._ref.google_gke_hub_fleet.some_id.get('id')\n\nThis is the same as directly entering `\"${ google_gke_hub_fleet.some_id.id }\"` as the value.\n\nNOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,\nor `$` to refer to the root object. Instead, make an explicit outer object using `local`.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block.\n  - `display_name` (`string`): A user-assigned display name of the Fleet. When present, it must be between 4 to 30 characters.\nAllowed characters are: lowercase and uppercase letters, numbers, hyphen, single-quote, double-quote, space, and exclamation point. When `null`, the `display_name` field will be omitted from the resulting object.\n  - `project` (`string`): Set the `project` field on the resulting resource block. When `null`, the `project` field will be omitted from the resulting object.\n  - `default_cluster_config` (`list[obj]`): The default cluster configurations to apply across the fleet. When `null`, the `default_cluster_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.gke_hub_fleet.default_cluster_config.new](#fn-default_cluster_confignew) constructor.\n  - `timeouts` (`obj`): Set the `timeouts` field on the resulting resource block. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.gke_hub_fleet.timeouts.new](#fn-timeoutsnew) constructor.\n\n**Returns**:\n- A mixin object that injects the new resource into the root Terraform configuration.\n", args=[]),
  new(
    resourceLabel,
    default_cluster_config=null,
    display_name=null,
    project=null,
    timeouts=null,
    _meta={}
  ):: tf.withResource(
    type='google_gke_hub_fleet',
    label=resourceLabel,
    attrs=self.newAttrs(
      default_cluster_config=default_cluster_config,
      display_name=display_name,
      project=project,
      timeouts=timeouts
    ),
    _meta=_meta
  ),
  '#newAttrs':: d.fn(help='\n`google.gke_hub_fleet.newAttrs` constructs a new object with attributes and blocks configured for the `gke_hub_fleet`\nTerraform resource.\n\nUnlike [google.gke_hub_fleet.new](#fn-new), this function will not inject the `resource`\nblock into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the\n[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.\n\nThis is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to\ninjecting into a complete block.\n\n**Args**:\n  - `display_name` (`string`): A user-assigned display name of the Fleet. When present, it must be between 4 to 30 characters.\nAllowed characters are: lowercase and uppercase letters, numbers, hyphen, single-quote, double-quote, space, and exclamation point. When `null`, the `display_name` field will be omitted from the resulting object.\n  - `project` (`string`): Set the `project` field on the resulting object. When `null`, the `project` field will be omitted from the resulting object.\n  - `default_cluster_config` (`list[obj]`): The default cluster configurations to apply across the fleet. When `null`, the `default_cluster_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.gke_hub_fleet.default_cluster_config.new](#fn-default_cluster_confignew) constructor.\n  - `timeouts` (`obj`): Set the `timeouts` field on the resulting object. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.gke_hub_fleet.timeouts.new](#fn-timeoutsnew) constructor.\n\n**Returns**:\n  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `gke_hub_fleet` resource into the root Terraform configuration.\n', args=[]),
  newAttrs(
    default_cluster_config=null,
    display_name=null,
    project=null,
    timeouts=null
  ):: std.prune(a={
    default_cluster_config: default_cluster_config,
    display_name: display_name,
    project: project,
    timeouts: timeouts,
  }),
  timeouts:: {
    '#new':: d.fn(help='\n`google.gke_hub_fleet.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`\nTerraform sub block.\n\n\n\n**Args**:\n  - `create` (`string`): Set the `create` field on the resulting object. When `null`, the `create` field will be omitted from the resulting object.\n  - `delete` (`string`): Set the `delete` field on the resulting object. When `null`, the `delete` field will be omitted from the resulting object.\n  - `update` (`string`): Set the `update` field on the resulting object. When `null`, the `update` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `timeouts` sub block.\n', args=[]),
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
  '#withDefaultClusterConfig':: d.fn(help='`google.list[obj].withDefaultClusterConfig` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the default_cluster_config field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [google.list[obj].withDefaultClusterConfigMixin](TODO) function.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `default_cluster_config` field.\n', args=[]),
  withDefaultClusterConfig(resourceLabel, value): {
    resource+: {
      google_gke_hub_fleet+: {
        [resourceLabel]+: {
          default_cluster_config: value,
        },
      },
    },
  },
  '#withDefaultClusterConfigMixin':: d.fn(help='`google.list[obj].withDefaultClusterConfigMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the default_cluster_config field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google.list[obj].withDefaultClusterConfig](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `default_cluster_config` field.\n', args=[]),
  withDefaultClusterConfigMixin(resourceLabel, value): {
    resource+: {
      google_gke_hub_fleet+: {
        [resourceLabel]+: {
          default_cluster_config+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withDisplayName':: d.fn(help='`google.string.withDisplayName` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the display_name field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `display_name` field.\n', args=[]),
  withDisplayName(resourceLabel, value): {
    resource+: {
      google_gke_hub_fleet+: {
        [resourceLabel]+: {
          display_name: value,
        },
      },
    },
  },
  '#withProject':: d.fn(help='`google.string.withProject` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the project field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `project` field.\n', args=[]),
  withProject(resourceLabel, value): {
    resource+: {
      google_gke_hub_fleet+: {
        [resourceLabel]+: {
          project: value,
        },
      },
    },
  },
  '#withTimeouts':: d.fn(help='`google.obj.withTimeouts` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will replace the map with the passed in `value`. If you wish to instead merge the\npassed in value to the existing map, use the [google.obj.withTimeoutsMixin](TODO) function.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeouts(resourceLabel, value): {
    resource+: {
      google_gke_hub_fleet+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  '#withTimeoutsMixin':: d.fn(help='`google.obj.withTimeoutsMixin` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will merge the passed in value to the existing map. If you wish\nto instead replace the entire map with the passed in `value`, use the [google.obj.withTimeouts](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeoutsMixin(resourceLabel, value): {
    resource+: {
      google_gke_hub_fleet+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
}
