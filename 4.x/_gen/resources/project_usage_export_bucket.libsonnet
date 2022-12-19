local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
local d = (import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet');
{
  '#':: d.pkg(name='project_usage_export_bucket', url='', help='`project_usage_export_bucket` represents the `google_project_usage_export_bucket` Terraform resource.\n\n\n\nThis package contains functions and utilities for setting up the resource using Jsonnet code.\n'),
  '#new':: d.fn(help="\n`google.project_usage_export_bucket.new` injects a new `google_project_usage_export_bucket` Terraform `resource`\nblock into the root module document.\n\nAdditionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the\nresource. For example, if you added a new instance to the root using:\n\n    # arguments omitted for brevity\n    google.project_usage_export_bucket.new('some_id')\n\nYou can get the reference to the `id` field of the created `google.project_usage_export_bucket` using the reference:\n\n    $._ref.google_project_usage_export_bucket.some_id.get('id')\n\nThis is the same as directly entering `\"${ google_project_usage_export_bucket.some_id.id }\"` as the value.\n\nNOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,\nor `$` to refer to the root object. Instead, make an explicit outer object using `local`.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block.\n  - `bucket_name` (`string`): The bucket to store reports in.\n  - `prefix` (`string`): A prefix for the reports, for instance, the project name. When `null`, the `prefix` field will be omitted from the resulting object.\n  - `project` (`string`): The project to set the export bucket on. If it is not provided, the provider project is used. When `null`, the `project` field will be omitted from the resulting object.\n  - `timeouts` (`obj`):  When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.project_usage_export_bucket.timeouts.new](#fn-projectusageexportbuckettimeoutsnew) constructor.\n\n**Returns**:\n- A mixin object that injects the new resource into the root Terraform configuration.\n", args=[]),
  new(
    resourceLabel,
    bucket_name,
    prefix=null,
    project=null,
    timeouts=null,
    _meta={}
  ):: tf.withResource(
    type='google_project_usage_export_bucket',
    label=resourceLabel,
    attrs=self.newAttrs(
      bucket_name=bucket_name,
      prefix=prefix,
      project=project,
      timeouts=timeouts
    ),
    _meta=_meta
  ),
  '#newAttrs':: d.fn(help='\n`google.project_usage_export_bucket.newAttrs` constructs a new object with attributes and blocks configured for the `project_usage_export_bucket`\nTerraform resource.\n\nUnlike [google.project_usage_export_bucket.new](#fn-projectusageexportbucketnew), this function will not inject the `resource`\nblock into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the\n[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.\n\nThis is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to\ninjecting into a complete block.\n\n**Args**:\n  - `bucket_name` (`string`): The bucket to store reports in.\n  - `prefix` (`string`): A prefix for the reports, for instance, the project name. When `null`, the `prefix` field will be omitted from the resulting object.\n  - `project` (`string`): The project to set the export bucket on. If it is not provided, the provider project is used. When `null`, the `project` field will be omitted from the resulting object.\n  - `timeouts` (`obj`):  When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.project_usage_export_bucket.timeouts.new](#fn-projectusageexportbuckettimeoutsnew) constructor.\n\n**Returns**:\n  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `project_usage_export_bucket` resource into the root Terraform configuration.\n', args=[]),
  newAttrs(
    bucket_name,
    prefix=null,
    project=null,
    timeouts=null
  ):: std.prune(a={
    bucket_name: bucket_name,
    prefix: prefix,
    project: project,
    timeouts: timeouts,
  }),
  timeouts:: {
    '#new':: d.fn(help='\n`google.project_usage_export_bucket.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`\nTerraform sub block.\n\n\n\n**Args**:\n  - `create` (`string`):  When `null`, the `create` field will be omitted from the resulting object.\n  - `delete` (`string`):  When `null`, the `delete` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `timeouts` sub block.\n', args=[]),
    new(
      create=null,
      delete=null
    ):: std.prune(a={
      create: create,
      delete: delete,
    }),
  },
  '#withBucketName':: d.fn(help='`google.string.withBucketName` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the bucket_name field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `bucket_name` field.\n', args=[]),
  withBucketName(resourceLabel, value): {
    resource+: {
      google_project_usage_export_bucket+: {
        [resourceLabel]+: {
          bucket_name: value,
        },
      },
    },
  },
  '#withPrefix':: d.fn(help='`google.string.withPrefix` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the prefix field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `prefix` field.\n', args=[]),
  withPrefix(resourceLabel, value): {
    resource+: {
      google_project_usage_export_bucket+: {
        [resourceLabel]+: {
          prefix: value,
        },
      },
    },
  },
  '#withProject':: d.fn(help='`google.string.withProject` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the project field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `project` field.\n', args=[]),
  withProject(resourceLabel, value): {
    resource+: {
      google_project_usage_export_bucket+: {
        [resourceLabel]+: {
          project: value,
        },
      },
    },
  },
  '#withTimeouts':: d.fn(help='`google.obj.withTimeouts` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will replace the map with the passed in `value`. If you wish to instead merge the\npassed in value to the existing map, use the [google.obj.withTimeoutsMixin](TODO) function.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeouts(resourceLabel, value): {
    resource+: {
      google_project_usage_export_bucket+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  '#withTimeoutsMixin':: d.fn(help='`google.obj.withTimeoutsMixin` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will merge the passed in value to the existing map. If you wish\nto instead replace the entire map with the passed in `value`, use the [google.obj.withTimeouts](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeoutsMixin(resourceLabel, value): {
    resource+: {
      google_project_usage_export_bucket+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
}
