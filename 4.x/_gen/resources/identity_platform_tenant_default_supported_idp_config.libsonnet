local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
local d = (import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet');
{
  '#':: d.pkg(name='identity_platform_tenant_default_supported_idp_config', url='', help='`identity_platform_tenant_default_supported_idp_config` represents the `google_identity_platform_tenant_default_supported_idp_config` Terraform resource.\n\n\n\nThis package contains functions and utilities for setting up the resource using Jsonnet code.\n'),
  '#new':: d.fn(help="\n`google.identity_platform_tenant_default_supported_idp_config.new` injects a new `google_identity_platform_tenant_default_supported_idp_config` Terraform `resource`\nblock into the root module document.\n\nAdditionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the\nresource. For example, if you added a new instance to the root using:\n\n    # arguments omitted for brevity\n    google.identity_platform_tenant_default_supported_idp_config.new('some_id')\n\nYou can get the reference to the `id` field of the created `google.identity_platform_tenant_default_supported_idp_config` using the reference:\n\n    $._ref.google_identity_platform_tenant_default_supported_idp_config.some_id.get('id')\n\nThis is the same as directly entering `\"${ google_identity_platform_tenant_default_supported_idp_config.some_id.id }\"` as the value.\n\nNOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,\nor `$` to refer to the root object. Instead, make an explicit outer object using `local`.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block.\n  - `client_id` (`string`): OAuth client ID\n  - `client_secret` (`string`): OAuth client secret\n  - `enabled` (`bool`): If this IDP allows the user to sign in When `null`, the `enabled` field will be omitted from the resulting object.\n  - `idp_id` (`string`): ID of the IDP. Possible values include:\n\n* \u0026#39;apple.com\u0026#39;\n\n* \u0026#39;facebook.com\u0026#39;\n\n* \u0026#39;gc.apple.com\u0026#39;\n\n* \u0026#39;github.com\u0026#39;\n\n* \u0026#39;google.com\u0026#39;\n\n* \u0026#39;linkedin.com\u0026#39;\n\n* \u0026#39;microsoft.com\u0026#39;\n\n* \u0026#39;playgames.google.com\u0026#39;\n\n* \u0026#39;twitter.com\u0026#39;\n\n* \u0026#39;yahoo.com\u0026#39;\n  - `project` (`string`):  When `null`, the `project` field will be omitted from the resulting object.\n  - `tenant` (`string`): The name of the tenant where this DefaultSupportedIdpConfig resource exists\n  - `timeouts` (`obj`):  When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.identity_platform_tenant_default_supported_idp_config.timeouts.new](#fn-identityplatformtenantdefaultsupportedidpconfigtimeoutsnew) constructor.\n\n**Returns**:\n- A mixin object that injects the new resource into the root Terraform configuration.\n", args=[]),
  new(
    resourceLabel,
    client_id,
    client_secret,
    idp_id,
    tenant,
    enabled=null,
    project=null,
    timeouts=null,
    _meta={}
  ):: tf.withResource(
    type='google_identity_platform_tenant_default_supported_idp_config',
    label=resourceLabel,
    attrs=self.newAttrs(
      client_id=client_id,
      client_secret=client_secret,
      enabled=enabled,
      idp_id=idp_id,
      project=project,
      tenant=tenant,
      timeouts=timeouts
    ),
    _meta=_meta
  ),
  '#newAttrs':: d.fn(help='\n`google.identity_platform_tenant_default_supported_idp_config.newAttrs` constructs a new object with attributes and blocks configured for the `identity_platform_tenant_default_supported_idp_config`\nTerraform resource.\n\nUnlike [google.identity_platform_tenant_default_supported_idp_config.new](#fn-identityplatformtenantdefaultsupportedidpconfignew), this function will not inject the `resource`\nblock into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the\n[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.\n\nThis is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to\ninjecting into a complete block.\n\n**Args**:\n  - `client_id` (`string`): OAuth client ID\n  - `client_secret` (`string`): OAuth client secret\n  - `enabled` (`bool`): If this IDP allows the user to sign in When `null`, the `enabled` field will be omitted from the resulting object.\n  - `idp_id` (`string`): ID of the IDP. Possible values include:\n\n* &#39;apple.com&#39;\n\n* &#39;facebook.com&#39;\n\n* &#39;gc.apple.com&#39;\n\n* &#39;github.com&#39;\n\n* &#39;google.com&#39;\n\n* &#39;linkedin.com&#39;\n\n* &#39;microsoft.com&#39;\n\n* &#39;playgames.google.com&#39;\n\n* &#39;twitter.com&#39;\n\n* &#39;yahoo.com&#39;\n  - `project` (`string`):  When `null`, the `project` field will be omitted from the resulting object.\n  - `tenant` (`string`): The name of the tenant where this DefaultSupportedIdpConfig resource exists\n  - `timeouts` (`obj`):  When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.identity_platform_tenant_default_supported_idp_config.timeouts.new](#fn-identityplatformtenantdefaultsupportedidpconfigtimeoutsnew) constructor.\n\n**Returns**:\n  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `identity_platform_tenant_default_supported_idp_config` resource into the root Terraform configuration.\n', args=[]),
  newAttrs(
    client_id,
    client_secret,
    idp_id,
    tenant,
    enabled=null,
    project=null,
    timeouts=null
  ):: std.prune(a={
    client_id: client_id,
    client_secret: client_secret,
    enabled: enabled,
    idp_id: idp_id,
    project: project,
    tenant: tenant,
    timeouts: timeouts,
  }),
  timeouts:: {
    '#new':: d.fn(help='\n`google.identity_platform_tenant_default_supported_idp_config.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`\nTerraform sub block.\n\n\n\n**Args**:\n  - `create` (`string`):  When `null`, the `create` field will be omitted from the resulting object.\n  - `delete` (`string`):  When `null`, the `delete` field will be omitted from the resulting object.\n  - `update` (`string`):  When `null`, the `update` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `timeouts` sub block.\n', args=[]),
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
  '#withClientId':: d.fn(help='`google.identity_platform_tenant_default_supported_idp_config.withClientId` constructs a mixin object that can be merged into the `identity_platform_tenant_default_supported_idp_config`\nTerraform resource block to set or update the client_id field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`TODO`): The value to set for the `client_id` field.\n', args=[]),
  withClientId(resourceLabel, value):: {
    resource+: {
      google_identity_platform_tenant_default_supported_idp_config+: {
        [resourceLabel]+: {
          client_id: value,
        },
      },
    },
  },
  '#withClientSecret':: d.fn(help='`google.identity_platform_tenant_default_supported_idp_config.withClientSecret` constructs a mixin object that can be merged into the `identity_platform_tenant_default_supported_idp_config`\nTerraform resource block to set or update the client_secret field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`TODO`): The value to set for the `client_secret` field.\n', args=[]),
  withClientSecret(resourceLabel, value):: {
    resource+: {
      google_identity_platform_tenant_default_supported_idp_config+: {
        [resourceLabel]+: {
          client_secret: value,
        },
      },
    },
  },
  '#withEnabled':: d.fn(help='`google.identity_platform_tenant_default_supported_idp_config.withEnabled` constructs a mixin object that can be merged into the `identity_platform_tenant_default_supported_idp_config`\nTerraform resource block to set or update the enabled field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`TODO`): The value to set for the `enabled` field.\n', args=[]),
  withEnabled(resourceLabel, value):: {
    resource+: {
      google_identity_platform_tenant_default_supported_idp_config+: {
        [resourceLabel]+: {
          enabled: value,
        },
      },
    },
  },
  '#withIdpId':: d.fn(help='`google.identity_platform_tenant_default_supported_idp_config.withIdpId` constructs a mixin object that can be merged into the `identity_platform_tenant_default_supported_idp_config`\nTerraform resource block to set or update the idp_id field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`TODO`): The value to set for the `idp_id` field.\n', args=[]),
  withIdpId(resourceLabel, value):: {
    resource+: {
      google_identity_platform_tenant_default_supported_idp_config+: {
        [resourceLabel]+: {
          idp_id: value,
        },
      },
    },
  },
  '#withProject':: d.fn(help='`google.identity_platform_tenant_default_supported_idp_config.withProject` constructs a mixin object that can be merged into the `identity_platform_tenant_default_supported_idp_config`\nTerraform resource block to set or update the project field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`TODO`): The value to set for the `project` field.\n', args=[]),
  withProject(resourceLabel, value):: {
    resource+: {
      google_identity_platform_tenant_default_supported_idp_config+: {
        [resourceLabel]+: {
          project: value,
        },
      },
    },
  },
  '#withTenant':: d.fn(help='`google.identity_platform_tenant_default_supported_idp_config.withTenant` constructs a mixin object that can be merged into the `identity_platform_tenant_default_supported_idp_config`\nTerraform resource block to set or update the tenant field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`TODO`): The value to set for the `tenant` field.\n', args=[]),
  withTenant(resourceLabel, value):: {
    resource+: {
      google_identity_platform_tenant_default_supported_idp_config+: {
        [resourceLabel]+: {
          tenant: value,
        },
      },
    },
  },
  '#withTimeouts':: d.fn(help='`google.identity_platform_tenant_default_supported_idp_config.withTimeouts` constructs a mixin object that can be merged into the `identity_platform_tenant_default_supported_idp_config`\nTerraform resource block to set or update the timeouts field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`TODO`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeouts(resourceLabel, value):: {
    resource+: {
      google_identity_platform_tenant_default_supported_idp_config+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  '#withTimeoutsMixin':: d.fn(help='`google.identity_platform_tenant_default_supported_idp_config.withTimeoutsMixin` constructs a mixin object that can be merged into the `identity_platform_tenant_default_supported_idp_config`\nTerraform resource block to set or update the timeouts field.\n\nThis function will merge the passed in value to the existing map. If you wish\nto instead replace the entire map with the passed in `value`, use the [google.identity_platform_tenant_default_supported_idp_config.withTimeouts](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`TODO`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeoutsMixin(resourceLabel, value):: {
    resource+: {
      google_identity_platform_tenant_default_supported_idp_config+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
}
