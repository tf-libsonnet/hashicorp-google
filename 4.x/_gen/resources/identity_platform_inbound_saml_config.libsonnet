local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
local d = (import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet');
{
  '#':: d.pkg(name='identity_platform_inbound_saml_config', url='', help='`identity_platform_inbound_saml_config` represents the `google_identity_platform_inbound_saml_config` Terraform resource.\n\n\n\nThis package contains functions and utilities for setting up the resource using Jsonnet code.\n'),
  idp_config:: {
    idp_certificates:: {
      '#new':: d.fn(help='\n`google.identity_platform_inbound_saml_config.idp_config.idp_certificates.new` constructs a new object with attributes and blocks configured for the `idp_certificates`\nTerraform sub block.\n\n\n\n**Args**:\n  - `x509_certificate` (`string`): The IdP&#39;s x509 certificate. When `null`, the `x509_certificate` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `idp_certificates` sub block.\n', args=[]),
      new(
        x509_certificate=null
      ):: std.prune(a={
        x509_certificate: x509_certificate,
      }),
    },
    '#new':: d.fn(help='\n`google.identity_platform_inbound_saml_config.idp_config.new` constructs a new object with attributes and blocks configured for the `idp_config`\nTerraform sub block.\n\n\n\n**Args**:\n  - `idp_entity_id` (`string`): Unique identifier for all SAML entities\n  - `sign_request` (`bool`): Indicates if outbounding SAMLRequest should be signed. When `null`, the `sign_request` field will be omitted from the resulting object.\n  - `sso_url` (`string`): URL to send Authentication request to.\n  - `idp_certificates` (`list[obj]`): The IdP&#39;s certificate data to verify the signature in the SAMLResponse issued by the IDP. When `null`, the `idp_certificates` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.identity_platform_inbound_saml_config.idp_config.idp_certificates.new](#fn-idp_configidp_certificatesnew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `idp_config` sub block.\n', args=[]),
    new(
      idp_entity_id,
      sso_url,
      idp_certificates=null,
      sign_request=null
    ):: std.prune(a={
      idp_certificates: idp_certificates,
      idp_entity_id: idp_entity_id,
      sign_request: sign_request,
      sso_url: sso_url,
    }),
  },
  '#new':: d.fn(help="\n`google.identity_platform_inbound_saml_config.new` injects a new `google_identity_platform_inbound_saml_config` Terraform `resource`\nblock into the root module document.\n\nAdditionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the\nresource. For example, if you added a new instance to the root using:\n\n    # arguments omitted for brevity\n    google.identity_platform_inbound_saml_config.new('some_id')\n\nYou can get the reference to the `id` field of the created `google.identity_platform_inbound_saml_config` using the reference:\n\n    $._ref.google_identity_platform_inbound_saml_config.some_id.get('id')\n\nThis is the same as directly entering `\"${ google_identity_platform_inbound_saml_config.some_id.id }\"` as the value.\n\nNOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,\nor `$` to refer to the root object. Instead, make an explicit outer object using `local`.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block.\n  - `display_name` (`string`): Human friendly display name.\n  - `enabled` (`bool`): If this config allows users to sign in with the provider. When `null`, the `enabled` field will be omitted from the resulting object.\n  - `name` (`string`): The name of the InboundSamlConfig resource. Must start with \u0026#39;saml.\u0026#39; and can only have alphanumeric characters,\nhyphens, underscores or periods. The part after \u0026#39;saml.\u0026#39; must also start with a lowercase letter, end with an\nalphanumeric character, and have at least 2 characters.\n  - `project` (`string`): Set the `project` field on the resulting resource block. When `null`, the `project` field will be omitted from the resulting object.\n  - `idp_config` (`list[obj]`): SAML IdP configuration when the project acts as the relying party When `null`, the `idp_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.identity_platform_inbound_saml_config.idp_config.new](#fn-idp_confignew) constructor.\n  - `sp_config` (`list[obj]`): SAML SP (Service Provider) configuration when the project acts as the relying party to receive\nand accept an authentication assertion issued by a SAML identity provider. When `null`, the `sp_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.identity_platform_inbound_saml_config.sp_config.new](#fn-sp_confignew) constructor.\n  - `timeouts` (`obj`): Set the `timeouts` field on the resulting resource block. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.identity_platform_inbound_saml_config.timeouts.new](#fn-timeoutsnew) constructor.\n\n**Returns**:\n- A mixin object that injects the new resource into the root Terraform configuration.\n", args=[]),
  new(
    resourceLabel,
    display_name,
    name,
    enabled=null,
    idp_config=null,
    project=null,
    sp_config=null,
    timeouts=null,
    _meta={}
  ):: tf.withResource(
    type='google_identity_platform_inbound_saml_config',
    label=resourceLabel,
    attrs=self.newAttrs(
      display_name=display_name,
      enabled=enabled,
      idp_config=idp_config,
      name=name,
      project=project,
      sp_config=sp_config,
      timeouts=timeouts
    ),
    _meta=_meta
  ),
  '#newAttrs':: d.fn(help='\n`google.identity_platform_inbound_saml_config.newAttrs` constructs a new object with attributes and blocks configured for the `identity_platform_inbound_saml_config`\nTerraform resource.\n\nUnlike [google.identity_platform_inbound_saml_config.new](#fn-new), this function will not inject the `resource`\nblock into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the\n[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.\n\nThis is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to\ninjecting into a complete block.\n\n**Args**:\n  - `display_name` (`string`): Human friendly display name.\n  - `enabled` (`bool`): If this config allows users to sign in with the provider. When `null`, the `enabled` field will be omitted from the resulting object.\n  - `name` (`string`): The name of the InboundSamlConfig resource. Must start with &#39;saml.&#39; and can only have alphanumeric characters,\nhyphens, underscores or periods. The part after &#39;saml.&#39; must also start with a lowercase letter, end with an\nalphanumeric character, and have at least 2 characters.\n  - `project` (`string`): Set the `project` field on the resulting object. When `null`, the `project` field will be omitted from the resulting object.\n  - `idp_config` (`list[obj]`): SAML IdP configuration when the project acts as the relying party When `null`, the `idp_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.identity_platform_inbound_saml_config.idp_config.new](#fn-idp_confignew) constructor.\n  - `sp_config` (`list[obj]`): SAML SP (Service Provider) configuration when the project acts as the relying party to receive\nand accept an authentication assertion issued by a SAML identity provider. When `null`, the `sp_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.identity_platform_inbound_saml_config.sp_config.new](#fn-sp_confignew) constructor.\n  - `timeouts` (`obj`): Set the `timeouts` field on the resulting object. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.identity_platform_inbound_saml_config.timeouts.new](#fn-timeoutsnew) constructor.\n\n**Returns**:\n  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `identity_platform_inbound_saml_config` resource into the root Terraform configuration.\n', args=[]),
  newAttrs(
    display_name,
    name,
    enabled=null,
    idp_config=null,
    project=null,
    sp_config=null,
    timeouts=null
  ):: std.prune(a={
    display_name: display_name,
    enabled: enabled,
    idp_config: idp_config,
    name: name,
    project: project,
    sp_config: sp_config,
    timeouts: timeouts,
  }),
  sp_config:: {
    '#new':: d.fn(help='\n`google.identity_platform_inbound_saml_config.sp_config.new` constructs a new object with attributes and blocks configured for the `sp_config`\nTerraform sub block.\n\n\n\n**Args**:\n  - `callback_uri` (`string`): Callback URI where responses from IDP are handled. Must start with &#39;https://&#39;. When `null`, the `callback_uri` field will be omitted from the resulting object.\n  - `sp_entity_id` (`string`): Unique identifier for all SAML entities. When `null`, the `sp_entity_id` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `sp_config` sub block.\n', args=[]),
    new(
      callback_uri=null,
      sp_entity_id=null
    ):: std.prune(a={
      callback_uri: callback_uri,
      sp_entity_id: sp_entity_id,
    }),
  },
  timeouts:: {
    '#new':: d.fn(help='\n`google.identity_platform_inbound_saml_config.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`\nTerraform sub block.\n\n\n\n**Args**:\n  - `create` (`string`): Set the `create` field on the resulting object. When `null`, the `create` field will be omitted from the resulting object.\n  - `delete` (`string`): Set the `delete` field on the resulting object. When `null`, the `delete` field will be omitted from the resulting object.\n  - `update` (`string`): Set the `update` field on the resulting object. When `null`, the `update` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `timeouts` sub block.\n', args=[]),
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
  '#withDisplayName':: d.fn(help='`google.string.withDisplayName` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the display_name field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `display_name` field.\n', args=[]),
  withDisplayName(resourceLabel, value): {
    resource+: {
      google_identity_platform_inbound_saml_config+: {
        [resourceLabel]+: {
          display_name: value,
        },
      },
    },
  },
  '#withEnabled':: d.fn(help='`google.bool.withEnabled` constructs a mixin object that can be merged into the `bool`\nTerraform resource block to set or update the enabled field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`bool`): The value to set for the `enabled` field.\n', args=[]),
  withEnabled(resourceLabel, value): {
    resource+: {
      google_identity_platform_inbound_saml_config+: {
        [resourceLabel]+: {
          enabled: value,
        },
      },
    },
  },
  '#withIdpConfig':: d.fn(help='`google.list[obj].withIdpConfig` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the idp_config field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [google.list[obj].withIdpConfigMixin](TODO) function.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `idp_config` field.\n', args=[]),
  withIdpConfig(resourceLabel, value): {
    resource+: {
      google_identity_platform_inbound_saml_config+: {
        [resourceLabel]+: {
          idp_config: value,
        },
      },
    },
  },
  '#withIdpConfigMixin':: d.fn(help='`google.list[obj].withIdpConfigMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the idp_config field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google.list[obj].withIdpConfig](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `idp_config` field.\n', args=[]),
  withIdpConfigMixin(resourceLabel, value): {
    resource+: {
      google_identity_platform_inbound_saml_config+: {
        [resourceLabel]+: {
          idp_config+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withName':: d.fn(help='`google.string.withName` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the name field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `name` field.\n', args=[]),
  withName(resourceLabel, value): {
    resource+: {
      google_identity_platform_inbound_saml_config+: {
        [resourceLabel]+: {
          name: value,
        },
      },
    },
  },
  '#withProject':: d.fn(help='`google.string.withProject` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the project field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `project` field.\n', args=[]),
  withProject(resourceLabel, value): {
    resource+: {
      google_identity_platform_inbound_saml_config+: {
        [resourceLabel]+: {
          project: value,
        },
      },
    },
  },
  '#withSpConfig':: d.fn(help='`google.list[obj].withSpConfig` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the sp_config field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [google.list[obj].withSpConfigMixin](TODO) function.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `sp_config` field.\n', args=[]),
  withSpConfig(resourceLabel, value): {
    resource+: {
      google_identity_platform_inbound_saml_config+: {
        [resourceLabel]+: {
          sp_config: value,
        },
      },
    },
  },
  '#withSpConfigMixin':: d.fn(help='`google.list[obj].withSpConfigMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the sp_config field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google.list[obj].withSpConfig](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `sp_config` field.\n', args=[]),
  withSpConfigMixin(resourceLabel, value): {
    resource+: {
      google_identity_platform_inbound_saml_config+: {
        [resourceLabel]+: {
          sp_config+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withTimeouts':: d.fn(help='`google.obj.withTimeouts` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will replace the map with the passed in `value`. If you wish to instead merge the\npassed in value to the existing map, use the [google.obj.withTimeoutsMixin](TODO) function.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeouts(resourceLabel, value): {
    resource+: {
      google_identity_platform_inbound_saml_config+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  '#withTimeoutsMixin':: d.fn(help='`google.obj.withTimeoutsMixin` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will merge the passed in value to the existing map. If you wish\nto instead replace the entire map with the passed in `value`, use the [google.obj.withTimeouts](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeoutsMixin(resourceLabel, value): {
    resource+: {
      google_identity_platform_inbound_saml_config+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
}
