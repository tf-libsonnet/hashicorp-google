local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
local d = (import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet');
{
  '#':: d.pkg(name='iam_workload_identity_pool_provider', url='', help='`iam_workload_identity_pool_provider` represents the `google_iam_workload_identity_pool_provider` Terraform resource.\n\n\n\nThis package contains functions and utilities for setting up the resource using Jsonnet code.\n'),
  aws:: {
    '#new':: d.fn(help='\n`google.iam_workload_identity_pool_provider.aws.new` constructs a new object with attributes and blocks configured for the `aws`\nTerraform sub block.\n\n\n\n**Args**:\n  - `account_id` (`string`): The AWS account ID.\n\n**Returns**:\n  - An attribute object that represents the `aws` sub block.\n', args=[]),
    new(
      account_id
    ):: std.prune(a={
      account_id: account_id,
    }),
  },
  '#new':: d.fn(help="\n`google.iam_workload_identity_pool_provider.new` injects a new `google_iam_workload_identity_pool_provider` Terraform `resource`\nblock into the root module document.\n\nAdditionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the\nresource. For example, if you added a new instance to the root using:\n\n    # arguments omitted for brevity\n    google.iam_workload_identity_pool_provider.new('some_id')\n\nYou can get the reference to the `id` field of the created `google.iam_workload_identity_pool_provider` using the reference:\n\n    $._ref.google_iam_workload_identity_pool_provider.some_id.get('id')\n\nThis is the same as directly entering `\"${ google_iam_workload_identity_pool_provider.some_id.id }\"` as the value.\n\nNOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,\nor `$` to refer to the root object. Instead, make an explicit outer object using `local`.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block.\n  - `attribute_condition` (`string`): [A Common Expression Language](https://opensource.google/projects/cel) expression, in\nplain text, to restrict what otherwise valid authentication credentials issued by the\nprovider should not be accepted.\n\nThe expression must output a boolean representing whether to allow the federation.\n\nThe following keywords may be referenced in the expressions:\n  * \u0026#39;assertion\u0026#39;: JSON representing the authentication credential issued by the provider.\n  * \u0026#39;google\u0026#39;: The Google attributes mapped from the assertion in the \u0026#39;attribute_mappings\u0026#39;.\n  * \u0026#39;attribute\u0026#39;: The custom attributes mapped from the assertion in the \u0026#39;attribute_mappings\u0026#39;.\n\nThe maximum length of the attribute condition expression is 4096 characters. If\nunspecified, all valid authentication credential are accepted.\n\nThe following example shows how to only allow credentials with a mapped \u0026#39;google.groups\u0026#39;\nvalue of \u0026#39;admins\u0026#39;:\n\u0026#39;\u0026#39;\u0026#39;\n\u0026#34;\u0026#39;admins\u0026#39; in google.groups\u0026#34;\n\u0026#39;\u0026#39;\u0026#39; When `null`, the `attribute_condition` field will be omitted from the resulting object.\n  - `attribute_mapping` (`obj`): Maps attributes from authentication credentials issued by an external identity provider\nto Google Cloud attributes, such as \u0026#39;subject\u0026#39; and \u0026#39;segment\u0026#39;.\n\nEach key must be a string specifying the Google Cloud IAM attribute to map to.\n\nThe following keys are supported:\n  * \u0026#39;google.subject\u0026#39;: The principal IAM is authenticating. You can reference this value\n    in IAM bindings. This is also the subject that appears in Cloud Logging logs.\n    Cannot exceed 127 characters.\n  * \u0026#39;google.groups\u0026#39;: Groups the external identity belongs to. You can grant groups\n    access to resources using an IAM \u0026#39;principalSet\u0026#39; binding; access applies to all\n    members of the group.\n\nYou can also provide custom attributes by specifying \u0026#39;attribute.{custom_attribute}\u0026#39;,\nwhere \u0026#39;{custom_attribute}\u0026#39; is the name of the custom attribute to be mapped. You can\ndefine a maximum of 50 custom attributes. The maximum length of a mapped attribute key\nis 100 characters, and the key may only contain the characters [a-z0-9_].\n\nYou can reference these attributes in IAM policies to define fine-grained access for a\nworkload to Google Cloud resources. For example:\n  * \u0026#39;google.subject\u0026#39;:\n    \u0026#39;principal://iam.googleapis.com/projects/{project}/locations/{location}/workloadIdentityPools/{pool}/subject/{value}\u0026#39;\n  * \u0026#39;google.groups\u0026#39;:\n    \u0026#39;principalSet://iam.googleapis.com/projects/{project}/locations/{location}/workloadIdentityPools/{pool}/group/{value}\u0026#39;\n  * \u0026#39;attribute.{custom_attribute}\u0026#39;:\n    \u0026#39;principalSet://iam.googleapis.com/projects/{project}/locations/{location}/workloadIdentityPools/{pool}/attribute.{custom_attribute}/{value}\u0026#39;\n\nEach value must be a [Common Expression Language](https://opensource.google/projects/cel)\nfunction that maps an identity provider credential to the normalized attribute specified\nby the corresponding map key.\n\nYou can use the \u0026#39;assertion\u0026#39; keyword in the expression to access a JSON representation of\nthe authentication credential issued by the provider.\n\nThe maximum length of an attribute mapping expression is 2048 characters. When evaluated,\nthe total size of all mapped attributes must not exceed 8KB.\n\nFor AWS providers, the following rules apply:\n  - If no attribute mapping is defined, the following default mapping applies:\n    \u0026#39;\u0026#39;\u0026#39;\n    {\n      \u0026#34;google.subject\u0026#34;:\u0026#34;assertion.arn\u0026#34;,\n      \u0026#34;attribute.aws_role\u0026#34;:\n        \u0026#34;assertion.arn.contains(\u0026#39;assumed-role\u0026#39;)\u0026#34;\n        \u0026#34; ? assertion.arn.extract(\u0026#39;{account_arn}assumed-role/\u0026#39;)\u0026#34;\n        \u0026#34;   \u0026#43; \u0026#39;assumed-role/\u0026#39;\u0026#34;\n        \u0026#34;   \u0026#43; assertion.arn.extract(\u0026#39;assumed-role/{role_name}/\u0026#39;)\u0026#34;\n        \u0026#34; : assertion.arn\u0026#34;,\n    }\n    \u0026#39;\u0026#39;\u0026#39;\n  - If any custom attribute mappings are defined, they must include a mapping to the\n    \u0026#39;google.subject\u0026#39; attribute.\n\nFor OIDC providers, the following rules apply:\n  - Custom attribute mappings must be defined, and must include a mapping to the\n    \u0026#39;google.subject\u0026#39; attribute. For example, the following maps the \u0026#39;sub\u0026#39; claim of the\n    incoming credential to the \u0026#39;subject\u0026#39; attribute on a Google token.\n    \u0026#39;\u0026#39;\u0026#39;\n    {\u0026#34;google.subject\u0026#34;: \u0026#34;assertion.sub\u0026#34;}\n    \u0026#39;\u0026#39;\u0026#39; When `null`, the `attribute_mapping` field will be omitted from the resulting object.\n  - `description` (`string`): A description for the provider. Cannot exceed 256 characters. When `null`, the `description` field will be omitted from the resulting object.\n  - `disabled` (`bool`): Whether the provider is disabled. You cannot use a disabled provider to exchange tokens.\nHowever, existing tokens still grant access. When `null`, the `disabled` field will be omitted from the resulting object.\n  - `display_name` (`string`): A display name for the provider. Cannot exceed 32 characters. When `null`, the `display_name` field will be omitted from the resulting object.\n  - `project` (`string`):  When `null`, the `project` field will be omitted from the resulting object.\n  - `workload_identity_pool_id` (`string`): The ID used for the pool, which is the final component of the pool resource name. This\nvalue should be 4-32 characters, and may contain the characters [a-z0-9-]. The prefix\n\u0026#39;gcp-\u0026#39; is reserved for use by Google, and may not be specified.\n  - `workload_identity_pool_provider_id` (`string`): The ID for the provider, which becomes the final component of the resource name. This\nvalue must be 4-32 characters, and may contain the characters [a-z0-9-]. The prefix\n\u0026#39;gcp-\u0026#39; is reserved for use by Google, and may not be specified.\n  - `aws` (`list[obj]`): An Amazon Web Services identity provider. Not compatible with the property oidc. When `null`, the `aws` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.iam_workload_identity_pool_provider.aws.new](#fn-iamworkloadidentitypoolproviderawsnew) constructor.\n  - `oidc` (`list[obj]`): An OpenId Connect 1.0 identity provider. Not compatible with the property aws. When `null`, the `oidc` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.iam_workload_identity_pool_provider.oidc.new](#fn-iamworkloadidentitypoolprovideroidcnew) constructor.\n  - `timeouts` (`obj`):  When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.iam_workload_identity_pool_provider.timeouts.new](#fn-iamworkloadidentitypoolprovidertimeoutsnew) constructor.\n\n**Returns**:\n- A mixin object that injects the new resource into the root Terraform configuration.\n", args=[]),
  new(
    resourceLabel,
    workload_identity_pool_id,
    workload_identity_pool_provider_id,
    attribute_condition=null,
    attribute_mapping=null,
    aws=null,
    description=null,
    disabled=null,
    display_name=null,
    oidc=null,
    project=null,
    timeouts=null,
    _meta={}
  ):: tf.withResource(
    type='google_iam_workload_identity_pool_provider',
    label=resourceLabel,
    attrs=self.newAttrs(
      attribute_condition=attribute_condition,
      attribute_mapping=attribute_mapping,
      aws=aws,
      description=description,
      disabled=disabled,
      display_name=display_name,
      oidc=oidc,
      project=project,
      timeouts=timeouts,
      workload_identity_pool_id=workload_identity_pool_id,
      workload_identity_pool_provider_id=workload_identity_pool_provider_id
    ),
    _meta=_meta
  ),
  '#newAttrs':: d.fn(help='\n`google.iam_workload_identity_pool_provider.newAttrs` constructs a new object with attributes and blocks configured for the `iam_workload_identity_pool_provider`\nTerraform resource.\n\nUnlike [google.iam_workload_identity_pool_provider.new](#fn-iamworkloadidentitypoolprovidernew), this function will not inject the `resource`\nblock into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the\n[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.\n\nThis is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to\ninjecting into a complete block.\n\n**Args**:\n  - `attribute_condition` (`string`): [A Common Expression Language](https://opensource.google/projects/cel) expression, in\nplain text, to restrict what otherwise valid authentication credentials issued by the\nprovider should not be accepted.\n\nThe expression must output a boolean representing whether to allow the federation.\n\nThe following keywords may be referenced in the expressions:\n  * &#39;assertion&#39;: JSON representing the authentication credential issued by the provider.\n  * &#39;google&#39;: The Google attributes mapped from the assertion in the &#39;attribute_mappings&#39;.\n  * &#39;attribute&#39;: The custom attributes mapped from the assertion in the &#39;attribute_mappings&#39;.\n\nThe maximum length of the attribute condition expression is 4096 characters. If\nunspecified, all valid authentication credential are accepted.\n\nThe following example shows how to only allow credentials with a mapped &#39;google.groups&#39;\nvalue of &#39;admins&#39;:\n&#39;&#39;&#39;\n&#34;&#39;admins&#39; in google.groups&#34;\n&#39;&#39;&#39; When `null`, the `attribute_condition` field will be omitted from the resulting object.\n  - `attribute_mapping` (`obj`): Maps attributes from authentication credentials issued by an external identity provider\nto Google Cloud attributes, such as &#39;subject&#39; and &#39;segment&#39;.\n\nEach key must be a string specifying the Google Cloud IAM attribute to map to.\n\nThe following keys are supported:\n  * &#39;google.subject&#39;: The principal IAM is authenticating. You can reference this value\n    in IAM bindings. This is also the subject that appears in Cloud Logging logs.\n    Cannot exceed 127 characters.\n  * &#39;google.groups&#39;: Groups the external identity belongs to. You can grant groups\n    access to resources using an IAM &#39;principalSet&#39; binding; access applies to all\n    members of the group.\n\nYou can also provide custom attributes by specifying &#39;attribute.{custom_attribute}&#39;,\nwhere &#39;{custom_attribute}&#39; is the name of the custom attribute to be mapped. You can\ndefine a maximum of 50 custom attributes. The maximum length of a mapped attribute key\nis 100 characters, and the key may only contain the characters [a-z0-9_].\n\nYou can reference these attributes in IAM policies to define fine-grained access for a\nworkload to Google Cloud resources. For example:\n  * &#39;google.subject&#39;:\n    &#39;principal://iam.googleapis.com/projects/{project}/locations/{location}/workloadIdentityPools/{pool}/subject/{value}&#39;\n  * &#39;google.groups&#39;:\n    &#39;principalSet://iam.googleapis.com/projects/{project}/locations/{location}/workloadIdentityPools/{pool}/group/{value}&#39;\n  * &#39;attribute.{custom_attribute}&#39;:\n    &#39;principalSet://iam.googleapis.com/projects/{project}/locations/{location}/workloadIdentityPools/{pool}/attribute.{custom_attribute}/{value}&#39;\n\nEach value must be a [Common Expression Language](https://opensource.google/projects/cel)\nfunction that maps an identity provider credential to the normalized attribute specified\nby the corresponding map key.\n\nYou can use the &#39;assertion&#39; keyword in the expression to access a JSON representation of\nthe authentication credential issued by the provider.\n\nThe maximum length of an attribute mapping expression is 2048 characters. When evaluated,\nthe total size of all mapped attributes must not exceed 8KB.\n\nFor AWS providers, the following rules apply:\n  - If no attribute mapping is defined, the following default mapping applies:\n    &#39;&#39;&#39;\n    {\n      &#34;google.subject&#34;:&#34;assertion.arn&#34;,\n      &#34;attribute.aws_role&#34;:\n        &#34;assertion.arn.contains(&#39;assumed-role&#39;)&#34;\n        &#34; ? assertion.arn.extract(&#39;{account_arn}assumed-role/&#39;)&#34;\n        &#34;   &#43; &#39;assumed-role/&#39;&#34;\n        &#34;   &#43; assertion.arn.extract(&#39;assumed-role/{role_name}/&#39;)&#34;\n        &#34; : assertion.arn&#34;,\n    }\n    &#39;&#39;&#39;\n  - If any custom attribute mappings are defined, they must include a mapping to the\n    &#39;google.subject&#39; attribute.\n\nFor OIDC providers, the following rules apply:\n  - Custom attribute mappings must be defined, and must include a mapping to the\n    &#39;google.subject&#39; attribute. For example, the following maps the &#39;sub&#39; claim of the\n    incoming credential to the &#39;subject&#39; attribute on a Google token.\n    &#39;&#39;&#39;\n    {&#34;google.subject&#34;: &#34;assertion.sub&#34;}\n    &#39;&#39;&#39; When `null`, the `attribute_mapping` field will be omitted from the resulting object.\n  - `description` (`string`): A description for the provider. Cannot exceed 256 characters. When `null`, the `description` field will be omitted from the resulting object.\n  - `disabled` (`bool`): Whether the provider is disabled. You cannot use a disabled provider to exchange tokens.\nHowever, existing tokens still grant access. When `null`, the `disabled` field will be omitted from the resulting object.\n  - `display_name` (`string`): A display name for the provider. Cannot exceed 32 characters. When `null`, the `display_name` field will be omitted from the resulting object.\n  - `project` (`string`):  When `null`, the `project` field will be omitted from the resulting object.\n  - `workload_identity_pool_id` (`string`): The ID used for the pool, which is the final component of the pool resource name. This\nvalue should be 4-32 characters, and may contain the characters [a-z0-9-]. The prefix\n&#39;gcp-&#39; is reserved for use by Google, and may not be specified.\n  - `workload_identity_pool_provider_id` (`string`): The ID for the provider, which becomes the final component of the resource name. This\nvalue must be 4-32 characters, and may contain the characters [a-z0-9-]. The prefix\n&#39;gcp-&#39; is reserved for use by Google, and may not be specified.\n  - `aws` (`list[obj]`): An Amazon Web Services identity provider. Not compatible with the property oidc. When `null`, the `aws` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.iam_workload_identity_pool_provider.aws.new](#fn-iamworkloadidentitypoolproviderawsnew) constructor.\n  - `oidc` (`list[obj]`): An OpenId Connect 1.0 identity provider. Not compatible with the property aws. When `null`, the `oidc` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.iam_workload_identity_pool_provider.oidc.new](#fn-iamworkloadidentitypoolprovideroidcnew) constructor.\n  - `timeouts` (`obj`):  When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.iam_workload_identity_pool_provider.timeouts.new](#fn-iamworkloadidentitypoolprovidertimeoutsnew) constructor.\n\n**Returns**:\n  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `iam_workload_identity_pool_provider` resource into the root Terraform configuration.\n', args=[]),
  newAttrs(
    workload_identity_pool_id,
    workload_identity_pool_provider_id,
    attribute_condition=null,
    attribute_mapping=null,
    aws=null,
    description=null,
    disabled=null,
    display_name=null,
    oidc=null,
    project=null,
    timeouts=null
  ):: std.prune(a={
    attribute_condition: attribute_condition,
    attribute_mapping: attribute_mapping,
    aws: aws,
    description: description,
    disabled: disabled,
    display_name: display_name,
    oidc: oidc,
    project: project,
    timeouts: timeouts,
    workload_identity_pool_id: workload_identity_pool_id,
    workload_identity_pool_provider_id: workload_identity_pool_provider_id,
  }),
  oidc:: {
    '#new':: d.fn(help='\n`google.iam_workload_identity_pool_provider.oidc.new` constructs a new object with attributes and blocks configured for the `oidc`\nTerraform sub block.\n\n\n\n**Args**:\n  - `allowed_audiences` (`list`): Acceptable values for the &#39;aud&#39; field (audience) in the OIDC token. Token exchange\nrequests are rejected if the token audience does not match one of the configured\nvalues. Each audience may be at most 256 characters. A maximum of 10 audiences may\nbe configured.\n\nIf this list is empty, the OIDC token audience must be equal to the full canonical\nresource name of the WorkloadIdentityPoolProvider, with or without the HTTPS prefix.\nFor example:\n&#39;&#39;&#39;\n//iam.googleapis.com/projects/&lt;project-number&gt;/locations/&lt;location&gt;/workloadIdentityPools/&lt;pool-id&gt;/providers/&lt;provider-id&gt;\nhttps://iam.googleapis.com/projects/&lt;project-number&gt;/locations/&lt;location&gt;/workloadIdentityPools/&lt;pool-id&gt;/providers/&lt;provider-id&gt;\n&#39;&#39;&#39; When `null`, the `allowed_audiences` field will be omitted from the resulting object.\n  - `issuer_uri` (`string`): The OIDC issuer URL.\n\n**Returns**:\n  - An attribute object that represents the `oidc` sub block.\n', args=[]),
    new(
      issuer_uri,
      allowed_audiences=null
    ):: std.prune(a={
      allowed_audiences: allowed_audiences,
      issuer_uri: issuer_uri,
    }),
  },
  timeouts:: {
    '#new':: d.fn(help='\n`google.iam_workload_identity_pool_provider.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`\nTerraform sub block.\n\n\n\n**Args**:\n  - `create` (`string`):  When `null`, the `create` field will be omitted from the resulting object.\n  - `delete` (`string`):  When `null`, the `delete` field will be omitted from the resulting object.\n  - `update` (`string`):  When `null`, the `update` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `timeouts` sub block.\n', args=[]),
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
      google_iam_workload_identity_pool_provider+: {
        [resourceLabel]+: {
          attribute_condition: value,
        },
      },
    },
  },
  '#withAttributeMapping':: d.fn(help='`google.obj.withAttributeMapping` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the attribute_mapping field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `attribute_mapping` field.\n', args=[]),
  withAttributeMapping(resourceLabel, value): {
    resource+: {
      google_iam_workload_identity_pool_provider+: {
        [resourceLabel]+: {
          attribute_mapping: value,
        },
      },
    },
  },
  '#withAws':: d.fn(help='`google.list[obj].withAws` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the aws field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [google.list[obj].withAwsMixin](TODO) function.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `aws` field.\n', args=[]),
  withAws(resourceLabel, value): {
    resource+: {
      google_iam_workload_identity_pool_provider+: {
        [resourceLabel]+: {
          aws: value,
        },
      },
    },
  },
  '#withAwsMixin':: d.fn(help='`google.list[obj].withAwsMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the aws field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google.list[obj].withAws](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `aws` field.\n', args=[]),
  withAwsMixin(resourceLabel, value): {
    resource+: {
      google_iam_workload_identity_pool_provider+: {
        [resourceLabel]+: {
          aws+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withDescription':: d.fn(help='`google.string.withDescription` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the description field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `description` field.\n', args=[]),
  withDescription(resourceLabel, value): {
    resource+: {
      google_iam_workload_identity_pool_provider+: {
        [resourceLabel]+: {
          description: value,
        },
      },
    },
  },
  '#withDisabled':: d.fn(help='`google.bool.withDisabled` constructs a mixin object that can be merged into the `bool`\nTerraform resource block to set or update the disabled field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`bool`): The value to set for the `disabled` field.\n', args=[]),
  withDisabled(resourceLabel, value): {
    resource+: {
      google_iam_workload_identity_pool_provider+: {
        [resourceLabel]+: {
          disabled: value,
        },
      },
    },
  },
  '#withDisplayName':: d.fn(help='`google.string.withDisplayName` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the display_name field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `display_name` field.\n', args=[]),
  withDisplayName(resourceLabel, value): {
    resource+: {
      google_iam_workload_identity_pool_provider+: {
        [resourceLabel]+: {
          display_name: value,
        },
      },
    },
  },
  '#withOidc':: d.fn(help='`google.list[obj].withOidc` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the oidc field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [google.list[obj].withOidcMixin](TODO) function.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `oidc` field.\n', args=[]),
  withOidc(resourceLabel, value): {
    resource+: {
      google_iam_workload_identity_pool_provider+: {
        [resourceLabel]+: {
          oidc: value,
        },
      },
    },
  },
  '#withOidcMixin':: d.fn(help='`google.list[obj].withOidcMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the oidc field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google.list[obj].withOidc](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `oidc` field.\n', args=[]),
  withOidcMixin(resourceLabel, value): {
    resource+: {
      google_iam_workload_identity_pool_provider+: {
        [resourceLabel]+: {
          oidc+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withProject':: d.fn(help='`google.string.withProject` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the project field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `project` field.\n', args=[]),
  withProject(resourceLabel, value): {
    resource+: {
      google_iam_workload_identity_pool_provider+: {
        [resourceLabel]+: {
          project: value,
        },
      },
    },
  },
  '#withTimeouts':: d.fn(help='`google.obj.withTimeouts` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will replace the map with the passed in `value`. If you wish to instead merge the\npassed in value to the existing map, use the [google.obj.withTimeoutsMixin](TODO) function.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeouts(resourceLabel, value): {
    resource+: {
      google_iam_workload_identity_pool_provider+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  '#withTimeoutsMixin':: d.fn(help='`google.obj.withTimeoutsMixin` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will merge the passed in value to the existing map. If you wish\nto instead replace the entire map with the passed in `value`, use the [google.obj.withTimeouts](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeoutsMixin(resourceLabel, value): {
    resource+: {
      google_iam_workload_identity_pool_provider+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
  '#withWorkloadIdentityPoolId':: d.fn(help='`google.string.withWorkloadIdentityPoolId` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the workload_identity_pool_id field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `workload_identity_pool_id` field.\n', args=[]),
  withWorkloadIdentityPoolId(resourceLabel, value): {
    resource+: {
      google_iam_workload_identity_pool_provider+: {
        [resourceLabel]+: {
          workload_identity_pool_id: value,
        },
      },
    },
  },
  '#withWorkloadIdentityPoolProviderId':: d.fn(help='`google.string.withWorkloadIdentityPoolProviderId` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the workload_identity_pool_provider_id field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `workload_identity_pool_provider_id` field.\n', args=[]),
  withWorkloadIdentityPoolProviderId(resourceLabel, value): {
    resource+: {
      google_iam_workload_identity_pool_provider+: {
        [resourceLabel]+: {
          workload_identity_pool_provider_id: value,
        },
      },
    },
  },
}
