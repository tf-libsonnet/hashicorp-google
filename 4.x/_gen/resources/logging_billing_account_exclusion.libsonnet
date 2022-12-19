local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
local d = (import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet');
{
  '#':: d.pkg(name='logging_billing_account_exclusion', url='', help='`logging_billing_account_exclusion` represents the `google_logging_billing_account_exclusion` Terraform resource.\n\n\n\nThis package contains functions and utilities for setting up the resource using Jsonnet code.\n'),
  '#new':: d.fn(help="\n`google.logging_billing_account_exclusion.new` injects a new `google_logging_billing_account_exclusion` Terraform `resource`\nblock into the root module document.\n\nAdditionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the\nresource. For example, if you added a new instance to the root using:\n\n    # arguments omitted for brevity\n    google.logging_billing_account_exclusion.new('some_id')\n\nYou can get the reference to the `id` field of the created `google.logging_billing_account_exclusion` using the reference:\n\n    $._ref.google_logging_billing_account_exclusion.some_id.get('id')\n\nThis is the same as directly entering `\"${ google_logging_billing_account_exclusion.some_id.id }\"` as the value.\n\nNOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,\nor `$` to refer to the root object. Instead, make an explicit outer object using `local`.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block.\n  - `billing_account` (`string`): Set the `billing_account` field on the resulting resource block.\n  - `description` (`string`): A human-readable description. When `null`, the `description` field will be omitted from the resulting object.\n  - `disabled` (`bool`): Whether this exclusion rule should be disabled or not. This defaults to false. When `null`, the `disabled` field will be omitted from the resulting object.\n  - `filter` (`string`): The filter to apply when excluding logs. Only log entries that match the filter are excluded.\n  - `name` (`string`): The name of the logging exclusion.\n\n**Returns**:\n- A mixin object that injects the new resource into the root Terraform configuration.\n", args=[]),
  new(
    resourceLabel,
    billing_account,
    filter,
    name,
    description=null,
    disabled=null,
    _meta={}
  ):: tf.withResource(
    type='google_logging_billing_account_exclusion',
    label=resourceLabel,
    attrs=self.newAttrs(
      billing_account=billing_account,
      description=description,
      disabled=disabled,
      filter=filter,
      name=name
    ),
    _meta=_meta
  ),
  '#newAttrs':: d.fn(help='\n`google.logging_billing_account_exclusion.newAttrs` constructs a new object with attributes and blocks configured for the `logging_billing_account_exclusion`\nTerraform resource.\n\nUnlike [google.logging_billing_account_exclusion.new](#fn-new), this function will not inject the `resource`\nblock into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the\n[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.\n\nThis is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to\ninjecting into a complete block.\n\n**Args**:\n  - `billing_account` (`string`): Set the `billing_account` field on the resulting object.\n  - `description` (`string`): A human-readable description. When `null`, the `description` field will be omitted from the resulting object.\n  - `disabled` (`bool`): Whether this exclusion rule should be disabled or not. This defaults to false. When `null`, the `disabled` field will be omitted from the resulting object.\n  - `filter` (`string`): The filter to apply when excluding logs. Only log entries that match the filter are excluded.\n  - `name` (`string`): The name of the logging exclusion.\n\n**Returns**:\n  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `logging_billing_account_exclusion` resource into the root Terraform configuration.\n', args=[]),
  newAttrs(
    billing_account,
    filter,
    name,
    description=null,
    disabled=null
  ):: std.prune(a={
    billing_account: billing_account,
    description: description,
    disabled: disabled,
    filter: filter,
    name: name,
  }),
  '#withBillingAccount':: d.fn(help='`google.string.withBillingAccount` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the billing_account field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `billing_account` field.\n', args=[]),
  withBillingAccount(resourceLabel, value): {
    resource+: {
      google_logging_billing_account_exclusion+: {
        [resourceLabel]+: {
          billing_account: value,
        },
      },
    },
  },
  '#withDescription':: d.fn(help='`google.string.withDescription` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the description field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `description` field.\n', args=[]),
  withDescription(resourceLabel, value): {
    resource+: {
      google_logging_billing_account_exclusion+: {
        [resourceLabel]+: {
          description: value,
        },
      },
    },
  },
  '#withDisabled':: d.fn(help='`google.bool.withDisabled` constructs a mixin object that can be merged into the `bool`\nTerraform resource block to set or update the disabled field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`bool`): The value to set for the `disabled` field.\n', args=[]),
  withDisabled(resourceLabel, value): {
    resource+: {
      google_logging_billing_account_exclusion+: {
        [resourceLabel]+: {
          disabled: value,
        },
      },
    },
  },
  '#withFilter':: d.fn(help='`google.string.withFilter` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the filter field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `filter` field.\n', args=[]),
  withFilter(resourceLabel, value): {
    resource+: {
      google_logging_billing_account_exclusion+: {
        [resourceLabel]+: {
          filter: value,
        },
      },
    },
  },
  '#withName':: d.fn(help='`google.string.withName` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the name field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `name` field.\n', args=[]),
  withName(resourceLabel, value): {
    resource+: {
      google_logging_billing_account_exclusion+: {
        [resourceLabel]+: {
          name: value,
        },
      },
    },
  },
}
