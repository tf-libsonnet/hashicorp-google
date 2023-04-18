local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
local d = (import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet');
{
  '#':: d.pkg(name='logging_linked_dataset', url='', help='`logging_linked_dataset` represents the `google_logging_linked_dataset` Terraform resource.\n\n\n\nThis package contains functions and utilities for setting up the resource using Jsonnet code.\n'),
  bigquery_dataset:: {
    '#new':: d.fn(help='\n`google.logging_linked_dataset.bigquery_dataset.new` constructs a new object with attributes and blocks configured for the `bigquery_dataset`\nTerraform sub block.\n\n\n\n**Returns**:\n  - An attribute object that represents the `bigquery_dataset` sub block.\n', args=[]),
    new(

    ):: std.prune(a={}),
  },
  '#new':: d.fn(help="\n`google.logging_linked_dataset.new` injects a new `google_logging_linked_dataset` Terraform `resource`\nblock into the root module document.\n\nAdditionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the\nresource. For example, if you added a new instance to the root using:\n\n    # arguments omitted for brevity\n    google.logging_linked_dataset.new('some_id')\n\nYou can get the reference to the `id` field of the created `google.logging_linked_dataset` using the reference:\n\n    $._ref.google_logging_linked_dataset.some_id.get('id')\n\nThis is the same as directly entering `\"${ google_logging_linked_dataset.some_id.id }\"` as the value.\n\nNOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,\nor `$` to refer to the root object. Instead, make an explicit outer object using `local`.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block.\n  - `bucket` (`string`): The bucket to which the linked dataset is attached.\n  - `description` (`string`): Describes this link. The maximum length of the description is 8000 characters. When `null`, the `description` field will be omitted from the resulting object.\n  - `link_id` (`string`): The id of the linked dataset.\n  - `location` (`string`): The location of the linked dataset. When `null`, the `location` field will be omitted from the resulting object.\n  - `parent` (`string`): The parent of the linked dataset. When `null`, the `parent` field will be omitted from the resulting object.\n  - `bigquery_dataset` (`list[obj]`): The information of a BigQuery Dataset. When a link is created, a BigQuery dataset is created along\nwith it, in the same project as the LogBucket it\u0026#39;s linked to. This dataset will also have BigQuery\nViews corresponding to the LogViews in the bucket. When `null`, the `bigquery_dataset` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.logging_linked_dataset.bigquery_dataset.new](#fn-bigquery_datasetnew) constructor.\n  - `timeouts` (`obj`): Set the `timeouts` field on the resulting resource block. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.logging_linked_dataset.timeouts.new](#fn-timeoutsnew) constructor.\n\n**Returns**:\n- A mixin object that injects the new resource into the root Terraform configuration.\n", args=[]),
  new(
    resourceLabel,
    bucket,
    link_id,
    bigquery_dataset=null,
    description=null,
    location=null,
    parent=null,
    timeouts=null,
    _meta={}
  ):: tf.withResource(
    type='google_logging_linked_dataset',
    label=resourceLabel,
    attrs=self.newAttrs(
      bigquery_dataset=bigquery_dataset,
      bucket=bucket,
      description=description,
      link_id=link_id,
      location=location,
      parent=parent,
      timeouts=timeouts
    ),
    _meta=_meta
  ),
  '#newAttrs':: d.fn(help='\n`google.logging_linked_dataset.newAttrs` constructs a new object with attributes and blocks configured for the `logging_linked_dataset`\nTerraform resource.\n\nUnlike [google.logging_linked_dataset.new](#fn-new), this function will not inject the `resource`\nblock into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the\n[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.\n\nThis is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to\ninjecting into a complete block.\n\n**Args**:\n  - `bucket` (`string`): The bucket to which the linked dataset is attached.\n  - `description` (`string`): Describes this link. The maximum length of the description is 8000 characters. When `null`, the `description` field will be omitted from the resulting object.\n  - `link_id` (`string`): The id of the linked dataset.\n  - `location` (`string`): The location of the linked dataset. When `null`, the `location` field will be omitted from the resulting object.\n  - `parent` (`string`): The parent of the linked dataset. When `null`, the `parent` field will be omitted from the resulting object.\n  - `bigquery_dataset` (`list[obj]`): The information of a BigQuery Dataset. When a link is created, a BigQuery dataset is created along\nwith it, in the same project as the LogBucket it&#39;s linked to. This dataset will also have BigQuery\nViews corresponding to the LogViews in the bucket. When `null`, the `bigquery_dataset` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.logging_linked_dataset.bigquery_dataset.new](#fn-bigquery_datasetnew) constructor.\n  - `timeouts` (`obj`): Set the `timeouts` field on the resulting object. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.logging_linked_dataset.timeouts.new](#fn-timeoutsnew) constructor.\n\n**Returns**:\n  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `logging_linked_dataset` resource into the root Terraform configuration.\n', args=[]),
  newAttrs(
    bucket,
    link_id,
    bigquery_dataset=null,
    description=null,
    location=null,
    parent=null,
    timeouts=null
  ):: std.prune(a={
    bigquery_dataset: bigquery_dataset,
    bucket: bucket,
    description: description,
    link_id: link_id,
    location: location,
    parent: parent,
    timeouts: timeouts,
  }),
  timeouts:: {
    '#new':: d.fn(help='\n`google.logging_linked_dataset.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`\nTerraform sub block.\n\n\n\n**Args**:\n  - `create` (`string`): Set the `create` field on the resulting object. When `null`, the `create` field will be omitted from the resulting object.\n  - `delete` (`string`): Set the `delete` field on the resulting object. When `null`, the `delete` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `timeouts` sub block.\n', args=[]),
    new(
      create=null,
      delete=null
    ):: std.prune(a={
      create: create,
      delete: delete,
    }),
  },
  '#withBigqueryDataset':: d.fn(help='`google.list[obj].withBigqueryDataset` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the bigquery_dataset field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [google.list[obj].withBigqueryDatasetMixin](TODO) function.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `bigquery_dataset` field.\n', args=[]),
  withBigqueryDataset(resourceLabel, value): {
    resource+: {
      google_logging_linked_dataset+: {
        [resourceLabel]+: {
          bigquery_dataset: value,
        },
      },
    },
  },
  '#withBigqueryDatasetMixin':: d.fn(help='`google.list[obj].withBigqueryDatasetMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the bigquery_dataset field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google.list[obj].withBigqueryDataset](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `bigquery_dataset` field.\n', args=[]),
  withBigqueryDatasetMixin(resourceLabel, value): {
    resource+: {
      google_logging_linked_dataset+: {
        [resourceLabel]+: {
          bigquery_dataset+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withBucket':: d.fn(help='`google.string.withBucket` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the bucket field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `bucket` field.\n', args=[]),
  withBucket(resourceLabel, value): {
    resource+: {
      google_logging_linked_dataset+: {
        [resourceLabel]+: {
          bucket: value,
        },
      },
    },
  },
  '#withDescription':: d.fn(help='`google.string.withDescription` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the description field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `description` field.\n', args=[]),
  withDescription(resourceLabel, value): {
    resource+: {
      google_logging_linked_dataset+: {
        [resourceLabel]+: {
          description: value,
        },
      },
    },
  },
  '#withLinkId':: d.fn(help='`google.string.withLinkId` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the link_id field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `link_id` field.\n', args=[]),
  withLinkId(resourceLabel, value): {
    resource+: {
      google_logging_linked_dataset+: {
        [resourceLabel]+: {
          link_id: value,
        },
      },
    },
  },
  '#withLocation':: d.fn(help='`google.string.withLocation` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the location field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `location` field.\n', args=[]),
  withLocation(resourceLabel, value): {
    resource+: {
      google_logging_linked_dataset+: {
        [resourceLabel]+: {
          location: value,
        },
      },
    },
  },
  '#withParent':: d.fn(help='`google.string.withParent` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the parent field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `parent` field.\n', args=[]),
  withParent(resourceLabel, value): {
    resource+: {
      google_logging_linked_dataset+: {
        [resourceLabel]+: {
          parent: value,
        },
      },
    },
  },
  '#withTimeouts':: d.fn(help='`google.obj.withTimeouts` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will replace the map with the passed in `value`. If you wish to instead merge the\npassed in value to the existing map, use the [google.obj.withTimeoutsMixin](TODO) function.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeouts(resourceLabel, value): {
    resource+: {
      google_logging_linked_dataset+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  '#withTimeoutsMixin':: d.fn(help='`google.obj.withTimeoutsMixin` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will merge the passed in value to the existing map. If you wish\nto instead replace the entire map with the passed in `value`, use the [google.obj.withTimeouts](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeoutsMixin(resourceLabel, value): {
    resource+: {
      google_logging_linked_dataset+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
}
