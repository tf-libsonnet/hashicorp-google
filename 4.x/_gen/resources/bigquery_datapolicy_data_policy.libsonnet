local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
local d = (import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet');
{
  '#':: d.pkg(name='bigquery_datapolicy_data_policy', url='', help='`bigquery_datapolicy_data_policy` represents the `google_bigquery_datapolicy_data_policy` Terraform resource.\n\n\n\nThis package contains functions and utilities for setting up the resource using Jsonnet code.\n'),
  data_masking_policy:: {
    '#new':: d.fn(help='\n`google.bigquery_datapolicy_data_policy.data_masking_policy.new` constructs a new object with attributes and blocks configured for the `data_masking_policy`\nTerraform sub block.\n\n\n\n**Args**:\n  - `predefined_expression` (`string`): The available masking rules. Learn more here: https://cloud.google.com/bigquery/docs/column-data-masking-intro#masking_options. Possible values: [&#34;SHA256&#34;, &#34;ALWAYS_NULL&#34;, &#34;DEFAULT_MASKING_VALUE&#34;, &#34;LAST_FOUR_CHARACTERS&#34;, &#34;FIRST_FOUR_CHARACTERS&#34;, &#34;EMAIL_MASK&#34;, &#34;DATE_YEAR_MASK&#34;]\n\n**Returns**:\n  - An attribute object that represents the `data_masking_policy` sub block.\n', args=[]),
    new(
      predefined_expression
    ):: std.prune(a={
      predefined_expression: predefined_expression,
    }),
  },
  '#new':: d.fn(help="\n`google.bigquery_datapolicy_data_policy.new` injects a new `google_bigquery_datapolicy_data_policy` Terraform `resource`\nblock into the root module document.\n\nAdditionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the\nresource. For example, if you added a new instance to the root using:\n\n    # arguments omitted for brevity\n    google.bigquery_datapolicy_data_policy.new('some_id')\n\nYou can get the reference to the `id` field of the created `google.bigquery_datapolicy_data_policy` using the reference:\n\n    $._ref.google_bigquery_datapolicy_data_policy.some_id.get('id')\n\nThis is the same as directly entering `\"${ google_bigquery_datapolicy_data_policy.some_id.id }\"` as the value.\n\nNOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,\nor `$` to refer to the root object. Instead, make an explicit outer object using `local`.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block.\n  - `data_policy_id` (`string`): User-assigned (human readable) ID of the data policy that needs to be unique within a project. Used as {dataPolicyId} in part of the resource name.\n  - `data_policy_type` (`string`): The enrollment level of the service. Possible values: [\u0026#34;COLUMN_LEVEL_SECURITY_POLICY\u0026#34;, \u0026#34;DATA_MASKING_POLICY\u0026#34;]\n  - `location` (`string`): The name of the location of the data policy.\n  - `policy_tag` (`string`): Policy tag resource name, in the format of projects/{project_number}/locations/{locationId}/taxonomies/{taxonomyId}/policyTags/{policyTag_id}.\n  - `project` (`string`): Set the `project` field on the resulting resource block. When `null`, the `project` field will be omitted from the resulting object.\n  - `data_masking_policy` (`list[obj]`): The data masking policy that specifies the data masking rule to use. When `null`, the `data_masking_policy` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.bigquery_datapolicy_data_policy.data_masking_policy.new](#fn-data_masking_policynew) constructor.\n  - `timeouts` (`obj`): Set the `timeouts` field on the resulting resource block. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.bigquery_datapolicy_data_policy.timeouts.new](#fn-timeoutsnew) constructor.\n\n**Returns**:\n- A mixin object that injects the new resource into the root Terraform configuration.\n", args=[]),
  new(
    resourceLabel,
    data_policy_id,
    data_policy_type,
    location,
    policy_tag,
    data_masking_policy=null,
    project=null,
    timeouts=null,
    _meta={}
  ):: tf.withResource(
    type='google_bigquery_datapolicy_data_policy',
    label=resourceLabel,
    attrs=self.newAttrs(
      data_masking_policy=data_masking_policy,
      data_policy_id=data_policy_id,
      data_policy_type=data_policy_type,
      location=location,
      policy_tag=policy_tag,
      project=project,
      timeouts=timeouts
    ),
    _meta=_meta
  ),
  '#newAttrs':: d.fn(help='\n`google.bigquery_datapolicy_data_policy.newAttrs` constructs a new object with attributes and blocks configured for the `bigquery_datapolicy_data_policy`\nTerraform resource.\n\nUnlike [google.bigquery_datapolicy_data_policy.new](#fn-new), this function will not inject the `resource`\nblock into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the\n[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.\n\nThis is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to\ninjecting into a complete block.\n\n**Args**:\n  - `data_policy_id` (`string`): User-assigned (human readable) ID of the data policy that needs to be unique within a project. Used as {dataPolicyId} in part of the resource name.\n  - `data_policy_type` (`string`): The enrollment level of the service. Possible values: [&#34;COLUMN_LEVEL_SECURITY_POLICY&#34;, &#34;DATA_MASKING_POLICY&#34;]\n  - `location` (`string`): The name of the location of the data policy.\n  - `policy_tag` (`string`): Policy tag resource name, in the format of projects/{project_number}/locations/{locationId}/taxonomies/{taxonomyId}/policyTags/{policyTag_id}.\n  - `project` (`string`): Set the `project` field on the resulting object. When `null`, the `project` field will be omitted from the resulting object.\n  - `data_masking_policy` (`list[obj]`): The data masking policy that specifies the data masking rule to use. When `null`, the `data_masking_policy` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.bigquery_datapolicy_data_policy.data_masking_policy.new](#fn-data_masking_policynew) constructor.\n  - `timeouts` (`obj`): Set the `timeouts` field on the resulting object. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.bigquery_datapolicy_data_policy.timeouts.new](#fn-timeoutsnew) constructor.\n\n**Returns**:\n  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `bigquery_datapolicy_data_policy` resource into the root Terraform configuration.\n', args=[]),
  newAttrs(
    data_policy_id,
    data_policy_type,
    location,
    policy_tag,
    data_masking_policy=null,
    project=null,
    timeouts=null
  ):: std.prune(a={
    data_masking_policy: data_masking_policy,
    data_policy_id: data_policy_id,
    data_policy_type: data_policy_type,
    location: location,
    policy_tag: policy_tag,
    project: project,
    timeouts: timeouts,
  }),
  timeouts:: {
    '#new':: d.fn(help='\n`google.bigquery_datapolicy_data_policy.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`\nTerraform sub block.\n\n\n\n**Args**:\n  - `create` (`string`): Set the `create` field on the resulting object. When `null`, the `create` field will be omitted from the resulting object.\n  - `delete` (`string`): Set the `delete` field on the resulting object. When `null`, the `delete` field will be omitted from the resulting object.\n  - `update` (`string`): Set the `update` field on the resulting object. When `null`, the `update` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `timeouts` sub block.\n', args=[]),
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
  '#withDataMaskingPolicy':: d.fn(help='`google.list[obj].withDataMaskingPolicy` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the data_masking_policy field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [google.list[obj].withDataMaskingPolicyMixin](TODO) function.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `data_masking_policy` field.\n', args=[]),
  withDataMaskingPolicy(resourceLabel, value): {
    resource+: {
      google_bigquery_datapolicy_data_policy+: {
        [resourceLabel]+: {
          data_masking_policy: value,
        },
      },
    },
  },
  '#withDataMaskingPolicyMixin':: d.fn(help='`google.list[obj].withDataMaskingPolicyMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the data_masking_policy field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google.list[obj].withDataMaskingPolicy](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `data_masking_policy` field.\n', args=[]),
  withDataMaskingPolicyMixin(resourceLabel, value): {
    resource+: {
      google_bigquery_datapolicy_data_policy+: {
        [resourceLabel]+: {
          data_masking_policy+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withDataPolicyId':: d.fn(help='`google.string.withDataPolicyId` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the data_policy_id field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `data_policy_id` field.\n', args=[]),
  withDataPolicyId(resourceLabel, value): {
    resource+: {
      google_bigquery_datapolicy_data_policy+: {
        [resourceLabel]+: {
          data_policy_id: value,
        },
      },
    },
  },
  '#withDataPolicyType':: d.fn(help='`google.string.withDataPolicyType` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the data_policy_type field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `data_policy_type` field.\n', args=[]),
  withDataPolicyType(resourceLabel, value): {
    resource+: {
      google_bigquery_datapolicy_data_policy+: {
        [resourceLabel]+: {
          data_policy_type: value,
        },
      },
    },
  },
  '#withLocation':: d.fn(help='`google.string.withLocation` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the location field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `location` field.\n', args=[]),
  withLocation(resourceLabel, value): {
    resource+: {
      google_bigquery_datapolicy_data_policy+: {
        [resourceLabel]+: {
          location: value,
        },
      },
    },
  },
  '#withPolicyTag':: d.fn(help='`google.string.withPolicyTag` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the policy_tag field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `policy_tag` field.\n', args=[]),
  withPolicyTag(resourceLabel, value): {
    resource+: {
      google_bigquery_datapolicy_data_policy+: {
        [resourceLabel]+: {
          policy_tag: value,
        },
      },
    },
  },
  '#withProject':: d.fn(help='`google.string.withProject` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the project field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `project` field.\n', args=[]),
  withProject(resourceLabel, value): {
    resource+: {
      google_bigquery_datapolicy_data_policy+: {
        [resourceLabel]+: {
          project: value,
        },
      },
    },
  },
  '#withTimeouts':: d.fn(help='`google.obj.withTimeouts` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will replace the map with the passed in `value`. If you wish to instead merge the\npassed in value to the existing map, use the [google.obj.withTimeoutsMixin](TODO) function.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeouts(resourceLabel, value): {
    resource+: {
      google_bigquery_datapolicy_data_policy+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  '#withTimeoutsMixin':: d.fn(help='`google.obj.withTimeoutsMixin` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will merge the passed in value to the existing map. If you wish\nto instead replace the entire map with the passed in `value`, use the [google.obj.withTimeouts](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeoutsMixin(resourceLabel, value): {
    resource+: {
      google_bigquery_datapolicy_data_policy+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
}
