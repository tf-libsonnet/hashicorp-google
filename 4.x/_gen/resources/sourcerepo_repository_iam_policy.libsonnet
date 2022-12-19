local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
local d = (import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet');
{
  '#':: d.pkg(name='sourcerepo_repository_iam_policy', url='', help='`sourcerepo_repository_iam_policy` represents the `google_sourcerepo_repository_iam_policy` Terraform resource.\n\n\n\nThis package contains functions and utilities for setting up the resource using Jsonnet code.\n'),
  '#new':: d.fn(help="\n`google.sourcerepo_repository_iam_policy.new` injects a new `google_sourcerepo_repository_iam_policy` Terraform `resource`\nblock into the root module document.\n\nAdditionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the\nresource. For example, if you added a new instance to the root using:\n\n    # arguments omitted for brevity\n    google.sourcerepo_repository_iam_policy.new('some_id')\n\nYou can get the reference to the `id` field of the created `google.sourcerepo_repository_iam_policy` using the reference:\n\n    $._ref.google_sourcerepo_repository_iam_policy.some_id.get('id')\n\nThis is the same as directly entering `\"${ google_sourcerepo_repository_iam_policy.some_id.id }\"` as the value.\n\nNOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,\nor `$` to refer to the root object. Instead, make an explicit outer object using `local`.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block.\n  - `policy_data` (`string`): \n  - `project` (`string`):  When `null`, the `project` field will be omitted from the resulting object.\n  - `repository` (`string`): \n\n**Returns**:\n- A mixin object that injects the new resource into the root Terraform configuration.\n", args=[]),
  new(
    resourceLabel,
    policy_data,
    repository,
    project=null,
    _meta={}
  ):: tf.withResource(
    type='google_sourcerepo_repository_iam_policy',
    label=resourceLabel,
    attrs=self.newAttrs(policy_data=policy_data, project=project, repository=repository),
    _meta=_meta
  ),
  '#newAttrs':: d.fn(help='\n`google.sourcerepo_repository_iam_policy.newAttrs` constructs a new object with attributes and blocks configured for the `sourcerepo_repository_iam_policy`\nTerraform resource.\n\nUnlike [google.sourcerepo_repository_iam_policy.new](#fn-new), this function will not inject the `resource`\nblock into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the\n[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.\n\nThis is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to\ninjecting into a complete block.\n\n**Args**:\n  - `policy_data` (`string`): \n  - `project` (`string`):  When `null`, the `project` field will be omitted from the resulting object.\n  - `repository` (`string`): \n\n**Returns**:\n  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `sourcerepo_repository_iam_policy` resource into the root Terraform configuration.\n', args=[]),
  newAttrs(
    policy_data,
    repository,
    project=null
  ):: std.prune(a={
    policy_data: policy_data,
    project: project,
    repository: repository,
  }),
  '#withPolicyData':: d.fn(help='`google.string.withPolicyData` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the policy_data field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `policy_data` field.\n', args=[]),
  withPolicyData(resourceLabel, value): {
    resource+: {
      google_sourcerepo_repository_iam_policy+: {
        [resourceLabel]+: {
          policy_data: value,
        },
      },
    },
  },
  '#withProject':: d.fn(help='`google.string.withProject` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the project field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `project` field.\n', args=[]),
  withProject(resourceLabel, value): {
    resource+: {
      google_sourcerepo_repository_iam_policy+: {
        [resourceLabel]+: {
          project: value,
        },
      },
    },
  },
  '#withRepository':: d.fn(help='`google.string.withRepository` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the repository field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `repository` field.\n', args=[]),
  withRepository(resourceLabel, value): {
    resource+: {
      google_sourcerepo_repository_iam_policy+: {
        [resourceLabel]+: {
          repository: value,
        },
      },
    },
  },
}
