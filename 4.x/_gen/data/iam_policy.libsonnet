local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
local d = (import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet');
{
  '#':: d.pkg(name='iam_policy', url='', help='`iam_policy` represents the `google_iam_policy` Terraform data source.\n\n\n\nThis package contains functions and utilities for setting up the data source using Jsonnet code.\n'),
  audit_config:: {
    audit_log_configs:: {
      '#new':: d.fn(help='\n`google.iam_policy.audit_config.audit_log_configs.new` constructs a new object with attributes and blocks configured for the `audit_log_configs`\nTerraform sub block.\n\n\n\n**Args**:\n  - `exempted_members` (`list`):  When `null`, the `exempted_members` field will be omitted from the resulting object.\n  - `log_type` (`string`): \n\n**Returns**:\n  - An attribute object that represents the `audit_log_configs` sub block.\n', args=[]),
      new(
        log_type,
        exempted_members=null
      ):: std.prune(a={
        exempted_members: exempted_members,
        log_type: log_type,
      }),
    },
    '#new':: d.fn(help='\n`google.iam_policy.audit_config.new` constructs a new object with attributes and blocks configured for the `audit_config`\nTerraform sub block.\n\n\n\n**Args**:\n  - `service` (`string`): \n  - `audit_log_configs` (`list[obj]`):  When `null`, the `audit_log_configs` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.iam_policy.audit_config.audit_log_configs.new](#fn-audit_configaudit_log_configsnew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `audit_config` sub block.\n', args=[]),
    new(
      service,
      audit_log_configs=null
    ):: std.prune(a={
      audit_log_configs: audit_log_configs,
      service: service,
    }),
  },
  binding:: {
    condition:: {
      '#new':: d.fn(help='\n`google.iam_policy.binding.condition.new` constructs a new object with attributes and blocks configured for the `condition`\nTerraform sub block.\n\n\n\n**Args**:\n  - `description` (`string`):  When `null`, the `description` field will be omitted from the resulting object.\n  - `expression` (`string`): \n  - `title` (`string`): \n\n**Returns**:\n  - An attribute object that represents the `condition` sub block.\n', args=[]),
      new(
        expression,
        title,
        description=null
      ):: std.prune(a={
        description: description,
        expression: expression,
        title: title,
      }),
    },
    '#new':: d.fn(help='\n`google.iam_policy.binding.new` constructs a new object with attributes and blocks configured for the `binding`\nTerraform sub block.\n\n\n\n**Args**:\n  - `members` (`list`): \n  - `role` (`string`): \n  - `condition` (`list[obj]`):  When `null`, the `condition` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.iam_policy.binding.condition.new](#fn-bindingconditionnew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `binding` sub block.\n', args=[]),
    new(
      members,
      role,
      condition=null
    ):: std.prune(a={
      condition: condition,
      members: members,
      role: role,
    }),
  },
  '#new':: d.fn(help="\n`google.data.iam_policy.new` injects a new `data_google_iam_policy` Terraform `data source`\nblock into the root module document.\n\nAdditionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the\nresource. For example, if you added a new instance to the root using:\n\n    # arguments omitted for brevity\n    google.data.iam_policy.new('some_id')\n\nYou can get the reference to the `id` field of the created `google.data.iam_policy` using the reference:\n\n    $._ref.data_google_iam_policy.some_id.get('id')\n\nThis is the same as directly entering `\"${ data_google_iam_policy.some_id.id }\"` as the value.\n\nNOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,\nor `$` to refer to the root object. Instead, make an explicit outer object using `local`.\n\n**Args**:\n  - `dataSrcLabel` (`string`): The name label of the block.\n  - `audit_config` (`list[obj]`):  When `null`, the `audit_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.data.iam_policy.audit_config.new](#fn-audit_confignew) constructor.\n  - `binding` (`list[obj]`):  When `null`, the `binding` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.data.iam_policy.binding.new](#fn-bindingnew) constructor.\n\n**Returns**:\n- A mixin object that injects the new data source into the root Terraform configuration.\n", args=[]),
  new(
    dataSrcLabel,
    audit_config=null,
    binding=null,
    _meta={}
  ):: tf.withData(
    type='google_iam_policy',
    label=dataSrcLabel,
    attrs=self.newAttrs(audit_config=audit_config, binding=binding),
    _meta=_meta
  ),
  '#newAttrs':: d.fn(help='\n`google.data.iam_policy.newAttrs` constructs a new object with attributes and blocks configured for the `iam_policy`\nTerraform data source.\n\nUnlike [google.data.iam_policy.new](#fn-new), this function will not inject the `data source`\nblock into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the\n[tf.withData](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withdata) function to build a complete block.\n\nThis is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to\ninjecting into a complete block.\n\n**Args**:\n  - `audit_config` (`list[obj]`):  When `null`, the `audit_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.data.iam_policy.audit_config.new](#fn-audit_confignew) constructor.\n  - `binding` (`list[obj]`):  When `null`, the `binding` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.data.iam_policy.binding.new](#fn-bindingnew) constructor.\n\n**Returns**:\n  - An attribute object that can be used with [tf.withData](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withdata) to construct a new `iam_policy` data source into the root Terraform configuration.\n', args=[]),
  newAttrs(
    audit_config=null,
    binding=null
  ):: std.prune(a={
    audit_config: audit_config,
    binding: binding,
  }),
  '#withAuditConfig':: d.fn(help='`google.list[obj].withAuditConfig` constructs a mixin object that can be merged into the `list[obj]`\nTerraform data source block to set or update the audit_config field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [google.list[obj].withAuditConfigMixin](TODO) function.\n\n\n**Args**:\n  - `dataSrcLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `audit_config` field.\n', args=[]),
  withAuditConfig(dataSrcLabel, value): {
    data+: {
      google_iam_policy+: {
        [dataSrcLabel]+: {
          audit_config: value,
        },
      },
    },
  },
  '#withAuditConfigMixin':: d.fn(help='`google.list[obj].withAuditConfigMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform data source block to set or update the audit_config field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google.list[obj].withAuditConfig](TODO)\nfunction.\n\n\n**Args**:\n  - `dataSrcLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `audit_config` field.\n', args=[]),
  withAuditConfigMixin(dataSrcLabel, value): {
    data+: {
      google_iam_policy+: {
        [dataSrcLabel]+: {
          audit_config+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withBinding':: d.fn(help='`google.list[obj].withBinding` constructs a mixin object that can be merged into the `list[obj]`\nTerraform data source block to set or update the binding field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [google.list[obj].withBindingMixin](TODO) function.\n\n\n**Args**:\n  - `dataSrcLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `binding` field.\n', args=[]),
  withBinding(dataSrcLabel, value): {
    data+: {
      google_iam_policy+: {
        [dataSrcLabel]+: {
          binding: value,
        },
      },
    },
  },
  '#withBindingMixin':: d.fn(help='`google.list[obj].withBindingMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform data source block to set or update the binding field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google.list[obj].withBinding](TODO)\nfunction.\n\n\n**Args**:\n  - `dataSrcLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `binding` field.\n', args=[]),
  withBindingMixin(dataSrcLabel, value): {
    data+: {
      google_iam_policy+: {
        [dataSrcLabel]+: {
          binding+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
}
