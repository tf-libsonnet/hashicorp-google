local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
local d = (import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet');
{
  '#':: d.pkg(name='alloydb_backup', url='', help='`alloydb_backup` represents the `google_alloydb_backup` Terraform resource.\n\n\n\nThis package contains functions and utilities for setting up the resource using Jsonnet code.\n'),
  '#new':: d.fn(help="\n`google.alloydb_backup.new` injects a new `google_alloydb_backup` Terraform `resource`\nblock into the root module document.\n\nAdditionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the\nresource. For example, if you added a new instance to the root using:\n\n    # arguments omitted for brevity\n    google.alloydb_backup.new('some_id')\n\nYou can get the reference to the `id` field of the created `google.alloydb_backup` using the reference:\n\n    $._ref.google_alloydb_backup.some_id.get('id')\n\nThis is the same as directly entering `\"${ google_alloydb_backup.some_id.id }\"` as the value.\n\nNOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,\nor `$` to refer to the root object. Instead, make an explicit outer object using `local`.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block.\n  - `backup_id` (`string`): The ID of the alloydb backup.\n  - `cluster_name` (`string`): The full resource name of the backup source cluster (e.g., projects/{project}/locations/{location}/clusters/{clusterId}).\n  - `description` (`string`): User-provided description of the backup. When `null`, the `description` field will be omitted from the resulting object.\n  - `labels` (`obj`): User-defined labels for the alloydb backup. When `null`, the `labels` field will be omitted from the resulting object.\n  - `location` (`string`): The location where the alloydb backup should reside. When `null`, the `location` field will be omitted from the resulting object.\n  - `project` (`string`): Set the `project` field on the resulting resource block. When `null`, the `project` field will be omitted from the resulting object.\n  - `timeouts` (`obj`): Set the `timeouts` field on the resulting resource block. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.alloydb_backup.timeouts.new](#fn-timeoutsnew) constructor.\n\n**Returns**:\n- A mixin object that injects the new resource into the root Terraform configuration.\n", args=[]),
  new(
    resourceLabel,
    backup_id,
    cluster_name,
    description=null,
    labels=null,
    location=null,
    project=null,
    timeouts=null,
    _meta={}
  ):: tf.withResource(
    type='google_alloydb_backup',
    label=resourceLabel,
    attrs=self.newAttrs(
      backup_id=backup_id,
      cluster_name=cluster_name,
      description=description,
      labels=labels,
      location=location,
      project=project,
      timeouts=timeouts
    ),
    _meta=_meta
  ),
  '#newAttrs':: d.fn(help='\n`google.alloydb_backup.newAttrs` constructs a new object with attributes and blocks configured for the `alloydb_backup`\nTerraform resource.\n\nUnlike [google.alloydb_backup.new](#fn-new), this function will not inject the `resource`\nblock into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the\n[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.\n\nThis is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to\ninjecting into a complete block.\n\n**Args**:\n  - `backup_id` (`string`): The ID of the alloydb backup.\n  - `cluster_name` (`string`): The full resource name of the backup source cluster (e.g., projects/{project}/locations/{location}/clusters/{clusterId}).\n  - `description` (`string`): User-provided description of the backup. When `null`, the `description` field will be omitted from the resulting object.\n  - `labels` (`obj`): User-defined labels for the alloydb backup. When `null`, the `labels` field will be omitted from the resulting object.\n  - `location` (`string`): The location where the alloydb backup should reside. When `null`, the `location` field will be omitted from the resulting object.\n  - `project` (`string`): Set the `project` field on the resulting object. When `null`, the `project` field will be omitted from the resulting object.\n  - `timeouts` (`obj`): Set the `timeouts` field on the resulting object. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.alloydb_backup.timeouts.new](#fn-timeoutsnew) constructor.\n\n**Returns**:\n  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `alloydb_backup` resource into the root Terraform configuration.\n', args=[]),
  newAttrs(
    backup_id,
    cluster_name,
    description=null,
    labels=null,
    location=null,
    project=null,
    timeouts=null
  ):: std.prune(a={
    backup_id: backup_id,
    cluster_name: cluster_name,
    description: description,
    labels: labels,
    location: location,
    project: project,
    timeouts: timeouts,
  }),
  timeouts:: {
    '#new':: d.fn(help='\n`google.alloydb_backup.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`\nTerraform sub block.\n\n\n\n**Args**:\n  - `create` (`string`): Set the `create` field on the resulting object. When `null`, the `create` field will be omitted from the resulting object.\n  - `delete` (`string`): Set the `delete` field on the resulting object. When `null`, the `delete` field will be omitted from the resulting object.\n  - `update` (`string`): Set the `update` field on the resulting object. When `null`, the `update` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `timeouts` sub block.\n', args=[]),
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
  '#withBackupId':: d.fn(help='`google.string.withBackupId` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the backup_id field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `backup_id` field.\n', args=[]),
  withBackupId(resourceLabel, value): {
    resource+: {
      google_alloydb_backup+: {
        [resourceLabel]+: {
          backup_id: value,
        },
      },
    },
  },
  '#withClusterName':: d.fn(help='`google.string.withClusterName` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the cluster_name field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `cluster_name` field.\n', args=[]),
  withClusterName(resourceLabel, value): {
    resource+: {
      google_alloydb_backup+: {
        [resourceLabel]+: {
          cluster_name: value,
        },
      },
    },
  },
  '#withDescription':: d.fn(help='`google.string.withDescription` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the description field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `description` field.\n', args=[]),
  withDescription(resourceLabel, value): {
    resource+: {
      google_alloydb_backup+: {
        [resourceLabel]+: {
          description: value,
        },
      },
    },
  },
  '#withLabels':: d.fn(help='`google.obj.withLabels` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the labels field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `labels` field.\n', args=[]),
  withLabels(resourceLabel, value): {
    resource+: {
      google_alloydb_backup+: {
        [resourceLabel]+: {
          labels: value,
        },
      },
    },
  },
  '#withLocation':: d.fn(help='`google.string.withLocation` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the location field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `location` field.\n', args=[]),
  withLocation(resourceLabel, value): {
    resource+: {
      google_alloydb_backup+: {
        [resourceLabel]+: {
          location: value,
        },
      },
    },
  },
  '#withProject':: d.fn(help='`google.string.withProject` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the project field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `project` field.\n', args=[]),
  withProject(resourceLabel, value): {
    resource+: {
      google_alloydb_backup+: {
        [resourceLabel]+: {
          project: value,
        },
      },
    },
  },
  '#withTimeouts':: d.fn(help='`google.obj.withTimeouts` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will replace the map with the passed in `value`. If you wish to instead merge the\npassed in value to the existing map, use the [google.obj.withTimeoutsMixin](TODO) function.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeouts(resourceLabel, value): {
    resource+: {
      google_alloydb_backup+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  '#withTimeoutsMixin':: d.fn(help='`google.obj.withTimeoutsMixin` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will merge the passed in value to the existing map. If you wish\nto instead replace the entire map with the passed in `value`, use the [google.obj.withTimeouts](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeoutsMixin(resourceLabel, value): {
    resource+: {
      google_alloydb_backup+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
}
