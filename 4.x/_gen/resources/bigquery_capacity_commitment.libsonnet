local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
local d = (import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet');
{
  '#':: d.pkg(name='bigquery_capacity_commitment', url='', help='`bigquery_capacity_commitment` represents the `google_bigquery_capacity_commitment` Terraform resource.\n\n\n\nThis package contains functions and utilities for setting up the resource using Jsonnet code.\n'),
  '#new':: d.fn(help="\n`google.bigquery_capacity_commitment.new` injects a new `google_bigquery_capacity_commitment` Terraform `resource`\nblock into the root module document.\n\nAdditionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the\nresource. For example, if you added a new instance to the root using:\n\n    # arguments omitted for brevity\n    google.bigquery_capacity_commitment.new('some_id')\n\nYou can get the reference to the `id` field of the created `google.bigquery_capacity_commitment` using the reference:\n\n    $._ref.google_bigquery_capacity_commitment.some_id.get('id')\n\nThis is the same as directly entering `\"${ google_bigquery_capacity_commitment.some_id.id }\"` as the value.\n\nNOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,\nor `$` to refer to the root object. Instead, make an explicit outer object using `local`.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block.\n  - `capacity_commitment_id` (`string`): The optional capacity commitment ID. Capacity commitment name will be generated automatically if this field is\nempty. This field must only contain lower case alphanumeric characters or dashes. The first and last character\ncannot be a dash. Max length is 64 characters. NOTE: this ID won\u0026#39;t be kept if the capacity commitment is split\nor merged. When `null`, the `capacity_commitment_id` field will be omitted from the resulting object.\n  - `enforce_single_admin_project_per_org` (`string`): If true, fail the request if another project in the organization has a capacity commitment. When `null`, the `enforce_single_admin_project_per_org` field will be omitted from the resulting object.\n  - `location` (`string`): The geographic location where the transfer config should reside.\nExamples: US, EU, asia-northeast1. The default value is US. When `null`, the `location` field will be omitted from the resulting object.\n  - `plan` (`string`): Capacity commitment plan. Valid values are FLEX, TRIAL, MONTHLY, ANNUAL\n  - `project` (`string`): Set the `project` field on the resulting resource block. When `null`, the `project` field will be omitted from the resulting object.\n  - `renewal_plan` (`string`): The plan this capacity commitment is converted to after commitmentEndTime passes. Once the plan is changed, committed period is extended according to commitment plan. Only applicable for ANNUAL and TRIAL commitments. When `null`, the `renewal_plan` field will be omitted from the resulting object.\n  - `slot_count` (`number`): Number of slots in this commitment.\n  - `timeouts` (`obj`): Set the `timeouts` field on the resulting resource block. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.bigquery_capacity_commitment.timeouts.new](#fn-timeoutsnew) constructor.\n\n**Returns**:\n- A mixin object that injects the new resource into the root Terraform configuration.\n", args=[]),
  new(
    resourceLabel,
    plan,
    slot_count,
    capacity_commitment_id=null,
    enforce_single_admin_project_per_org=null,
    location=null,
    project=null,
    renewal_plan=null,
    timeouts=null,
    _meta={}
  ):: tf.withResource(
    type='google_bigquery_capacity_commitment',
    label=resourceLabel,
    attrs=self.newAttrs(
      capacity_commitment_id=capacity_commitment_id,
      enforce_single_admin_project_per_org=enforce_single_admin_project_per_org,
      location=location,
      plan=plan,
      project=project,
      renewal_plan=renewal_plan,
      slot_count=slot_count,
      timeouts=timeouts
    ),
    _meta=_meta
  ),
  '#newAttrs':: d.fn(help='\n`google.bigquery_capacity_commitment.newAttrs` constructs a new object with attributes and blocks configured for the `bigquery_capacity_commitment`\nTerraform resource.\n\nUnlike [google.bigquery_capacity_commitment.new](#fn-new), this function will not inject the `resource`\nblock into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the\n[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.\n\nThis is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to\ninjecting into a complete block.\n\n**Args**:\n  - `capacity_commitment_id` (`string`): The optional capacity commitment ID. Capacity commitment name will be generated automatically if this field is\nempty. This field must only contain lower case alphanumeric characters or dashes. The first and last character\ncannot be a dash. Max length is 64 characters. NOTE: this ID won&#39;t be kept if the capacity commitment is split\nor merged. When `null`, the `capacity_commitment_id` field will be omitted from the resulting object.\n  - `enforce_single_admin_project_per_org` (`string`): If true, fail the request if another project in the organization has a capacity commitment. When `null`, the `enforce_single_admin_project_per_org` field will be omitted from the resulting object.\n  - `location` (`string`): The geographic location where the transfer config should reside.\nExamples: US, EU, asia-northeast1. The default value is US. When `null`, the `location` field will be omitted from the resulting object.\n  - `plan` (`string`): Capacity commitment plan. Valid values are FLEX, TRIAL, MONTHLY, ANNUAL\n  - `project` (`string`): Set the `project` field on the resulting object. When `null`, the `project` field will be omitted from the resulting object.\n  - `renewal_plan` (`string`): The plan this capacity commitment is converted to after commitmentEndTime passes. Once the plan is changed, committed period is extended according to commitment plan. Only applicable for ANNUAL and TRIAL commitments. When `null`, the `renewal_plan` field will be omitted from the resulting object.\n  - `slot_count` (`number`): Number of slots in this commitment.\n  - `timeouts` (`obj`): Set the `timeouts` field on the resulting object. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.bigquery_capacity_commitment.timeouts.new](#fn-timeoutsnew) constructor.\n\n**Returns**:\n  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `bigquery_capacity_commitment` resource into the root Terraform configuration.\n', args=[]),
  newAttrs(
    plan,
    slot_count,
    capacity_commitment_id=null,
    enforce_single_admin_project_per_org=null,
    location=null,
    project=null,
    renewal_plan=null,
    timeouts=null
  ):: std.prune(a={
    capacity_commitment_id: capacity_commitment_id,
    enforce_single_admin_project_per_org: enforce_single_admin_project_per_org,
    location: location,
    plan: plan,
    project: project,
    renewal_plan: renewal_plan,
    slot_count: slot_count,
    timeouts: timeouts,
  }),
  timeouts:: {
    '#new':: d.fn(help='\n`google.bigquery_capacity_commitment.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`\nTerraform sub block.\n\n\n\n**Args**:\n  - `create` (`string`): Set the `create` field on the resulting object. When `null`, the `create` field will be omitted from the resulting object.\n  - `delete` (`string`): Set the `delete` field on the resulting object. When `null`, the `delete` field will be omitted from the resulting object.\n  - `update` (`string`): Set the `update` field on the resulting object. When `null`, the `update` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `timeouts` sub block.\n', args=[]),
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
  '#withCapacityCommitmentId':: d.fn(help='`google.string.withCapacityCommitmentId` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the capacity_commitment_id field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `capacity_commitment_id` field.\n', args=[]),
  withCapacityCommitmentId(resourceLabel, value): {
    resource+: {
      google_bigquery_capacity_commitment+: {
        [resourceLabel]+: {
          capacity_commitment_id: value,
        },
      },
    },
  },
  '#withEnforceSingleAdminProjectPerOrg':: d.fn(help='`google.string.withEnforceSingleAdminProjectPerOrg` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the enforce_single_admin_project_per_org field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `enforce_single_admin_project_per_org` field.\n', args=[]),
  withEnforceSingleAdminProjectPerOrg(resourceLabel, value): {
    resource+: {
      google_bigquery_capacity_commitment+: {
        [resourceLabel]+: {
          enforce_single_admin_project_per_org: value,
        },
      },
    },
  },
  '#withLocation':: d.fn(help='`google.string.withLocation` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the location field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `location` field.\n', args=[]),
  withLocation(resourceLabel, value): {
    resource+: {
      google_bigquery_capacity_commitment+: {
        [resourceLabel]+: {
          location: value,
        },
      },
    },
  },
  '#withPlan':: d.fn(help='`google.string.withPlan` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the plan field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `plan` field.\n', args=[]),
  withPlan(resourceLabel, value): {
    resource+: {
      google_bigquery_capacity_commitment+: {
        [resourceLabel]+: {
          plan: value,
        },
      },
    },
  },
  '#withProject':: d.fn(help='`google.string.withProject` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the project field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `project` field.\n', args=[]),
  withProject(resourceLabel, value): {
    resource+: {
      google_bigquery_capacity_commitment+: {
        [resourceLabel]+: {
          project: value,
        },
      },
    },
  },
  '#withRenewalPlan':: d.fn(help='`google.string.withRenewalPlan` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the renewal_plan field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `renewal_plan` field.\n', args=[]),
  withRenewalPlan(resourceLabel, value): {
    resource+: {
      google_bigquery_capacity_commitment+: {
        [resourceLabel]+: {
          renewal_plan: value,
        },
      },
    },
  },
  '#withSlotCount':: d.fn(help='`google.number.withSlotCount` constructs a mixin object that can be merged into the `number`\nTerraform resource block to set or update the slot_count field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`number`): The value to set for the `slot_count` field.\n', args=[]),
  withSlotCount(resourceLabel, value): {
    resource+: {
      google_bigquery_capacity_commitment+: {
        [resourceLabel]+: {
          slot_count: value,
        },
      },
    },
  },
  '#withTimeouts':: d.fn(help='`google.obj.withTimeouts` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will replace the map with the passed in `value`. If you wish to instead merge the\npassed in value to the existing map, use the [google.obj.withTimeoutsMixin](TODO) function.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeouts(resourceLabel, value): {
    resource+: {
      google_bigquery_capacity_commitment+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  '#withTimeoutsMixin':: d.fn(help='`google.obj.withTimeoutsMixin` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will merge the passed in value to the existing map. If you wish\nto instead replace the entire map with the passed in `value`, use the [google.obj.withTimeouts](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeoutsMixin(resourceLabel, value): {
    resource+: {
      google_bigquery_capacity_commitment+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
}
