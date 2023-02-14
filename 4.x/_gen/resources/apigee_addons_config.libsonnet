local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
local d = (import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet');
{
  '#':: d.pkg(name='apigee_addons_config', url='', help='`apigee_addons_config` represents the `google_apigee_addons_config` Terraform resource.\n\n\n\nThis package contains functions and utilities for setting up the resource using Jsonnet code.\n'),
  addons_config:: {
    advanced_api_ops_config:: {
      '#new':: d.fn(help='\n`google.apigee_addons_config.addons_config.advanced_api_ops_config.new` constructs a new object with attributes and blocks configured for the `advanced_api_ops_config`\nTerraform sub block.\n\n\n\n**Args**:\n  - `enabled` (`bool`): Flag that specifies whether the Advanced API Ops add-on is enabled. When `null`, the `enabled` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `advanced_api_ops_config` sub block.\n', args=[]),
      new(
        enabled=null
      ):: std.prune(a={
        enabled: enabled,
      }),
    },
    api_security_config:: {
      '#new':: d.fn(help='\n`google.apigee_addons_config.addons_config.api_security_config.new` constructs a new object with attributes and blocks configured for the `api_security_config`\nTerraform sub block.\n\n\n\n**Args**:\n  - `enabled` (`bool`): Flag that specifies whether the Advanced API Ops add-on is enabled. When `null`, the `enabled` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `api_security_config` sub block.\n', args=[]),
      new(
        enabled=null
      ):: std.prune(a={
        enabled: enabled,
      }),
    },
    connectors_platform_config:: {
      '#new':: d.fn(help='\n`google.apigee_addons_config.addons_config.connectors_platform_config.new` constructs a new object with attributes and blocks configured for the `connectors_platform_config`\nTerraform sub block.\n\n\n\n**Args**:\n  - `enabled` (`bool`): Flag that specifies whether the Advanced API Ops add-on is enabled. When `null`, the `enabled` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `connectors_platform_config` sub block.\n', args=[]),
      new(
        enabled=null
      ):: std.prune(a={
        enabled: enabled,
      }),
    },
    integration_config:: {
      '#new':: d.fn(help='\n`google.apigee_addons_config.addons_config.integration_config.new` constructs a new object with attributes and blocks configured for the `integration_config`\nTerraform sub block.\n\n\n\n**Args**:\n  - `enabled` (`bool`): Flag that specifies whether the Advanced API Ops add-on is enabled. When `null`, the `enabled` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `integration_config` sub block.\n', args=[]),
      new(
        enabled=null
      ):: std.prune(a={
        enabled: enabled,
      }),
    },
    monetization_config:: {
      '#new':: d.fn(help='\n`google.apigee_addons_config.addons_config.monetization_config.new` constructs a new object with attributes and blocks configured for the `monetization_config`\nTerraform sub block.\n\n\n\n**Args**:\n  - `enabled` (`bool`): Flag that specifies whether the Advanced API Ops add-on is enabled. When `null`, the `enabled` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `monetization_config` sub block.\n', args=[]),
      new(
        enabled=null
      ):: std.prune(a={
        enabled: enabled,
      }),
    },
    '#new':: d.fn(help='\n`google.apigee_addons_config.addons_config.new` constructs a new object with attributes and blocks configured for the `addons_config`\nTerraform sub block.\n\n\n\n**Args**:\n  - `advanced_api_ops_config` (`list[obj]`): Configuration for the Monetization add-on. When `null`, the `advanced_api_ops_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.apigee_addons_config.addons_config.advanced_api_ops_config.new](#fn-addons_configadvanced_api_ops_confignew) constructor.\n  - `api_security_config` (`list[obj]`): Configuration for the Monetization add-on. When `null`, the `api_security_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.apigee_addons_config.addons_config.api_security_config.new](#fn-addons_configapi_security_confignew) constructor.\n  - `connectors_platform_config` (`list[obj]`): Configuration for the Monetization add-on. When `null`, the `connectors_platform_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.apigee_addons_config.addons_config.connectors_platform_config.new](#fn-addons_configconnectors_platform_confignew) constructor.\n  - `integration_config` (`list[obj]`): Configuration for the Monetization add-on. When `null`, the `integration_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.apigee_addons_config.addons_config.integration_config.new](#fn-addons_configintegration_confignew) constructor.\n  - `monetization_config` (`list[obj]`): Configuration for the Monetization add-on. When `null`, the `monetization_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.apigee_addons_config.addons_config.monetization_config.new](#fn-addons_configmonetization_confignew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `addons_config` sub block.\n', args=[]),
    new(
      advanced_api_ops_config=null,
      api_security_config=null,
      connectors_platform_config=null,
      integration_config=null,
      monetization_config=null
    ):: std.prune(a={
      advanced_api_ops_config: advanced_api_ops_config,
      api_security_config: api_security_config,
      connectors_platform_config: connectors_platform_config,
      integration_config: integration_config,
      monetization_config: monetization_config,
    }),
  },
  '#new':: d.fn(help="\n`google.apigee_addons_config.new` injects a new `google_apigee_addons_config` Terraform `resource`\nblock into the root module document.\n\nAdditionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the\nresource. For example, if you added a new instance to the root using:\n\n    # arguments omitted for brevity\n    google.apigee_addons_config.new('some_id')\n\nYou can get the reference to the `id` field of the created `google.apigee_addons_config` using the reference:\n\n    $._ref.google_apigee_addons_config.some_id.get('id')\n\nThis is the same as directly entering `\"${ google_apigee_addons_config.some_id.id }\"` as the value.\n\nNOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,\nor `$` to refer to the root object. Instead, make an explicit outer object using `local`.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block.\n  - `org` (`string`): Name of the Apigee organization.\n  - `addons_config` (`list[obj]`): Addon configurations of the Apigee organization. When `null`, the `addons_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.apigee_addons_config.addons_config.new](#fn-addons_confignew) constructor.\n  - `timeouts` (`obj`): Set the `timeouts` field on the resulting resource block. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.apigee_addons_config.timeouts.new](#fn-timeoutsnew) constructor.\n\n**Returns**:\n- A mixin object that injects the new resource into the root Terraform configuration.\n", args=[]),
  new(
    resourceLabel,
    org,
    addons_config=null,
    timeouts=null,
    _meta={}
  ):: tf.withResource(
    type='google_apigee_addons_config',
    label=resourceLabel,
    attrs=self.newAttrs(addons_config=addons_config, org=org, timeouts=timeouts),
    _meta=_meta
  ),
  '#newAttrs':: d.fn(help='\n`google.apigee_addons_config.newAttrs` constructs a new object with attributes and blocks configured for the `apigee_addons_config`\nTerraform resource.\n\nUnlike [google.apigee_addons_config.new](#fn-new), this function will not inject the `resource`\nblock into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the\n[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.\n\nThis is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to\ninjecting into a complete block.\n\n**Args**:\n  - `org` (`string`): Name of the Apigee organization.\n  - `addons_config` (`list[obj]`): Addon configurations of the Apigee organization. When `null`, the `addons_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.apigee_addons_config.addons_config.new](#fn-addons_confignew) constructor.\n  - `timeouts` (`obj`): Set the `timeouts` field on the resulting object. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.apigee_addons_config.timeouts.new](#fn-timeoutsnew) constructor.\n\n**Returns**:\n  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `apigee_addons_config` resource into the root Terraform configuration.\n', args=[]),
  newAttrs(
    org,
    addons_config=null,
    timeouts=null
  ):: std.prune(a={
    addons_config: addons_config,
    org: org,
    timeouts: timeouts,
  }),
  timeouts:: {
    '#new':: d.fn(help='\n`google.apigee_addons_config.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`\nTerraform sub block.\n\n\n\n**Args**:\n  - `create` (`string`): Set the `create` field on the resulting object. When `null`, the `create` field will be omitted from the resulting object.\n  - `delete` (`string`): Set the `delete` field on the resulting object. When `null`, the `delete` field will be omitted from the resulting object.\n  - `update` (`string`): Set the `update` field on the resulting object. When `null`, the `update` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `timeouts` sub block.\n', args=[]),
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
  '#withAddonsConfig':: d.fn(help='`google.list[obj].withAddonsConfig` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the addons_config field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [google.list[obj].withAddonsConfigMixin](TODO) function.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `addons_config` field.\n', args=[]),
  withAddonsConfig(resourceLabel, value): {
    resource+: {
      google_apigee_addons_config+: {
        [resourceLabel]+: {
          addons_config: value,
        },
      },
    },
  },
  '#withAddonsConfigMixin':: d.fn(help='`google.list[obj].withAddonsConfigMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the addons_config field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google.list[obj].withAddonsConfig](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `addons_config` field.\n', args=[]),
  withAddonsConfigMixin(resourceLabel, value): {
    resource+: {
      google_apigee_addons_config+: {
        [resourceLabel]+: {
          addons_config+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withOrg':: d.fn(help='`google.string.withOrg` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the org field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `org` field.\n', args=[]),
  withOrg(resourceLabel, value): {
    resource+: {
      google_apigee_addons_config+: {
        [resourceLabel]+: {
          org: value,
        },
      },
    },
  },
  '#withTimeouts':: d.fn(help='`google.obj.withTimeouts` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will replace the map with the passed in `value`. If you wish to instead merge the\npassed in value to the existing map, use the [google.obj.withTimeoutsMixin](TODO) function.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeouts(resourceLabel, value): {
    resource+: {
      google_apigee_addons_config+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  '#withTimeoutsMixin':: d.fn(help='`google.obj.withTimeoutsMixin` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will merge the passed in value to the existing map. If you wish\nto instead replace the entire map with the passed in `value`, use the [google.obj.withTimeouts](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeoutsMixin(resourceLabel, value): {
    resource+: {
      google_apigee_addons_config+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
}
