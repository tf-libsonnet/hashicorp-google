local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
local d = (import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet');
{
  '#':: d.pkg(name='bigquery_reservation_assignment', url='', help='`bigquery_reservation_assignment` represents the `google_bigquery_reservation_assignment` Terraform resource.\n\n\n\nThis package contains functions and utilities for setting up the resource using Jsonnet code.\n'),
  '#new':: d.fn(help="\n`google.bigquery_reservation_assignment.new` injects a new `google_bigquery_reservation_assignment` Terraform `resource`\nblock into the root module document.\n\nAdditionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the\nresource. For example, if you added a new instance to the root using:\n\n    # arguments omitted for brevity\n    google.bigquery_reservation_assignment.new('some_id')\n\nYou can get the reference to the `id` field of the created `google.bigquery_reservation_assignment` using the reference:\n\n    $._ref.google_bigquery_reservation_assignment.some_id.get('id')\n\nThis is the same as directly entering `\"${ google_bigquery_reservation_assignment.some_id.id }\"` as the value.\n\nNOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,\nor `$` to refer to the root object. Instead, make an explicit outer object using `local`.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block.\n  - `assignee` (`string`): The resource which will use the reservation. E.g. projects/myproject, folders/123, organizations/456.\n  - `job_type` (`string`): Types of job, which could be specified when using the reservation. Possible values: JOB_TYPE_UNSPECIFIED, PIPELINE, QUERY\n  - `location` (`string`): The location for the resource When `null`, the `location` field will be omitted from the resulting object.\n  - `project` (`string`): The project for the resource When `null`, the `project` field will be omitted from the resulting object.\n  - `reservation` (`string`): The reservation for the resource\n  - `timeouts` (`obj`):  When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.bigquery_reservation_assignment.timeouts.new](#fn-bigquery_reservation_assignmenttimeoutsnew) constructor.\n\n**Returns**:\n- A mixin object that injects the new resource into the root Terraform configuration.\n", args=[]),
  new(
    resourceLabel,
    assignee,
    job_type,
    reservation,
    location=null,
    project=null,
    timeouts=null,
    _meta={}
  ):: tf.withResource(
    type='google_bigquery_reservation_assignment',
    label=resourceLabel,
    attrs=self.newAttrs(
      assignee=assignee,
      job_type=job_type,
      location=location,
      project=project,
      reservation=reservation,
      timeouts=timeouts
    ),
    _meta=_meta
  ),
  '#newAttrs':: d.fn(help='\n`google.bigquery_reservation_assignment.newAttrs` constructs a new object with attributes and blocks configured for the `bigquery_reservation_assignment`\nTerraform resource.\n\nUnlike [google.bigquery_reservation_assignment.new](#fn-bigquery_reservation_assignmentnew), this function will not inject the `resource`\nblock into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the\n[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.\n\nThis is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to\ninjecting into a complete block.\n\n**Args**:\n  - `assignee` (`string`): The resource which will use the reservation. E.g. projects/myproject, folders/123, organizations/456.\n  - `job_type` (`string`): Types of job, which could be specified when using the reservation. Possible values: JOB_TYPE_UNSPECIFIED, PIPELINE, QUERY\n  - `location` (`string`): The location for the resource When `null`, the `location` field will be omitted from the resulting object.\n  - `project` (`string`): The project for the resource When `null`, the `project` field will be omitted from the resulting object.\n  - `reservation` (`string`): The reservation for the resource\n  - `timeouts` (`obj`):  When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.bigquery_reservation_assignment.timeouts.new](#fn-bigquery_reservation_assignmenttimeoutsnew) constructor.\n\n**Returns**:\n  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `bigquery_reservation_assignment` resource into the root Terraform configuration.\n', args=[]),
  newAttrs(
    assignee,
    job_type,
    reservation,
    location=null,
    project=null,
    timeouts=null
  ):: std.prune(a={
    assignee: assignee,
    job_type: job_type,
    location: location,
    project: project,
    reservation: reservation,
    timeouts: timeouts,
  }),
  timeouts:: {
    '#new':: d.fn(help='\n`google.bigquery_reservation_assignment.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`\nTerraform sub block.\n\n\n\n**Args**:\n  - `create` (`string`):  When `null`, the `create` field will be omitted from the resulting object.\n  - `delete` (`string`):  When `null`, the `delete` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `timeouts` sub block.\n', args=[]),
    new(
      create=null,
      delete=null
    ):: std.prune(a={
      create: create,
      delete: delete,
    }),
  },
  '#withAssignee':: d.fn(help='`google.string.withAssignee` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the assignee field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `assignee` field.\n', args=[]),
  withAssignee(resourceLabel, value): {
    resource+: {
      google_bigquery_reservation_assignment+: {
        [resourceLabel]+: {
          assignee: value,
        },
      },
    },
  },
  '#withJobType':: d.fn(help='`google.string.withJobType` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the job_type field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `job_type` field.\n', args=[]),
  withJobType(resourceLabel, value): {
    resource+: {
      google_bigquery_reservation_assignment+: {
        [resourceLabel]+: {
          job_type: value,
        },
      },
    },
  },
  '#withLocation':: d.fn(help='`google.string.withLocation` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the location field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `location` field.\n', args=[]),
  withLocation(resourceLabel, value): {
    resource+: {
      google_bigquery_reservation_assignment+: {
        [resourceLabel]+: {
          location: value,
        },
      },
    },
  },
  '#withProject':: d.fn(help='`google.string.withProject` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the project field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `project` field.\n', args=[]),
  withProject(resourceLabel, value): {
    resource+: {
      google_bigquery_reservation_assignment+: {
        [resourceLabel]+: {
          project: value,
        },
      },
    },
  },
  '#withReservation':: d.fn(help='`google.string.withReservation` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the reservation field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `reservation` field.\n', args=[]),
  withReservation(resourceLabel, value): {
    resource+: {
      google_bigquery_reservation_assignment+: {
        [resourceLabel]+: {
          reservation: value,
        },
      },
    },
  },
  '#withTimeouts':: d.fn(help='`google.obj.withTimeouts` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will replace the map with the passed in `value`. If you wish to instead merge the\npassed in value to the existing map, use the [google.obj.withTimeoutsMixin](TODO) function.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeouts(resourceLabel, value): {
    resource+: {
      google_bigquery_reservation_assignment+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  '#withTimeoutsMixin':: d.fn(help='`google.obj.withTimeoutsMixin` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will merge the passed in value to the existing map. If you wish\nto instead replace the entire map with the passed in `value`, use the [google.obj.withTimeouts](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeoutsMixin(resourceLabel, value): {
    resource+: {
      google_bigquery_reservation_assignment+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
}
