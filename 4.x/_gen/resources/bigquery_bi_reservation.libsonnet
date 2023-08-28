local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
local d = (import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet');
{
  '#':: d.pkg(name='bigquery_bi_reservation', url='', help='`bigquery_bi_reservation` represents the `google_bigquery_bi_reservation` Terraform resource.\n\n\n\nThis package contains functions and utilities for setting up the resource using Jsonnet code.\n'),
  '#new':: d.fn(help="\n`google.bigquery_bi_reservation.new` injects a new `google_bigquery_bi_reservation` Terraform `resource`\nblock into the root module document.\n\nAdditionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the\nresource. For example, if you added a new instance to the root using:\n\n    # arguments omitted for brevity\n    google.bigquery_bi_reservation.new('some_id')\n\nYou can get the reference to the `id` field of the created `google.bigquery_bi_reservation` using the reference:\n\n    $._ref.google_bigquery_bi_reservation.some_id.get('id')\n\nThis is the same as directly entering `\"${ google_bigquery_bi_reservation.some_id.id }\"` as the value.\n\nNOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,\nor `$` to refer to the root object. Instead, make an explicit outer object using `local`.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block.\n  - `location` (`string`): LOCATION_DESCRIPTION\n  - `project` (`string`): Set the `project` field on the resulting resource block. When `null`, the `project` field will be omitted from the resulting object.\n  - `size` (`number`): Size of a reservation, in bytes. When `null`, the `size` field will be omitted from the resulting object.\n  - `preferred_tables` (`list[obj]`): Preferred tables to use BI capacity for. When `null`, the `preferred_tables` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.bigquery_bi_reservation.preferred_tables.new](#fn-preferred_tablesnew) constructor.\n  - `timeouts` (`obj`): Set the `timeouts` field on the resulting resource block. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.bigquery_bi_reservation.timeouts.new](#fn-timeoutsnew) constructor.\n\n**Returns**:\n- A mixin object that injects the new resource into the root Terraform configuration.\n", args=[]),
  new(
    resourceLabel,
    location,
    preferred_tables=null,
    project=null,
    size=null,
    timeouts=null,
    _meta={}
  ):: tf.withResource(
    type='google_bigquery_bi_reservation',
    label=resourceLabel,
    attrs=self.newAttrs(
      location=location,
      preferred_tables=preferred_tables,
      project=project,
      size=size,
      timeouts=timeouts
    ),
    _meta=_meta
  ),
  '#newAttrs':: d.fn(help='\n`google.bigquery_bi_reservation.newAttrs` constructs a new object with attributes and blocks configured for the `bigquery_bi_reservation`\nTerraform resource.\n\nUnlike [google.bigquery_bi_reservation.new](#fn-new), this function will not inject the `resource`\nblock into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the\n[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.\n\nThis is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to\ninjecting into a complete block.\n\n**Args**:\n  - `location` (`string`): LOCATION_DESCRIPTION\n  - `project` (`string`): Set the `project` field on the resulting object. When `null`, the `project` field will be omitted from the resulting object.\n  - `size` (`number`): Size of a reservation, in bytes. When `null`, the `size` field will be omitted from the resulting object.\n  - `preferred_tables` (`list[obj]`): Preferred tables to use BI capacity for. When `null`, the `preferred_tables` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.bigquery_bi_reservation.preferred_tables.new](#fn-preferred_tablesnew) constructor.\n  - `timeouts` (`obj`): Set the `timeouts` field on the resulting object. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.bigquery_bi_reservation.timeouts.new](#fn-timeoutsnew) constructor.\n\n**Returns**:\n  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `bigquery_bi_reservation` resource into the root Terraform configuration.\n', args=[]),
  newAttrs(
    location,
    preferred_tables=null,
    project=null,
    size=null,
    timeouts=null
  ):: std.prune(a={
    location: location,
    preferred_tables: preferred_tables,
    project: project,
    size: size,
    timeouts: timeouts,
  }),
  preferred_tables:: {
    '#new':: d.fn(help='\n`google.bigquery_bi_reservation.preferred_tables.new` constructs a new object with attributes and blocks configured for the `preferred_tables`\nTerraform sub block.\n\n\n\n**Args**:\n  - `dataset_id` (`string`): The ID of the dataset in the above project. When `null`, the `dataset_id` field will be omitted from the resulting object.\n  - `project_id` (`string`): The assigned project ID of the project. When `null`, the `project_id` field will be omitted from the resulting object.\n  - `table_id` (`string`): The ID of the table in the above dataset. When `null`, the `table_id` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `preferred_tables` sub block.\n', args=[]),
    new(
      dataset_id=null,
      project_id=null,
      table_id=null
    ):: std.prune(a={
      dataset_id: dataset_id,
      project_id: project_id,
      table_id: table_id,
    }),
  },
  timeouts:: {
    '#new':: d.fn(help='\n`google.bigquery_bi_reservation.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`\nTerraform sub block.\n\n\n\n**Args**:\n  - `create` (`string`): Set the `create` field on the resulting object. When `null`, the `create` field will be omitted from the resulting object.\n  - `delete` (`string`): Set the `delete` field on the resulting object. When `null`, the `delete` field will be omitted from the resulting object.\n  - `update` (`string`): Set the `update` field on the resulting object. When `null`, the `update` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `timeouts` sub block.\n', args=[]),
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
  '#withLocation':: d.fn(help='`google.string.withLocation` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the location field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `location` field.\n', args=[]),
  withLocation(resourceLabel, value): {
    resource+: {
      google_bigquery_bi_reservation+: {
        [resourceLabel]+: {
          location: value,
        },
      },
    },
  },
  '#withPreferredTables':: d.fn(help='`google.list[obj].withPreferredTables` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the preferred_tables field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [google.list[obj].withPreferredTablesMixin](TODO) function.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `preferred_tables` field.\n', args=[]),
  withPreferredTables(resourceLabel, value): {
    resource+: {
      google_bigquery_bi_reservation+: {
        [resourceLabel]+: {
          preferred_tables: value,
        },
      },
    },
  },
  '#withPreferredTablesMixin':: d.fn(help='`google.list[obj].withPreferredTablesMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the preferred_tables field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google.list[obj].withPreferredTables](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `preferred_tables` field.\n', args=[]),
  withPreferredTablesMixin(resourceLabel, value): {
    resource+: {
      google_bigquery_bi_reservation+: {
        [resourceLabel]+: {
          preferred_tables+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withProject':: d.fn(help='`google.string.withProject` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the project field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `project` field.\n', args=[]),
  withProject(resourceLabel, value): {
    resource+: {
      google_bigquery_bi_reservation+: {
        [resourceLabel]+: {
          project: value,
        },
      },
    },
  },
  '#withSize':: d.fn(help='`google.number.withSize` constructs a mixin object that can be merged into the `number`\nTerraform resource block to set or update the size field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`number`): The value to set for the `size` field.\n', args=[]),
  withSize(resourceLabel, value): {
    resource+: {
      google_bigquery_bi_reservation+: {
        [resourceLabel]+: {
          size: value,
        },
      },
    },
  },
  '#withTimeouts':: d.fn(help='`google.obj.withTimeouts` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will replace the map with the passed in `value`. If you wish to instead merge the\npassed in value to the existing map, use the [google.obj.withTimeoutsMixin](TODO) function.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeouts(resourceLabel, value): {
    resource+: {
      google_bigquery_bi_reservation+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  '#withTimeoutsMixin':: d.fn(help='`google.obj.withTimeoutsMixin` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will merge the passed in value to the existing map. If you wish\nto instead replace the entire map with the passed in `value`, use the [google.obj.withTimeouts](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeoutsMixin(resourceLabel, value): {
    resource+: {
      google_bigquery_bi_reservation+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
}
