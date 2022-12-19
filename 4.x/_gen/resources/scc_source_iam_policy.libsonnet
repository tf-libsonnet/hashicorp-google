local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
local d = (import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet');
{
  '#':: d.pkg(name='scc_source_iam_policy', url='', help='`scc_source_iam_policy` represents the `google_scc_source_iam_policy` Terraform resource.\n\n\n\nThis package contains functions and utilities for setting up the resource using Jsonnet code.\n'),
  '#new':: d.fn(help="\n`google.scc_source_iam_policy.new` injects a new `google_scc_source_iam_policy` Terraform `resource`\nblock into the root module document.\n\nAdditionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the\nresource. For example, if you added a new instance to the root using:\n\n    # arguments omitted for brevity\n    google.scc_source_iam_policy.new('some_id')\n\nYou can get the reference to the `id` field of the created `google.scc_source_iam_policy` using the reference:\n\n    $._ref.google_scc_source_iam_policy.some_id.get('id')\n\nThis is the same as directly entering `\"${ google_scc_source_iam_policy.some_id.id }\"` as the value.\n\nNOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,\nor `$` to refer to the root object. Instead, make an explicit outer object using `local`.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block.\n  - `organization` (`string`): \n  - `policy_data` (`string`): \n  - `source` (`string`): \n\n**Returns**:\n- A mixin object that injects the new resource into the root Terraform configuration.\n", args=[]),
  new(
    resourceLabel,
    organization,
    policy_data,
    source,
    _meta={}
  ):: tf.withResource(
    type='google_scc_source_iam_policy',
    label=resourceLabel,
    attrs=self.newAttrs(organization=organization, policy_data=policy_data, source=source),
    _meta=_meta
  ),
  '#newAttrs':: d.fn(help='\n`google.scc_source_iam_policy.newAttrs` constructs a new object with attributes and blocks configured for the `scc_source_iam_policy`\nTerraform resource.\n\nUnlike [google.scc_source_iam_policy.new](#fn-scc_source_iam_policynew), this function will not inject the `resource`\nblock into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the\n[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.\n\nThis is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to\ninjecting into a complete block.\n\n**Args**:\n  - `organization` (`string`): \n  - `policy_data` (`string`): \n  - `source` (`string`): \n\n**Returns**:\n  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `scc_source_iam_policy` resource into the root Terraform configuration.\n', args=[]),
  newAttrs(
    organization,
    policy_data,
    source
  ):: std.prune(a={
    organization: organization,
    policy_data: policy_data,
    source: source,
  }),
  '#withOrganization':: d.fn(help='`google.string.withOrganization` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the organization field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `organization` field.\n', args=[]),
  withOrganization(resourceLabel, value): {
    resource+: {
      google_scc_source_iam_policy+: {
        [resourceLabel]+: {
          organization: value,
        },
      },
    },
  },
  '#withPolicyData':: d.fn(help='`google.string.withPolicyData` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the policy_data field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `policy_data` field.\n', args=[]),
  withPolicyData(resourceLabel, value): {
    resource+: {
      google_scc_source_iam_policy+: {
        [resourceLabel]+: {
          policy_data: value,
        },
      },
    },
  },
  '#withSource':: d.fn(help='`google.string.withSource` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the source field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `source` field.\n', args=[]),
  withSource(resourceLabel, value): {
    resource+: {
      google_scc_source_iam_policy+: {
        [resourceLabel]+: {
          source: value,
        },
      },
    },
  },
}
