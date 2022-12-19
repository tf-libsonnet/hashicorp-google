local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
local d = (import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet');
{
  '#':: d.pkg(name='identity_platform_oauth_idp_config', url='', help='`identity_platform_oauth_idp_config` represents the `google_identity_platform_oauth_idp_config` Terraform resource.\n\n\n\nThis package contains functions and utilities for setting up the resource using Jsonnet code.\n'),
  '#new':: d.fn(help="\n`google.identity_platform_oauth_idp_config.new` injects a new `google_identity_platform_oauth_idp_config` Terraform `resource`\nblock into the root module document.\n\nAdditionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the\nresource. For example, if you added a new instance to the root using:\n\n    # arguments omitted for brevity\n    google.identity_platform_oauth_idp_config.new('some_id')\n\nYou can get the reference to the `id` field of the created `google.identity_platform_oauth_idp_config` using the reference:\n\n    $._ref.google_identity_platform_oauth_idp_config.some_id.get('id')\n\nThis is the same as directly entering `\"${ google_identity_platform_oauth_idp_config.some_id.id }\"` as the value.\n\nNOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,\nor `$` to refer to the root object. Instead, make an explicit outer object using `local`.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block.\n  - `client_id` (`string`): The client id of an OAuth client.\n  - `client_secret` (`string`): The client secret of the OAuth client, to enable OIDC code flow. When `null`, the `client_secret` field will be omitted from the resulting object.\n  - `display_name` (`string`): Human friendly display name. When `null`, the `display_name` field will be omitted from the resulting object.\n  - `enabled` (`bool`): If this config allows users to sign in with the provider. When `null`, the `enabled` field will be omitted from the resulting object.\n  - `issuer` (`string`): For OIDC Idps, the issuer identifier.\n  - `name` (`string`): The name of the OauthIdpConfig. Must start with \u0026#39;oidc.\u0026#39;.\n  - `project` (`string`):  When `null`, the `project` field will be omitted from the resulting object.\n  - `timeouts` (`obj`):  When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.identity_platform_oauth_idp_config.timeouts.new](#fn-identity_platform_oauth_idp_configtimeoutsnew) constructor.\n\n**Returns**:\n- A mixin object that injects the new resource into the root Terraform configuration.\n", args=[]),
  new(
    resourceLabel,
    client_id,
    issuer,
    name,
    client_secret=null,
    display_name=null,
    enabled=null,
    project=null,
    timeouts=null,
    _meta={}
  ):: tf.withResource(
    type='google_identity_platform_oauth_idp_config',
    label=resourceLabel,
    attrs=self.newAttrs(
      client_id=client_id,
      client_secret=client_secret,
      display_name=display_name,
      enabled=enabled,
      issuer=issuer,
      name=name,
      project=project,
      timeouts=timeouts
    ),
    _meta=_meta
  ),
  '#newAttrs':: d.fn(help='\n`google.identity_platform_oauth_idp_config.newAttrs` constructs a new object with attributes and blocks configured for the `identity_platform_oauth_idp_config`\nTerraform resource.\n\nUnlike [google.identity_platform_oauth_idp_config.new](#fn-identity_platform_oauth_idp_confignew), this function will not inject the `resource`\nblock into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the\n[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.\n\nThis is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to\ninjecting into a complete block.\n\n**Args**:\n  - `client_id` (`string`): The client id of an OAuth client.\n  - `client_secret` (`string`): The client secret of the OAuth client, to enable OIDC code flow. When `null`, the `client_secret` field will be omitted from the resulting object.\n  - `display_name` (`string`): Human friendly display name. When `null`, the `display_name` field will be omitted from the resulting object.\n  - `enabled` (`bool`): If this config allows users to sign in with the provider. When `null`, the `enabled` field will be omitted from the resulting object.\n  - `issuer` (`string`): For OIDC Idps, the issuer identifier.\n  - `name` (`string`): The name of the OauthIdpConfig. Must start with &#39;oidc.&#39;.\n  - `project` (`string`):  When `null`, the `project` field will be omitted from the resulting object.\n  - `timeouts` (`obj`):  When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.identity_platform_oauth_idp_config.timeouts.new](#fn-identity_platform_oauth_idp_configtimeoutsnew) constructor.\n\n**Returns**:\n  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `identity_platform_oauth_idp_config` resource into the root Terraform configuration.\n', args=[]),
  newAttrs(
    client_id,
    issuer,
    name,
    client_secret=null,
    display_name=null,
    enabled=null,
    project=null,
    timeouts=null
  ):: std.prune(a={
    client_id: client_id,
    client_secret: client_secret,
    display_name: display_name,
    enabled: enabled,
    issuer: issuer,
    name: name,
    project: project,
    timeouts: timeouts,
  }),
  timeouts:: {
    '#new':: d.fn(help='\n`google.identity_platform_oauth_idp_config.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`\nTerraform sub block.\n\n\n\n**Args**:\n  - `create` (`string`):  When `null`, the `create` field will be omitted from the resulting object.\n  - `delete` (`string`):  When `null`, the `delete` field will be omitted from the resulting object.\n  - `update` (`string`):  When `null`, the `update` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `timeouts` sub block.\n', args=[]),
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
  '#withClientId':: d.fn(help='`google.string.withClientId` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the client_id field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `client_id` field.\n', args=[]),
  withClientId(resourceLabel, value): {
    resource+: {
      google_identity_platform_oauth_idp_config+: {
        [resourceLabel]+: {
          client_id: value,
        },
      },
    },
  },
  '#withClientSecret':: d.fn(help='`google.string.withClientSecret` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the client_secret field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `client_secret` field.\n', args=[]),
  withClientSecret(resourceLabel, value): {
    resource+: {
      google_identity_platform_oauth_idp_config+: {
        [resourceLabel]+: {
          client_secret: value,
        },
      },
    },
  },
  '#withDisplayName':: d.fn(help='`google.string.withDisplayName` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the display_name field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `display_name` field.\n', args=[]),
  withDisplayName(resourceLabel, value): {
    resource+: {
      google_identity_platform_oauth_idp_config+: {
        [resourceLabel]+: {
          display_name: value,
        },
      },
    },
  },
  '#withEnabled':: d.fn(help='`google.bool.withEnabled` constructs a mixin object that can be merged into the `bool`\nTerraform resource block to set or update the enabled field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`bool`): The value to set for the `enabled` field.\n', args=[]),
  withEnabled(resourceLabel, value): {
    resource+: {
      google_identity_platform_oauth_idp_config+: {
        [resourceLabel]+: {
          enabled: value,
        },
      },
    },
  },
  '#withIssuer':: d.fn(help='`google.string.withIssuer` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the issuer field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `issuer` field.\n', args=[]),
  withIssuer(resourceLabel, value): {
    resource+: {
      google_identity_platform_oauth_idp_config+: {
        [resourceLabel]+: {
          issuer: value,
        },
      },
    },
  },
  '#withName':: d.fn(help='`google.string.withName` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the name field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `name` field.\n', args=[]),
  withName(resourceLabel, value): {
    resource+: {
      google_identity_platform_oauth_idp_config+: {
        [resourceLabel]+: {
          name: value,
        },
      },
    },
  },
  '#withProject':: d.fn(help='`google.string.withProject` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the project field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `project` field.\n', args=[]),
  withProject(resourceLabel, value): {
    resource+: {
      google_identity_platform_oauth_idp_config+: {
        [resourceLabel]+: {
          project: value,
        },
      },
    },
  },
  '#withTimeouts':: d.fn(help='`google.obj.withTimeouts` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will replace the map with the passed in `value`. If you wish to instead merge the\npassed in value to the existing map, use the [google.obj.withTimeoutsMixin](TODO) function.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeouts(resourceLabel, value): {
    resource+: {
      google_identity_platform_oauth_idp_config+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  '#withTimeoutsMixin':: d.fn(help='`google.obj.withTimeoutsMixin` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will merge the passed in value to the existing map. If you wish\nto instead replace the entire map with the passed in `value`, use the [google.obj.withTimeouts](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeoutsMixin(resourceLabel, value): {
    resource+: {
      google_identity_platform_oauth_idp_config+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
}
