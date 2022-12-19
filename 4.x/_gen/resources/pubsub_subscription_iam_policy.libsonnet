local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
local d = (import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet');
{
  '#':: d.pkg(name='pubsub_subscription_iam_policy', url='', help='`pubsub_subscription_iam_policy` represents the `google_pubsub_subscription_iam_policy` Terraform resource.\n\n\n\nThis package contains functions and utilities for setting up the resource using Jsonnet code.\n'),
  '#new':: d.fn(help="\n`google.pubsub_subscription_iam_policy.new` injects a new `google_pubsub_subscription_iam_policy` Terraform `resource`\nblock into the root module document.\n\nAdditionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the\nresource. For example, if you added a new instance to the root using:\n\n    # arguments omitted for brevity\n    google.pubsub_subscription_iam_policy.new('some_id')\n\nYou can get the reference to the `id` field of the created `google.pubsub_subscription_iam_policy` using the reference:\n\n    $._ref.google_pubsub_subscription_iam_policy.some_id.get('id')\n\nThis is the same as directly entering `\"${ google_pubsub_subscription_iam_policy.some_id.id }\"` as the value.\n\nNOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,\nor `$` to refer to the root object. Instead, make an explicit outer object using `local`.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block.\n  - `policy_data` (`string`): \n  - `project` (`string`):  When `null`, the `project` field will be omitted from the resulting object.\n  - `subscription` (`string`): \n\n**Returns**:\n- A mixin object that injects the new resource into the root Terraform configuration.\n", args=[]),
  new(
    resourceLabel,
    policy_data,
    subscription,
    project=null,
    _meta={}
  ):: tf.withResource(
    type='google_pubsub_subscription_iam_policy',
    label=resourceLabel,
    attrs=self.newAttrs(policy_data=policy_data, project=project, subscription=subscription),
    _meta=_meta
  ),
  '#newAttrs':: d.fn(help='\n`google.pubsub_subscription_iam_policy.newAttrs` constructs a new object with attributes and blocks configured for the `pubsub_subscription_iam_policy`\nTerraform resource.\n\nUnlike [google.pubsub_subscription_iam_policy.new](#fn-pubsubsubscriptioniampolicynew), this function will not inject the `resource`\nblock into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the\n[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.\n\nThis is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to\ninjecting into a complete block.\n\n**Args**:\n  - `policy_data` (`string`): \n  - `project` (`string`):  When `null`, the `project` field will be omitted from the resulting object.\n  - `subscription` (`string`): \n\n**Returns**:\n  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `pubsub_subscription_iam_policy` resource into the root Terraform configuration.\n', args=[]),
  newAttrs(
    policy_data,
    subscription,
    project=null
  ):: std.prune(a={
    policy_data: policy_data,
    project: project,
    subscription: subscription,
  }),
  '#withPolicyData':: d.fn(help='`google.pubsub_subscription_iam_policy.withPolicyData` constructs a mixin object that can be merged into the `pubsub_subscription_iam_policy`\nTerraform resource block to set or update the policy_data field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`TODO`): The value to set for the `policy_data` field.\n', args=[]),
  withPolicyData(resourceLabel, value):: {
    resource+: {
      google_pubsub_subscription_iam_policy+: {
        [resourceLabel]+: {
          policy_data: value,
        },
      },
    },
  },
  '#withProject':: d.fn(help='`google.pubsub_subscription_iam_policy.withProject` constructs a mixin object that can be merged into the `pubsub_subscription_iam_policy`\nTerraform resource block to set or update the project field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`TODO`): The value to set for the `project` field.\n', args=[]),
  withProject(resourceLabel, value):: {
    resource+: {
      google_pubsub_subscription_iam_policy+: {
        [resourceLabel]+: {
          project: value,
        },
      },
    },
  },
  '#withSubscription':: d.fn(help='`google.pubsub_subscription_iam_policy.withSubscription` constructs a mixin object that can be merged into the `pubsub_subscription_iam_policy`\nTerraform resource block to set or update the subscription field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`TODO`): The value to set for the `subscription` field.\n', args=[]),
  withSubscription(resourceLabel, value):: {
    resource+: {
      google_pubsub_subscription_iam_policy+: {
        [resourceLabel]+: {
          subscription: value,
        },
      },
    },
  },
}
