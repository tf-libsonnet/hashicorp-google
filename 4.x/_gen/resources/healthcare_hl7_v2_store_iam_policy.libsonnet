local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
local d = (import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet');
{
  '#':: d.pkg(name='healthcare_hl7_v2_store_iam_policy', url='', help='`healthcare_hl7_v2_store_iam_policy` represents the `google_healthcare_hl7_v2_store_iam_policy` Terraform resource.\n\n\n\nThis package contains functions and utilities for setting up the resource using Jsonnet code.\n'),
  '#new':: d.fn(help="\n`google.healthcare_hl7_v2_store_iam_policy.new` injects a new `google_healthcare_hl7_v2_store_iam_policy` Terraform `resource`\nblock into the root module document.\n\nAdditionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the\nresource. For example, if you added a new instance to the root using:\n\n    # arguments omitted for brevity\n    google.healthcare_hl7_v2_store_iam_policy.new('some_id')\n\nYou can get the reference to the `id` field of the created `google.healthcare_hl7_v2_store_iam_policy` using the reference:\n\n    $._ref.google_healthcare_hl7_v2_store_iam_policy.some_id.get('id')\n\nThis is the same as directly entering `\"${ google_healthcare_hl7_v2_store_iam_policy.some_id.id }\"` as the value.\n\nNOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,\nor `$` to refer to the root object. Instead, make an explicit outer object using `local`.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block.\n  - `hl7_v2_store_id` (`string`): \n  - `policy_data` (`string`): \n\n**Returns**:\n- A mixin object that injects the new resource into the root Terraform configuration.\n", args=[]),
  new(
    resourceLabel,
    hl7_v2_store_id,
    policy_data,
    _meta={}
  ):: tf.withResource(
    type='google_healthcare_hl7_v2_store_iam_policy',
    label=resourceLabel,
    attrs=self.newAttrs(hl7_v2_store_id=hl7_v2_store_id, policy_data=policy_data),
    _meta=_meta
  ),
  '#newAttrs':: d.fn(help='\n`google.healthcare_hl7_v2_store_iam_policy.newAttrs` constructs a new object with attributes and blocks configured for the `healthcare_hl7_v2_store_iam_policy`\nTerraform resource.\n\nUnlike [google.healthcare_hl7_v2_store_iam_policy.new](#fn-healthcare_hl7_v2_store_iam_policynew), this function will not inject the `resource`\nblock into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the\n[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.\n\nThis is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to\ninjecting into a complete block.\n\n**Args**:\n  - `hl7_v2_store_id` (`string`): \n  - `policy_data` (`string`): \n\n**Returns**:\n  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `healthcare_hl7_v2_store_iam_policy` resource into the root Terraform configuration.\n', args=[]),
  newAttrs(
    hl7_v2_store_id,
    policy_data
  ):: std.prune(a={
    hl7_v2_store_id: hl7_v2_store_id,
    policy_data: policy_data,
  }),
  '#withHl7V2StoreId':: d.fn(help='`google.string.withHl7V2StoreId` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the hl7_v2_store_id field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `hl7_v2_store_id` field.\n', args=[]),
  withHl7V2StoreId(resourceLabel, value): {
    resource+: {
      google_healthcare_hl7_v2_store_iam_policy+: {
        [resourceLabel]+: {
          hl7_v2_store_id: value,
        },
      },
    },
  },
  '#withPolicyData':: d.fn(help='`google.string.withPolicyData` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the policy_data field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `policy_data` field.\n', args=[]),
  withPolicyData(resourceLabel, value): {
    resource+: {
      google_healthcare_hl7_v2_store_iam_policy+: {
        [resourceLabel]+: {
          policy_data: value,
        },
      },
    },
  },
}
