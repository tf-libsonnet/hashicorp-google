local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
local d = (import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet');
{
  '#':: d.pkg(name='bigquery_dataset_access', url='', help='`bigquery_dataset_access` represents the `google_bigquery_dataset_access` Terraform resource.\n\n\n\nThis package contains functions and utilities for setting up the resource using Jsonnet code.\n'),
  dataset:: {
    dataset:: {
      '#new':: d.fn(help='\n`google.bigquery_dataset_access.dataset.dataset.new` constructs a new object with attributes and blocks configured for the `dataset`\nTerraform sub block.\n\n\n\n**Args**:\n  - `dataset_id` (`string`): The ID of the dataset containing this table.\n  - `project_id` (`string`): The ID of the project containing this table.\n\n**Returns**:\n  - An attribute object that represents the `dataset` sub block.\n', args=[]),
      new(
        dataset_id,
        project_id
      ):: std.prune(a={
        dataset_id: dataset_id,
        project_id: project_id,
      }),
    },
    '#new':: d.fn(help='\n`google.bigquery_dataset_access.dataset.new` constructs a new object with attributes and blocks configured for the `dataset`\nTerraform sub block.\n\n\n\n**Args**:\n  - `target_types` (`list`): Which resources in the dataset this entry applies to. Currently, only views are supported,\nbut additional target types may be added in the future. Possible values: VIEWS\n  - `dataset` (`list[obj]`): The dataset this entry applies to When `null`, the `dataset` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.bigquery_dataset_access.dataset.dataset.new](#fn-bigquery_dataset_accessdatasetnew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `dataset` sub block.\n', args=[]),
    new(
      target_types,
      dataset=null
    ):: std.prune(a={
      dataset: dataset,
      target_types: target_types,
    }),
  },
  '#new':: d.fn(help="\n`google.bigquery_dataset_access.new` injects a new `google_bigquery_dataset_access` Terraform `resource`\nblock into the root module document.\n\nAdditionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the\nresource. For example, if you added a new instance to the root using:\n\n    # arguments omitted for brevity\n    google.bigquery_dataset_access.new('some_id')\n\nYou can get the reference to the `id` field of the created `google.bigquery_dataset_access` using the reference:\n\n    $._ref.google_bigquery_dataset_access.some_id.get('id')\n\nThis is the same as directly entering `\"${ google_bigquery_dataset_access.some_id.id }\"` as the value.\n\nNOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,\nor `$` to refer to the root object. Instead, make an explicit outer object using `local`.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block.\n  - `dataset_id` (`string`): A unique ID for this dataset, without the project name. The ID\nmust contain only letters (a-z, A-Z), numbers (0-9), or\nunderscores (_). The maximum length is 1,024 characters.\n  - `domain` (`string`): A domain to grant access to. Any users signed in with the\ndomain specified will be granted the specified access When `null`, the `domain` field will be omitted from the resulting object.\n  - `group_by_email` (`string`): An email address of a Google Group to grant access to. When `null`, the `group_by_email` field will be omitted from the resulting object.\n  - `iam_member` (`string`): Some other type of member that appears in the IAM Policy but isn\u0026#39;t a user,\ngroup, domain, or special group. For example: \u0026#39;allUsers\u0026#39; When `null`, the `iam_member` field will be omitted from the resulting object.\n  - `project` (`string`):  When `null`, the `project` field will be omitted from the resulting object.\n  - `role` (`string`): Describes the rights granted to the user specified by the other\nmember of the access object. Basic, predefined, and custom roles are\nsupported. Predefined roles that have equivalent basic roles are\nswapped by the API to their basic counterparts, and will show a diff\npost-create. See\n[official docs](https://cloud.google.com/bigquery/docs/access-control). When `null`, the `role` field will be omitted from the resulting object.\n  - `special_group` (`string`): A special group to grant access to. Possible values include:\n\n\n* \u0026#39;projectOwners\u0026#39;: Owners of the enclosing project.\n\n\n* \u0026#39;projectReaders\u0026#39;: Readers of the enclosing project.\n\n\n* \u0026#39;projectWriters\u0026#39;: Writers of the enclosing project.\n\n\n* \u0026#39;allAuthenticatedUsers\u0026#39;: All authenticated BigQuery users. When `null`, the `special_group` field will be omitted from the resulting object.\n  - `user_by_email` (`string`): An email address of a user to grant access to. For example:\nfred@example.com When `null`, the `user_by_email` field will be omitted from the resulting object.\n  - `dataset` (`list[obj]`): Grants all resources of particular types in a particular dataset read access to the current dataset. When `null`, the `dataset` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.bigquery_dataset_access.dataset.new](#fn-datasetnew) constructor.\n  - `routine` (`list[obj]`): A routine from a different dataset to grant access to. Queries\nexecuted against that routine will have read access to tables in\nthis dataset. The role field is not required when this field is\nset. If that routine is updated by any user, access to the routine\nneeds to be granted again via an update operation. When `null`, the `routine` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.bigquery_dataset_access.routine.new](#fn-routinenew) constructor.\n  - `timeouts` (`obj`):  When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.bigquery_dataset_access.timeouts.new](#fn-timeoutsnew) constructor.\n  - `view` (`list[obj]`): A view from a different dataset to grant access to. Queries\nexecuted against that view will have read access to tables in\nthis dataset. The role field is not required when this field is\nset. If that view is updated by any user, access to the view\nneeds to be granted again via an update operation. When `null`, the `view` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.bigquery_dataset_access.view.new](#fn-viewnew) constructor.\n\n**Returns**:\n- A mixin object that injects the new resource into the root Terraform configuration.\n", args=[]),
  new(
    resourceLabel,
    dataset_id,
    dataset=null,
    domain=null,
    group_by_email=null,
    iam_member=null,
    project=null,
    role=null,
    routine=null,
    special_group=null,
    timeouts=null,
    user_by_email=null,
    view=null,
    _meta={}
  ):: tf.withResource(
    type='google_bigquery_dataset_access',
    label=resourceLabel,
    attrs=self.newAttrs(
      dataset=dataset,
      dataset_id=dataset_id,
      domain=domain,
      group_by_email=group_by_email,
      iam_member=iam_member,
      project=project,
      role=role,
      routine=routine,
      special_group=special_group,
      timeouts=timeouts,
      user_by_email=user_by_email,
      view=view
    ),
    _meta=_meta
  ),
  '#newAttrs':: d.fn(help='\n`google.bigquery_dataset_access.newAttrs` constructs a new object with attributes and blocks configured for the `bigquery_dataset_access`\nTerraform resource.\n\nUnlike [google.bigquery_dataset_access.new](#fn-new), this function will not inject the `resource`\nblock into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the\n[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.\n\nThis is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to\ninjecting into a complete block.\n\n**Args**:\n  - `dataset_id` (`string`): A unique ID for this dataset, without the project name. The ID\nmust contain only letters (a-z, A-Z), numbers (0-9), or\nunderscores (_). The maximum length is 1,024 characters.\n  - `domain` (`string`): A domain to grant access to. Any users signed in with the\ndomain specified will be granted the specified access When `null`, the `domain` field will be omitted from the resulting object.\n  - `group_by_email` (`string`): An email address of a Google Group to grant access to. When `null`, the `group_by_email` field will be omitted from the resulting object.\n  - `iam_member` (`string`): Some other type of member that appears in the IAM Policy but isn&#39;t a user,\ngroup, domain, or special group. For example: &#39;allUsers&#39; When `null`, the `iam_member` field will be omitted from the resulting object.\n  - `project` (`string`):  When `null`, the `project` field will be omitted from the resulting object.\n  - `role` (`string`): Describes the rights granted to the user specified by the other\nmember of the access object. Basic, predefined, and custom roles are\nsupported. Predefined roles that have equivalent basic roles are\nswapped by the API to their basic counterparts, and will show a diff\npost-create. See\n[official docs](https://cloud.google.com/bigquery/docs/access-control). When `null`, the `role` field will be omitted from the resulting object.\n  - `special_group` (`string`): A special group to grant access to. Possible values include:\n\n\n* &#39;projectOwners&#39;: Owners of the enclosing project.\n\n\n* &#39;projectReaders&#39;: Readers of the enclosing project.\n\n\n* &#39;projectWriters&#39;: Writers of the enclosing project.\n\n\n* &#39;allAuthenticatedUsers&#39;: All authenticated BigQuery users. When `null`, the `special_group` field will be omitted from the resulting object.\n  - `user_by_email` (`string`): An email address of a user to grant access to. For example:\nfred@example.com When `null`, the `user_by_email` field will be omitted from the resulting object.\n  - `dataset` (`list[obj]`): Grants all resources of particular types in a particular dataset read access to the current dataset. When `null`, the `dataset` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.bigquery_dataset_access.dataset.new](#fn-datasetnew) constructor.\n  - `routine` (`list[obj]`): A routine from a different dataset to grant access to. Queries\nexecuted against that routine will have read access to tables in\nthis dataset. The role field is not required when this field is\nset. If that routine is updated by any user, access to the routine\nneeds to be granted again via an update operation. When `null`, the `routine` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.bigquery_dataset_access.routine.new](#fn-routinenew) constructor.\n  - `timeouts` (`obj`):  When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.bigquery_dataset_access.timeouts.new](#fn-timeoutsnew) constructor.\n  - `view` (`list[obj]`): A view from a different dataset to grant access to. Queries\nexecuted against that view will have read access to tables in\nthis dataset. The role field is not required when this field is\nset. If that view is updated by any user, access to the view\nneeds to be granted again via an update operation. When `null`, the `view` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.bigquery_dataset_access.view.new](#fn-viewnew) constructor.\n\n**Returns**:\n  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `bigquery_dataset_access` resource into the root Terraform configuration.\n', args=[]),
  newAttrs(
    dataset_id,
    dataset=null,
    domain=null,
    group_by_email=null,
    iam_member=null,
    project=null,
    role=null,
    routine=null,
    special_group=null,
    timeouts=null,
    user_by_email=null,
    view=null
  ):: std.prune(a={
    dataset: dataset,
    dataset_id: dataset_id,
    domain: domain,
    group_by_email: group_by_email,
    iam_member: iam_member,
    project: project,
    role: role,
    routine: routine,
    special_group: special_group,
    timeouts: timeouts,
    user_by_email: user_by_email,
    view: view,
  }),
  routine:: {
    '#new':: d.fn(help='\n`google.bigquery_dataset_access.routine.new` constructs a new object with attributes and blocks configured for the `routine`\nTerraform sub block.\n\n\n\n**Args**:\n  - `dataset_id` (`string`): The ID of the dataset containing this table.\n  - `project_id` (`string`): The ID of the project containing this table.\n  - `routine_id` (`string`): The ID of the routine. The ID must contain only letters (a-z,\nA-Z), numbers (0-9), or underscores (_). The maximum length\nis 256 characters.\n\n**Returns**:\n  - An attribute object that represents the `routine` sub block.\n', args=[]),
    new(
      dataset_id,
      project_id,
      routine_id
    ):: std.prune(a={
      dataset_id: dataset_id,
      project_id: project_id,
      routine_id: routine_id,
    }),
  },
  timeouts:: {
    '#new':: d.fn(help='\n`google.bigquery_dataset_access.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`\nTerraform sub block.\n\n\n\n**Args**:\n  - `create` (`string`):  When `null`, the `create` field will be omitted from the resulting object.\n  - `delete` (`string`):  When `null`, the `delete` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `timeouts` sub block.\n', args=[]),
    new(
      create=null,
      delete=null
    ):: std.prune(a={
      create: create,
      delete: delete,
    }),
  },
  view:: {
    '#new':: d.fn(help='\n`google.bigquery_dataset_access.view.new` constructs a new object with attributes and blocks configured for the `view`\nTerraform sub block.\n\n\n\n**Args**:\n  - `dataset_id` (`string`): The ID of the dataset containing this table.\n  - `project_id` (`string`): The ID of the project containing this table.\n  - `table_id` (`string`): The ID of the table. The ID must contain only letters (a-z,\nA-Z), numbers (0-9), or underscores (_). The maximum length\nis 1,024 characters.\n\n**Returns**:\n  - An attribute object that represents the `view` sub block.\n', args=[]),
    new(
      dataset_id,
      project_id,
      table_id
    ):: std.prune(a={
      dataset_id: dataset_id,
      project_id: project_id,
      table_id: table_id,
    }),
  },
  '#withDataset':: d.fn(help='`google.list[obj].withDataset` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the dataset field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [google.list[obj].withDatasetMixin](TODO) function.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `dataset` field.\n', args=[]),
  withDataset(resourceLabel, value): {
    resource+: {
      google_bigquery_dataset_access+: {
        [resourceLabel]+: {
          dataset: value,
        },
      },
    },
  },
  '#withDatasetId':: d.fn(help='`google.string.withDatasetId` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the dataset_id field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `dataset_id` field.\n', args=[]),
  withDatasetId(resourceLabel, value): {
    resource+: {
      google_bigquery_dataset_access+: {
        [resourceLabel]+: {
          dataset_id: value,
        },
      },
    },
  },
  '#withDatasetMixin':: d.fn(help='`google.list[obj].withDatasetMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the dataset field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google.list[obj].withDataset](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `dataset` field.\n', args=[]),
  withDatasetMixin(resourceLabel, value): {
    resource+: {
      google_bigquery_dataset_access+: {
        [resourceLabel]+: {
          dataset+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withDomain':: d.fn(help='`google.string.withDomain` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the domain field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `domain` field.\n', args=[]),
  withDomain(resourceLabel, value): {
    resource+: {
      google_bigquery_dataset_access+: {
        [resourceLabel]+: {
          domain: value,
        },
      },
    },
  },
  '#withGroupByEmail':: d.fn(help='`google.string.withGroupByEmail` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the group_by_email field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `group_by_email` field.\n', args=[]),
  withGroupByEmail(resourceLabel, value): {
    resource+: {
      google_bigquery_dataset_access+: {
        [resourceLabel]+: {
          group_by_email: value,
        },
      },
    },
  },
  '#withIamMember':: d.fn(help='`google.string.withIamMember` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the iam_member field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `iam_member` field.\n', args=[]),
  withIamMember(resourceLabel, value): {
    resource+: {
      google_bigquery_dataset_access+: {
        [resourceLabel]+: {
          iam_member: value,
        },
      },
    },
  },
  '#withProject':: d.fn(help='`google.string.withProject` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the project field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `project` field.\n', args=[]),
  withProject(resourceLabel, value): {
    resource+: {
      google_bigquery_dataset_access+: {
        [resourceLabel]+: {
          project: value,
        },
      },
    },
  },
  '#withRole':: d.fn(help='`google.string.withRole` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the role field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `role` field.\n', args=[]),
  withRole(resourceLabel, value): {
    resource+: {
      google_bigquery_dataset_access+: {
        [resourceLabel]+: {
          role: value,
        },
      },
    },
  },
  '#withRoutine':: d.fn(help='`google.list[obj].withRoutine` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the routine field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [google.list[obj].withRoutineMixin](TODO) function.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `routine` field.\n', args=[]),
  withRoutine(resourceLabel, value): {
    resource+: {
      google_bigquery_dataset_access+: {
        [resourceLabel]+: {
          routine: value,
        },
      },
    },
  },
  '#withRoutineMixin':: d.fn(help='`google.list[obj].withRoutineMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the routine field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google.list[obj].withRoutine](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `routine` field.\n', args=[]),
  withRoutineMixin(resourceLabel, value): {
    resource+: {
      google_bigquery_dataset_access+: {
        [resourceLabel]+: {
          routine+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withSpecialGroup':: d.fn(help='`google.string.withSpecialGroup` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the special_group field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `special_group` field.\n', args=[]),
  withSpecialGroup(resourceLabel, value): {
    resource+: {
      google_bigquery_dataset_access+: {
        [resourceLabel]+: {
          special_group: value,
        },
      },
    },
  },
  '#withTimeouts':: d.fn(help='`google.obj.withTimeouts` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will replace the map with the passed in `value`. If you wish to instead merge the\npassed in value to the existing map, use the [google.obj.withTimeoutsMixin](TODO) function.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeouts(resourceLabel, value): {
    resource+: {
      google_bigquery_dataset_access+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  '#withTimeoutsMixin':: d.fn(help='`google.obj.withTimeoutsMixin` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will merge the passed in value to the existing map. If you wish\nto instead replace the entire map with the passed in `value`, use the [google.obj.withTimeouts](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeoutsMixin(resourceLabel, value): {
    resource+: {
      google_bigquery_dataset_access+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
  '#withUserByEmail':: d.fn(help='`google.string.withUserByEmail` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the user_by_email field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `user_by_email` field.\n', args=[]),
  withUserByEmail(resourceLabel, value): {
    resource+: {
      google_bigquery_dataset_access+: {
        [resourceLabel]+: {
          user_by_email: value,
        },
      },
    },
  },
  '#withView':: d.fn(help='`google.list[obj].withView` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the view field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [google.list[obj].withViewMixin](TODO) function.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `view` field.\n', args=[]),
  withView(resourceLabel, value): {
    resource+: {
      google_bigquery_dataset_access+: {
        [resourceLabel]+: {
          view: value,
        },
      },
    },
  },
  '#withViewMixin':: d.fn(help='`google.list[obj].withViewMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the view field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google.list[obj].withView](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `view` field.\n', args=[]),
  withViewMixin(resourceLabel, value): {
    resource+: {
      google_bigquery_dataset_access+: {
        [resourceLabel]+: {
          view+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
}
