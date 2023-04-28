local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
local d = (import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet');
{
  '#':: d.pkg(name='iam_workforce_pool_provider', url='', help='`iam_workforce_pool_provider` represents the `google_iam_workforce_pool_provider` Terraform resource.\n\n\n\nThis package contains functions and utilities for setting up the resource using Jsonnet code.\n'),
  '#new':: d.fn(help="\n`google.iam_workforce_pool_provider.new` injects a new `google_iam_workforce_pool_provider` Terraform `resource`\nblock into the root module document.\n\nAdditionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the\nresource. For example, if you added a new instance to the root using:\n\n    # arguments omitted for brevity\n    google.iam_workforce_pool_provider.new('some_id')\n\nYou can get the reference to the `id` field of the created `google.iam_workforce_pool_provider` using the reference:\n\n    $._ref.google_iam_workforce_pool_provider.some_id.get('id')\n\nThis is the same as directly entering `\"${ google_iam_workforce_pool_provider.some_id.id }\"` as the value.\n\nNOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,\nor `$` to refer to the root object. Instead, make an explicit outer object using `local`.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block.\n  - `attribute_condition` (`string`): A [Common Expression Language](https://opensource.google/projects/cel) expression, in\nplain text, to restrict what otherwise valid authentication credentials issued by the\nprovider should not be accepted.\n\nThe expression must output a boolean representing whether to allow the federation.\n\nThe following keywords may be referenced in the expressions:\n  * \u0026#39;assertion\u0026#39;: JSON representing the authentication credential issued by the provider.\n  * \u0026#39;google\u0026#39;: The Google attributes mapped from the assertion in the \u0026#39;attribute_mappings\u0026#39;.\n    \u0026#39;google.profile_photo\u0026#39; and \u0026#39;google.display_name\u0026#39; are not supported.\n  * \u0026#39;attribute\u0026#39;: The custom attributes mapped from the assertion in the \u0026#39;attribute_mappings\u0026#39;.\n\nThe maximum length of the attribute condition expression is 4096 characters.\nIf unspecified, all valid authentication credentials will be accepted.\n\nThe following example shows how to only allow credentials with a mapped \u0026#39;google.groups\u0026#39; value of \u0026#39;admins\u0026#39;:\n\u0026#39;\u0026#39;\u0026#39;\n\u0026#34;\u0026#39;admins\u0026#39; in google.groups\u0026#34;\n\u0026#39;\u0026#39;\u0026#39; When `null`, the `attribute_condition` field will be omitted from the resulting object.\n  - `attribute_mapping` (`obj`): Maps attributes from the authentication credentials issued by an external identity provider\nto Google Cloud attributes, such as \u0026#39;subject\u0026#39; and \u0026#39;segment\u0026#39;.\n\nEach key must be a string specifying the Google Cloud IAM attribute to map to.\n\nThe following keys are supported:\n  * \u0026#39;google.subject\u0026#39;: The principal IAM is authenticating. You can reference this value in IAM bindings.\n    This is also the subject that appears in Cloud Logging logs. This is a required field and\n    the mapped subject cannot exceed 127 bytes.\n  * \u0026#39;google.groups\u0026#39;: Groups the authenticating user belongs to. You can grant groups access to\n    resources using an IAM \u0026#39;principalSet\u0026#39; binding; access applies to all members of the group.\n  * \u0026#39;google.display_name\u0026#39;: The name of the authenticated user. This is an optional field and\n    the mapped display name cannot exceed 100 bytes. If not set, \u0026#39;google.subject\u0026#39; will be displayed instead.\n    This attribute cannot be referenced in IAM bindings.\n  * \u0026#39;google.profile_photo\u0026#39;: The URL that specifies the authenticated user\u0026#39;s thumbnail photo.\n    This is an optional field. When set, the image will be visible as the user\u0026#39;s profile picture.\n    If not set, a generic user icon will be displayed instead.\n    This attribute cannot be referenced in IAM bindings.\n\nYou can also provide custom attributes by specifying \u0026#39;attribute.{custom_attribute}\u0026#39;, where {custom_attribute}\nis the name of the custom attribute to be mapped. You can define a maximum of 50 custom attributes.\nThe maximum length of a mapped attribute key is 100 characters, and the key may only contain the characters [a-z0-9_].\n\nYou can reference these attributes in IAM policies to define fine-grained access for a workforce pool\nto Google Cloud resources. For example:\n  * \u0026#39;google.subject\u0026#39;:\n    \u0026#39;principal://iam.googleapis.com/locations/{location}/workforcePools/{pool}/subject/{value}\u0026#39;\n  * \u0026#39;google.groups\u0026#39;:\n    \u0026#39;principalSet://iam.googleapis.com/locations/{location}/workforcePools/{pool}/group/{value}\u0026#39;\n  * \u0026#39;attribute.{custom_attribute}\u0026#39;:\n    \u0026#39;principalSet://iam.googleapis.com/locations/{location}/workforcePools/{pool}/attribute.{custom_attribute}/{value}\u0026#39;\n\nEach value must be a [Common Expression Language](https://opensource.google/projects/cel)\nfunction that maps an identity provider credential to the normalized attribute specified\nby the corresponding map key.\n\nYou can use the \u0026#39;assertion\u0026#39; keyword in the expression to access a JSON representation of\nthe authentication credential issued by the provider.\n\nThe maximum length of an attribute mapping expression is 2048 characters. When evaluated,\nthe total size of all mapped attributes must not exceed 8KB.\n\nFor OIDC providers, you must supply a custom mapping that includes the \u0026#39;google.subject\u0026#39; attribute.\nFor example, the following maps the sub claim of the incoming credential to the \u0026#39;subject\u0026#39; attribute\non a Google token:\n\u0026#39;\u0026#39;\u0026#39;\n{\u0026#34;google.subject\u0026#34;: \u0026#34;assertion.sub\u0026#34;}\n\u0026#39;\u0026#39;\u0026#39;\n\nAn object containing a list of \u0026#39;\u0026#34;key\u0026#34;: value\u0026#39; pairs.\nExample: \u0026#39;{ \u0026#34;name\u0026#34;: \u0026#34;wrench\u0026#34;, \u0026#34;mass\u0026#34;: \u0026#34;1.3kg\u0026#34;, \u0026#34;count\u0026#34;: \u0026#34;3\u0026#34; }\u0026#39;. When `null`, the `attribute_mapping` field will be omitted from the resulting object.\n  - `description` (`string`): A user-specified description of the provider. Cannot exceed 256 characters. When `null`, the `description` field will be omitted from the resulting object.\n  - `disabled` (`bool`): Whether the provider is disabled. You cannot use a disabled provider to exchange tokens.\nHowever, existing tokens still grant access. When `null`, the `disabled` field will be omitted from the resulting object.\n  - `display_name` (`string`): A user-specified display name for the provider. Cannot exceed 32 characters. When `null`, the `display_name` field will be omitted from the resulting object.\n  - `location` (`string`): The location for the resource.\n  - `provider_id` (`string`): The ID for the provider, which becomes the final component of the resource name.\nThis value must be 4-32 characters, and may contain the characters [a-z0-9-].\nThe prefix \u0026#39;gcp-\u0026#39; is reserved for use by Google, and may not be specified.\n  - `workforce_pool_id` (`string`): The ID to use for the pool, which becomes the final component of the resource name.\nThe IDs must be a globally unique string of 6 to 63 lowercase letters, digits, or hyphens.\nIt must start with a letter, and cannot have a trailing hyphen.\nThe prefix \u0026#39;gcp-\u0026#39; is reserved for use by Google, and may not be specified.\n  - `oidc` (`list[obj]`): Represents an OpenId Connect 1.0 identity provider. When `null`, the `oidc` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.iam_workforce_pool_provider.oidc.new](#fn-oidcnew) constructor.\n  - `saml` (`list[obj]`): Represents a SAML identity provider. When `null`, the `saml` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.iam_workforce_pool_provider.saml.new](#fn-samlnew) constructor.\n  - `timeouts` (`obj`): Set the `timeouts` field on the resulting resource block. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.iam_workforce_pool_provider.timeouts.new](#fn-timeoutsnew) constructor.\n\n**Returns**:\n- A mixin object that injects the new resource into the root Terraform configuration.\n", args=[]),
  new(
    resourceLabel,
    location,
    provider_id,
    workforce_pool_id,
    attribute_condition=null,
    attribute_mapping=null,
    description=null,
    disabled=null,
    display_name=null,
    oidc=null,
    saml=null,
    timeouts=null,
    _meta={}
  ):: tf.withResource(
    type='google_iam_workforce_pool_provider',
    label=resourceLabel,
    attrs=self.newAttrs(
      attribute_condition=attribute_condition,
      attribute_mapping=attribute_mapping,
      description=description,
      disabled=disabled,
      display_name=display_name,
      location=location,
      oidc=oidc,
      provider_id=provider_id,
      saml=saml,
      timeouts=timeouts,
      workforce_pool_id=workforce_pool_id
    ),
    _meta=_meta
  ),
  '#newAttrs':: d.fn(help='\n`google.iam_workforce_pool_provider.newAttrs` constructs a new object with attributes and blocks configured for the `iam_workforce_pool_provider`\nTerraform resource.\n\nUnlike [google.iam_workforce_pool_provider.new](#fn-new), this function will not inject the `resource`\nblock into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the\n[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.\n\nThis is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to\ninjecting into a complete block.\n\n**Args**:\n  - `attribute_condition` (`string`): A [Common Expression Language](https://opensource.google/projects/cel) expression, in\nplain text, to restrict what otherwise valid authentication credentials issued by the\nprovider should not be accepted.\n\nThe expression must output a boolean representing whether to allow the federation.\n\nThe following keywords may be referenced in the expressions:\n  * &#39;assertion&#39;: JSON representing the authentication credential issued by the provider.\n  * &#39;google&#39;: The Google attributes mapped from the assertion in the &#39;attribute_mappings&#39;.\n    &#39;google.profile_photo&#39; and &#39;google.display_name&#39; are not supported.\n  * &#39;attribute&#39;: The custom attributes mapped from the assertion in the &#39;attribute_mappings&#39;.\n\nThe maximum length of the attribute condition expression is 4096 characters.\nIf unspecified, all valid authentication credentials will be accepted.\n\nThe following example shows how to only allow credentials with a mapped &#39;google.groups&#39; value of &#39;admins&#39;:\n&#39;&#39;&#39;\n&#34;&#39;admins&#39; in google.groups&#34;\n&#39;&#39;&#39; When `null`, the `attribute_condition` field will be omitted from the resulting object.\n  - `attribute_mapping` (`obj`): Maps attributes from the authentication credentials issued by an external identity provider\nto Google Cloud attributes, such as &#39;subject&#39; and &#39;segment&#39;.\n\nEach key must be a string specifying the Google Cloud IAM attribute to map to.\n\nThe following keys are supported:\n  * &#39;google.subject&#39;: The principal IAM is authenticating. You can reference this value in IAM bindings.\n    This is also the subject that appears in Cloud Logging logs. This is a required field and\n    the mapped subject cannot exceed 127 bytes.\n  * &#39;google.groups&#39;: Groups the authenticating user belongs to. You can grant groups access to\n    resources using an IAM &#39;principalSet&#39; binding; access applies to all members of the group.\n  * &#39;google.display_name&#39;: The name of the authenticated user. This is an optional field and\n    the mapped display name cannot exceed 100 bytes. If not set, &#39;google.subject&#39; will be displayed instead.\n    This attribute cannot be referenced in IAM bindings.\n  * &#39;google.profile_photo&#39;: The URL that specifies the authenticated user&#39;s thumbnail photo.\n    This is an optional field. When set, the image will be visible as the user&#39;s profile picture.\n    If not set, a generic user icon will be displayed instead.\n    This attribute cannot be referenced in IAM bindings.\n\nYou can also provide custom attributes by specifying &#39;attribute.{custom_attribute}&#39;, where {custom_attribute}\nis the name of the custom attribute to be mapped. You can define a maximum of 50 custom attributes.\nThe maximum length of a mapped attribute key is 100 characters, and the key may only contain the characters [a-z0-9_].\n\nYou can reference these attributes in IAM policies to define fine-grained access for a workforce pool\nto Google Cloud resources. For example:\n  * &#39;google.subject&#39;:\n    &#39;principal://iam.googleapis.com/locations/{location}/workforcePools/{pool}/subject/{value}&#39;\n  * &#39;google.groups&#39;:\n    &#39;principalSet://iam.googleapis.com/locations/{location}/workforcePools/{pool}/group/{value}&#39;\n  * &#39;attribute.{custom_attribute}&#39;:\n    &#39;principalSet://iam.googleapis.com/locations/{location}/workforcePools/{pool}/attribute.{custom_attribute}/{value}&#39;\n\nEach value must be a [Common Expression Language](https://opensource.google/projects/cel)\nfunction that maps an identity provider credential to the normalized attribute specified\nby the corresponding map key.\n\nYou can use the &#39;assertion&#39; keyword in the expression to access a JSON representation of\nthe authentication credential issued by the provider.\n\nThe maximum length of an attribute mapping expression is 2048 characters. When evaluated,\nthe total size of all mapped attributes must not exceed 8KB.\n\nFor OIDC providers, you must supply a custom mapping that includes the &#39;google.subject&#39; attribute.\nFor example, the following maps the sub claim of the incoming credential to the &#39;subject&#39; attribute\non a Google token:\n&#39;&#39;&#39;\n{&#34;google.subject&#34;: &#34;assertion.sub&#34;}\n&#39;&#39;&#39;\n\nAn object containing a list of &#39;&#34;key&#34;: value&#39; pairs.\nExample: &#39;{ &#34;name&#34;: &#34;wrench&#34;, &#34;mass&#34;: &#34;1.3kg&#34;, &#34;count&#34;: &#34;3&#34; }&#39;. When `null`, the `attribute_mapping` field will be omitted from the resulting object.\n  - `description` (`string`): A user-specified description of the provider. Cannot exceed 256 characters. When `null`, the `description` field will be omitted from the resulting object.\n  - `disabled` (`bool`): Whether the provider is disabled. You cannot use a disabled provider to exchange tokens.\nHowever, existing tokens still grant access. When `null`, the `disabled` field will be omitted from the resulting object.\n  - `display_name` (`string`): A user-specified display name for the provider. Cannot exceed 32 characters. When `null`, the `display_name` field will be omitted from the resulting object.\n  - `location` (`string`): The location for the resource.\n  - `provider_id` (`string`): The ID for the provider, which becomes the final component of the resource name.\nThis value must be 4-32 characters, and may contain the characters [a-z0-9-].\nThe prefix &#39;gcp-&#39; is reserved for use by Google, and may not be specified.\n  - `workforce_pool_id` (`string`): The ID to use for the pool, which becomes the final component of the resource name.\nThe IDs must be a globally unique string of 6 to 63 lowercase letters, digits, or hyphens.\nIt must start with a letter, and cannot have a trailing hyphen.\nThe prefix &#39;gcp-&#39; is reserved for use by Google, and may not be specified.\n  - `oidc` (`list[obj]`): Represents an OpenId Connect 1.0 identity provider. When `null`, the `oidc` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.iam_workforce_pool_provider.oidc.new](#fn-oidcnew) constructor.\n  - `saml` (`list[obj]`): Represents a SAML identity provider. When `null`, the `saml` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.iam_workforce_pool_provider.saml.new](#fn-samlnew) constructor.\n  - `timeouts` (`obj`): Set the `timeouts` field on the resulting object. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.iam_workforce_pool_provider.timeouts.new](#fn-timeoutsnew) constructor.\n\n**Returns**:\n  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `iam_workforce_pool_provider` resource into the root Terraform configuration.\n', args=[]),
  newAttrs(
    location,
    provider_id,
    workforce_pool_id,
    attribute_condition=null,
    attribute_mapping=null,
    description=null,
    disabled=null,
    display_name=null,
    oidc=null,
    saml=null,
    timeouts=null
  ):: std.prune(a={
    attribute_condition: attribute_condition,
    attribute_mapping: attribute_mapping,
    description: description,
    disabled: disabled,
    display_name: display_name,
    location: location,
    oidc: oidc,
    provider_id: provider_id,
    saml: saml,
    timeouts: timeouts,
    workforce_pool_id: workforce_pool_id,
  }),
  oidc:: {
    '#new':: d.fn(help='\n`google.iam_workforce_pool_provider.oidc.new` constructs a new object with attributes and blocks configured for the `oidc`\nTerraform sub block.\n\n\n\n**Args**:\n  - `client_id` (`string`): The client ID. Must match the audience claim of the JWT issued by the identity provider.\n  - `issuer_uri` (`string`): The OIDC issuer URI. Must be a valid URI using the &#39;https&#39; scheme.\n  - `web_sso_config` (`list[obj]`): Configuration for web single sign-on for the OIDC provider. Here, web sign-in refers to console sign-in and gcloud sign-in through the browser. When `null`, the `web_sso_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.iam_workforce_pool_provider.oidc.web_sso_config.new](#fn-oidcweb_sso_confignew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `oidc` sub block.\n', args=[]),
    new(
      client_id,
      issuer_uri,
      web_sso_config=null
    ):: std.prune(a={
      client_id: client_id,
      issuer_uri: issuer_uri,
      web_sso_config: web_sso_config,
    }),
    web_sso_config:: {
      '#new':: d.fn(help='\n`google.iam_workforce_pool_provider.oidc.web_sso_config.new` constructs a new object with attributes and blocks configured for the `web_sso_config`\nTerraform sub block.\n\n\n\n**Args**:\n  - `assertion_claims_behavior` (`string`): The behavior for how OIDC Claims are included in the &#39;assertion&#39; object used for attribute mapping and attribute condition.\n* ONLY_ID_TOKEN_CLAIMS: Only include ID Token Claims. Possible values: [&#34;ONLY_ID_TOKEN_CLAIMS&#34;]\n  - `response_type` (`string`): The Response Type to request for in the OIDC Authorization Request for web sign-in.\n* ID_TOKEN: The &#39;response_type=id_token&#39; selection uses the Implicit Flow for web sign-in. Possible values: [&#34;ID_TOKEN&#34;]\n\n**Returns**:\n  - An attribute object that represents the `web_sso_config` sub block.\n', args=[]),
      new(
        assertion_claims_behavior,
        response_type
      ):: std.prune(a={
        assertion_claims_behavior: assertion_claims_behavior,
        response_type: response_type,
      }),
    },
  },
  saml:: {
    '#new':: d.fn(help='\n`google.iam_workforce_pool_provider.saml.new` constructs a new object with attributes and blocks configured for the `saml`\nTerraform sub block.\n\n\n\n**Args**:\n  - `idp_metadata_xml` (`string`): SAML Identity provider configuration metadata xml doc.\nThe xml document should comply with [SAML 2.0 specification](https://docs.oasis-open.org/security/saml/v2.0/saml-metadata-2.0-os.pdf).\nThe max size of the acceptable xml document will be bounded to 128k characters.\n\nThe metadata xml document should satisfy the following constraints:\n1) Must contain an Identity Provider Entity ID.\n2) Must contain at least one non-expired signing key certificate.\n3) For each signing key: \n  a) Valid from should be no more than 7 days from now. \n  b) Valid to should be no more than 10 years in the future. \n4) Up to 3 IdP signing keys are allowed in the metadata xml.\n\nWhen updating the provider&#39;s metadata xml, at least one non-expired signing key\nmust overlap with the existing metadata. This requirement is skipped if there are\nno non-expired signing keys present in the existing metadata.\n\n**Returns**:\n  - An attribute object that represents the `saml` sub block.\n', args=[]),
    new(
      idp_metadata_xml
    ):: std.prune(a={
      idp_metadata_xml: idp_metadata_xml,
    }),
  },
  timeouts:: {
    '#new':: d.fn(help='\n`google.iam_workforce_pool_provider.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`\nTerraform sub block.\n\n\n\n**Args**:\n  - `create` (`string`): Set the `create` field on the resulting object. When `null`, the `create` field will be omitted from the resulting object.\n  - `delete` (`string`): Set the `delete` field on the resulting object. When `null`, the `delete` field will be omitted from the resulting object.\n  - `update` (`string`): Set the `update` field on the resulting object. When `null`, the `update` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `timeouts` sub block.\n', args=[]),
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
  '#withAttributeCondition':: d.fn(help='`google.string.withAttributeCondition` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the attribute_condition field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `attribute_condition` field.\n', args=[]),
  withAttributeCondition(resourceLabel, value): {
    resource+: {
      google_iam_workforce_pool_provider+: {
        [resourceLabel]+: {
          attribute_condition: value,
        },
      },
    },
  },
  '#withAttributeMapping':: d.fn(help='`google.obj.withAttributeMapping` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the attribute_mapping field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `attribute_mapping` field.\n', args=[]),
  withAttributeMapping(resourceLabel, value): {
    resource+: {
      google_iam_workforce_pool_provider+: {
        [resourceLabel]+: {
          attribute_mapping: value,
        },
      },
    },
  },
  '#withDescription':: d.fn(help='`google.string.withDescription` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the description field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `description` field.\n', args=[]),
  withDescription(resourceLabel, value): {
    resource+: {
      google_iam_workforce_pool_provider+: {
        [resourceLabel]+: {
          description: value,
        },
      },
    },
  },
  '#withDisabled':: d.fn(help='`google.bool.withDisabled` constructs a mixin object that can be merged into the `bool`\nTerraform resource block to set or update the disabled field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`bool`): The value to set for the `disabled` field.\n', args=[]),
  withDisabled(resourceLabel, value): {
    resource+: {
      google_iam_workforce_pool_provider+: {
        [resourceLabel]+: {
          disabled: value,
        },
      },
    },
  },
  '#withDisplayName':: d.fn(help='`google.string.withDisplayName` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the display_name field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `display_name` field.\n', args=[]),
  withDisplayName(resourceLabel, value): {
    resource+: {
      google_iam_workforce_pool_provider+: {
        [resourceLabel]+: {
          display_name: value,
        },
      },
    },
  },
  '#withLocation':: d.fn(help='`google.string.withLocation` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the location field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `location` field.\n', args=[]),
  withLocation(resourceLabel, value): {
    resource+: {
      google_iam_workforce_pool_provider+: {
        [resourceLabel]+: {
          location: value,
        },
      },
    },
  },
  '#withOidc':: d.fn(help='`google.list[obj].withOidc` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the oidc field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [google.list[obj].withOidcMixin](TODO) function.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `oidc` field.\n', args=[]),
  withOidc(resourceLabel, value): {
    resource+: {
      google_iam_workforce_pool_provider+: {
        [resourceLabel]+: {
          oidc: value,
        },
      },
    },
  },
  '#withOidcMixin':: d.fn(help='`google.list[obj].withOidcMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the oidc field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google.list[obj].withOidc](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `oidc` field.\n', args=[]),
  withOidcMixin(resourceLabel, value): {
    resource+: {
      google_iam_workforce_pool_provider+: {
        [resourceLabel]+: {
          oidc+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withProviderId':: d.fn(help='`google.string.withProviderId` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the provider_id field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `provider_id` field.\n', args=[]),
  withProviderId(resourceLabel, value): {
    resource+: {
      google_iam_workforce_pool_provider+: {
        [resourceLabel]+: {
          provider_id: value,
        },
      },
    },
  },
  '#withSaml':: d.fn(help='`google.list[obj].withSaml` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the saml field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [google.list[obj].withSamlMixin](TODO) function.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `saml` field.\n', args=[]),
  withSaml(resourceLabel, value): {
    resource+: {
      google_iam_workforce_pool_provider+: {
        [resourceLabel]+: {
          saml: value,
        },
      },
    },
  },
  '#withSamlMixin':: d.fn(help='`google.list[obj].withSamlMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the saml field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google.list[obj].withSaml](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `saml` field.\n', args=[]),
  withSamlMixin(resourceLabel, value): {
    resource+: {
      google_iam_workforce_pool_provider+: {
        [resourceLabel]+: {
          saml+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withTimeouts':: d.fn(help='`google.obj.withTimeouts` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will replace the map with the passed in `value`. If you wish to instead merge the\npassed in value to the existing map, use the [google.obj.withTimeoutsMixin](TODO) function.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeouts(resourceLabel, value): {
    resource+: {
      google_iam_workforce_pool_provider+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  '#withTimeoutsMixin':: d.fn(help='`google.obj.withTimeoutsMixin` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will merge the passed in value to the existing map. If you wish\nto instead replace the entire map with the passed in `value`, use the [google.obj.withTimeouts](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeoutsMixin(resourceLabel, value): {
    resource+: {
      google_iam_workforce_pool_provider+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
  '#withWorkforcePoolId':: d.fn(help='`google.string.withWorkforcePoolId` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the workforce_pool_id field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `workforce_pool_id` field.\n', args=[]),
  withWorkforcePoolId(resourceLabel, value): {
    resource+: {
      google_iam_workforce_pool_provider+: {
        [resourceLabel]+: {
          workforce_pool_id: value,
        },
      },
    },
  },
}
