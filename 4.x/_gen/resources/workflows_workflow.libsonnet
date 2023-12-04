local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
local d = (import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet');
{
  '#':: d.pkg(name='workflows_workflow', url='', help='`workflows_workflow` represents the `google_workflows_workflow` Terraform resource.\n\n\n\nThis package contains functions and utilities for setting up the resource using Jsonnet code.\n'),
  '#new':: d.fn(help="\n`google.workflows_workflow.new` injects a new `google_workflows_workflow` Terraform `resource`\nblock into the root module document.\n\nAdditionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the\nresource. For example, if you added a new instance to the root using:\n\n    # arguments omitted for brevity\n    google.workflows_workflow.new('some_id')\n\nYou can get the reference to the `id` field of the created `google.workflows_workflow` using the reference:\n\n    $._ref.google_workflows_workflow.some_id.get('id')\n\nThis is the same as directly entering `\"${ google_workflows_workflow.some_id.id }\"` as the value.\n\nNOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,\nor `$` to refer to the root object. Instead, make an explicit outer object using `local`.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block.\n  - `crypto_key_name` (`string`): The KMS key used to encrypt workflow and execution data.\n\nFormat: projects/{project}/locations/{location}/keyRings/{keyRing}/cryptoKeys/{cryptoKey} When `null`, the `crypto_key_name` field will be omitted from the resulting object.\n  - `description` (`string`): Description of the workflow provided by the user. Must be at most 1000 unicode characters long. When `null`, the `description` field will be omitted from the resulting object.\n  - `labels` (`obj`): A set of key/value label pairs to assign to this Workflow.\n\n\n**Note**: This field is non-authoritative, and will only manage the labels present in your configuration.\nPlease refer to the field \u0026#39;effective_labels\u0026#39; for all of the labels present on the resource. When `null`, the `labels` field will be omitted from the resulting object.\n  - `name` (`string`): Name of the Workflow. When `null`, the `name` field will be omitted from the resulting object.\n  - `name_prefix` (`string`): Set the `name_prefix` field on the resulting resource block. When `null`, the `name_prefix` field will be omitted from the resulting object.\n  - `project` (`string`): Set the `project` field on the resulting resource block. When `null`, the `project` field will be omitted from the resulting object.\n  - `region` (`string`): The region of the workflow. When `null`, the `region` field will be omitted from the resulting object.\n  - `service_account` (`string`): Name of the service account associated with the latest workflow version. This service\naccount represents the identity of the workflow and determines what permissions the workflow has.\nFormat: projects/{project}/serviceAccounts/{account} or {account}.\nUsing - as a wildcard for the {project} or not providing one at all will infer the project from the account.\nThe {account} value can be the email address or the unique_id of the service account.\nIf not provided, workflow will use the project\u0026#39;s default service account.\nModifying this field for an existing workflow results in a new workflow revision. When `null`, the `service_account` field will be omitted from the resulting object.\n  - `source_contents` (`string`): Workflow code to be executed. The size limit is 32KB. When `null`, the `source_contents` field will be omitted from the resulting object.\n  - `user_env_vars` (`obj`): User-defined environment variables associated with this workflow revision. This map has a maximum length of 20. Each string can take up to 40KiB. Keys cannot be empty strings and cannot start with “GOOGLE” or “WORKFLOWS\u0026#34;. When `null`, the `user_env_vars` field will be omitted from the resulting object.\n  - `timeouts` (`obj`): Set the `timeouts` field on the resulting resource block. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.workflows_workflow.timeouts.new](#fn-timeoutsnew) constructor.\n\n**Returns**:\n- A mixin object that injects the new resource into the root Terraform configuration.\n", args=[]),
  new(
    resourceLabel,
    crypto_key_name=null,
    description=null,
    labels=null,
    name=null,
    name_prefix=null,
    project=null,
    region=null,
    service_account=null,
    source_contents=null,
    timeouts=null,
    user_env_vars=null,
    _meta={}
  ):: tf.withResource(
    type='google_workflows_workflow',
    label=resourceLabel,
    attrs=self.newAttrs(
      crypto_key_name=crypto_key_name,
      description=description,
      labels=labels,
      name=name,
      name_prefix=name_prefix,
      project=project,
      region=region,
      service_account=service_account,
      source_contents=source_contents,
      timeouts=timeouts,
      user_env_vars=user_env_vars
    ),
    _meta=_meta
  ),
  '#newAttrs':: d.fn(help='\n`google.workflows_workflow.newAttrs` constructs a new object with attributes and blocks configured for the `workflows_workflow`\nTerraform resource.\n\nUnlike [google.workflows_workflow.new](#fn-new), this function will not inject the `resource`\nblock into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the\n[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.\n\nThis is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to\ninjecting into a complete block.\n\n**Args**:\n  - `crypto_key_name` (`string`): The KMS key used to encrypt workflow and execution data.\n\nFormat: projects/{project}/locations/{location}/keyRings/{keyRing}/cryptoKeys/{cryptoKey} When `null`, the `crypto_key_name` field will be omitted from the resulting object.\n  - `description` (`string`): Description of the workflow provided by the user. Must be at most 1000 unicode characters long. When `null`, the `description` field will be omitted from the resulting object.\n  - `labels` (`obj`): A set of key/value label pairs to assign to this Workflow.\n\n\n**Note**: This field is non-authoritative, and will only manage the labels present in your configuration.\nPlease refer to the field &#39;effective_labels&#39; for all of the labels present on the resource. When `null`, the `labels` field will be omitted from the resulting object.\n  - `name` (`string`): Name of the Workflow. When `null`, the `name` field will be omitted from the resulting object.\n  - `name_prefix` (`string`): Set the `name_prefix` field on the resulting object. When `null`, the `name_prefix` field will be omitted from the resulting object.\n  - `project` (`string`): Set the `project` field on the resulting object. When `null`, the `project` field will be omitted from the resulting object.\n  - `region` (`string`): The region of the workflow. When `null`, the `region` field will be omitted from the resulting object.\n  - `service_account` (`string`): Name of the service account associated with the latest workflow version. This service\naccount represents the identity of the workflow and determines what permissions the workflow has.\nFormat: projects/{project}/serviceAccounts/{account} or {account}.\nUsing - as a wildcard for the {project} or not providing one at all will infer the project from the account.\nThe {account} value can be the email address or the unique_id of the service account.\nIf not provided, workflow will use the project&#39;s default service account.\nModifying this field for an existing workflow results in a new workflow revision. When `null`, the `service_account` field will be omitted from the resulting object.\n  - `source_contents` (`string`): Workflow code to be executed. The size limit is 32KB. When `null`, the `source_contents` field will be omitted from the resulting object.\n  - `user_env_vars` (`obj`): User-defined environment variables associated with this workflow revision. This map has a maximum length of 20. Each string can take up to 40KiB. Keys cannot be empty strings and cannot start with “GOOGLE” or “WORKFLOWS&#34;. When `null`, the `user_env_vars` field will be omitted from the resulting object.\n  - `timeouts` (`obj`): Set the `timeouts` field on the resulting object. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.workflows_workflow.timeouts.new](#fn-timeoutsnew) constructor.\n\n**Returns**:\n  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `workflows_workflow` resource into the root Terraform configuration.\n', args=[]),
  newAttrs(
    crypto_key_name=null,
    description=null,
    labels=null,
    name=null,
    name_prefix=null,
    project=null,
    region=null,
    service_account=null,
    source_contents=null,
    timeouts=null,
    user_env_vars=null
  ):: std.prune(a={
    crypto_key_name: crypto_key_name,
    description: description,
    labels: labels,
    name: name,
    name_prefix: name_prefix,
    project: project,
    region: region,
    service_account: service_account,
    source_contents: source_contents,
    timeouts: timeouts,
    user_env_vars: user_env_vars,
  }),
  timeouts:: {
    '#new':: d.fn(help='\n`google.workflows_workflow.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`\nTerraform sub block.\n\n\n\n**Args**:\n  - `create` (`string`): Set the `create` field on the resulting object. When `null`, the `create` field will be omitted from the resulting object.\n  - `delete` (`string`): Set the `delete` field on the resulting object. When `null`, the `delete` field will be omitted from the resulting object.\n  - `update` (`string`): Set the `update` field on the resulting object. When `null`, the `update` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `timeouts` sub block.\n', args=[]),
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
  '#withCryptoKeyName':: d.fn(help='`google.string.withCryptoKeyName` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the crypto_key_name field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `crypto_key_name` field.\n', args=[]),
  withCryptoKeyName(resourceLabel, value): {
    resource+: {
      google_workflows_workflow+: {
        [resourceLabel]+: {
          crypto_key_name: value,
        },
      },
    },
  },
  '#withDescription':: d.fn(help='`google.string.withDescription` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the description field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `description` field.\n', args=[]),
  withDescription(resourceLabel, value): {
    resource+: {
      google_workflows_workflow+: {
        [resourceLabel]+: {
          description: value,
        },
      },
    },
  },
  '#withLabels':: d.fn(help='`google.obj.withLabels` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the labels field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `labels` field.\n', args=[]),
  withLabels(resourceLabel, value): {
    resource+: {
      google_workflows_workflow+: {
        [resourceLabel]+: {
          labels: value,
        },
      },
    },
  },
  '#withName':: d.fn(help='`google.string.withName` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the name field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `name` field.\n', args=[]),
  withName(resourceLabel, value): {
    resource+: {
      google_workflows_workflow+: {
        [resourceLabel]+: {
          name: value,
        },
      },
    },
  },
  '#withNamePrefix':: d.fn(help='`google.string.withNamePrefix` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the name_prefix field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `name_prefix` field.\n', args=[]),
  withNamePrefix(resourceLabel, value): {
    resource+: {
      google_workflows_workflow+: {
        [resourceLabel]+: {
          name_prefix: value,
        },
      },
    },
  },
  '#withProject':: d.fn(help='`google.string.withProject` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the project field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `project` field.\n', args=[]),
  withProject(resourceLabel, value): {
    resource+: {
      google_workflows_workflow+: {
        [resourceLabel]+: {
          project: value,
        },
      },
    },
  },
  '#withRegion':: d.fn(help='`google.string.withRegion` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the region field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `region` field.\n', args=[]),
  withRegion(resourceLabel, value): {
    resource+: {
      google_workflows_workflow+: {
        [resourceLabel]+: {
          region: value,
        },
      },
    },
  },
  '#withServiceAccount':: d.fn(help='`google.string.withServiceAccount` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the service_account field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `service_account` field.\n', args=[]),
  withServiceAccount(resourceLabel, value): {
    resource+: {
      google_workflows_workflow+: {
        [resourceLabel]+: {
          service_account: value,
        },
      },
    },
  },
  '#withSourceContents':: d.fn(help='`google.string.withSourceContents` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the source_contents field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `source_contents` field.\n', args=[]),
  withSourceContents(resourceLabel, value): {
    resource+: {
      google_workflows_workflow+: {
        [resourceLabel]+: {
          source_contents: value,
        },
      },
    },
  },
  '#withTimeouts':: d.fn(help='`google.obj.withTimeouts` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will replace the map with the passed in `value`. If you wish to instead merge the\npassed in value to the existing map, use the [google.obj.withTimeoutsMixin](TODO) function.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeouts(resourceLabel, value): {
    resource+: {
      google_workflows_workflow+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  '#withTimeoutsMixin':: d.fn(help='`google.obj.withTimeoutsMixin` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will merge the passed in value to the existing map. If you wish\nto instead replace the entire map with the passed in `value`, use the [google.obj.withTimeouts](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeoutsMixin(resourceLabel, value): {
    resource+: {
      google_workflows_workflow+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
  '#withUserEnvVars':: d.fn(help='`google.obj.withUserEnvVars` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the user_env_vars field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `user_env_vars` field.\n', args=[]),
  withUserEnvVars(resourceLabel, value): {
    resource+: {
      google_workflows_workflow+: {
        [resourceLabel]+: {
          user_env_vars: value,
        },
      },
    },
  },
}
