local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
local d = (import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet');
{
  '#':: d.pkg(name='bigtable_gc_policy', url='', help='`bigtable_gc_policy` represents the `google_bigtable_gc_policy` Terraform resource.\n\n\n\nThis package contains functions and utilities for setting up the resource using Jsonnet code.\n'),
  max_age:: {
    '#new':: d.fn(help='\n`google.bigtable_gc_policy.max_age.new` constructs a new object with attributes and blocks configured for the `max_age`\nTerraform sub block.\n\n\n\n**Args**:\n  - `days` (`number`): Number of days before applying GC policy. When `null`, the `days` field will be omitted from the resulting object.\n  - `duration` (`string`): Duration before applying GC policy When `null`, the `duration` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `max_age` sub block.\n', args=[]),
    new(
      days=null,
      duration=null
    ):: std.prune(a={
      days: days,
      duration: duration,
    }),
  },
  max_version:: {
    '#new':: d.fn(help='\n`google.bigtable_gc_policy.max_version.new` constructs a new object with attributes and blocks configured for the `max_version`\nTerraform sub block.\n\n\n\n**Args**:\n  - `number` (`number`): Number of version before applying the GC policy.\n\n**Returns**:\n  - An attribute object that represents the `max_version` sub block.\n', args=[]),
    new(
      number
    ):: std.prune(a={
      number: number,
    }),
  },
  '#new':: d.fn(help="\n`google.bigtable_gc_policy.new` injects a new `google_bigtable_gc_policy` Terraform `resource`\nblock into the root module document.\n\nAdditionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the\nresource. For example, if you added a new instance to the root using:\n\n    # arguments omitted for brevity\n    google.bigtable_gc_policy.new('some_id')\n\nYou can get the reference to the `id` field of the created `google.bigtable_gc_policy` using the reference:\n\n    $._ref.google_bigtable_gc_policy.some_id.get('id')\n\nThis is the same as directly entering `\"${ google_bigtable_gc_policy.some_id.id }\"` as the value.\n\nNOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,\nor `$` to refer to the root object. Instead, make an explicit outer object using `local`.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block.\n  - `column_family` (`string`): The name of the column family.\n  - `deletion_policy` (`string`): The deletion policy for the GC policy. Setting ABANDON allows the resource\n\t\t\t\tto be abandoned rather than deleted. This is useful for GC policy as it cannot be deleted\n\t\t\t\tin a replicated instance. Possible values are: \u0026#34;ABANDON\u0026#34;. When `null`, the `deletion_policy` field will be omitted from the resulting object.\n  - `gc_rules` (`string`): Serialized JSON string for garbage collection policy. Conflicts with \u0026#34;mode\u0026#34;, \u0026#34;max_age\u0026#34; and \u0026#34;max_version\u0026#34;. When `null`, the `gc_rules` field will be omitted from the resulting object.\n  - `instance_name` (`string`): The name of the Bigtable instance.\n  - `mode` (`string`): NOTE: \u0026#39;gc_rules\u0026#39; is more flexible, and should be preferred over this field for new resources. This field may be deprecated in the future. If multiple policies are set, you should choose between UNION OR INTERSECTION. When `null`, the `mode` field will be omitted from the resulting object.\n  - `project` (`string`): The ID of the project in which the resource belongs. If it is not provided, the provider project is used. When `null`, the `project` field will be omitted from the resulting object.\n  - `table` (`string`): The name of the table.\n  - `max_age` (`list[obj]`): NOTE: \u0026#39;gc_rules\u0026#39; is more flexible, and should be preferred over this field for new resources. This field may be deprecated in the future. GC policy that applies to all cells older than the given age. When `null`, the `max_age` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.bigtable_gc_policy.max_age.new](#fn-max_agenew) constructor.\n  - `max_version` (`list[obj]`): NOTE: \u0026#39;gc_rules\u0026#39; is more flexible, and should be preferred over this field for new resources. This field may be deprecated in the future. GC policy that applies to all versions of a cell except for the most recent. When `null`, the `max_version` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.bigtable_gc_policy.max_version.new](#fn-max_versionnew) constructor.\n  - `timeouts` (`obj`): Set the `timeouts` field on the resulting resource block. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.bigtable_gc_policy.timeouts.new](#fn-timeoutsnew) constructor.\n\n**Returns**:\n- A mixin object that injects the new resource into the root Terraform configuration.\n", args=[]),
  new(
    resourceLabel,
    column_family,
    instance_name,
    table,
    deletion_policy=null,
    gc_rules=null,
    max_age=null,
    max_version=null,
    mode=null,
    project=null,
    timeouts=null,
    _meta={}
  ):: tf.withResource(
    type='google_bigtable_gc_policy',
    label=resourceLabel,
    attrs=self.newAttrs(
      column_family=column_family,
      deletion_policy=deletion_policy,
      gc_rules=gc_rules,
      instance_name=instance_name,
      max_age=max_age,
      max_version=max_version,
      mode=mode,
      project=project,
      table=table,
      timeouts=timeouts
    ),
    _meta=_meta
  ),
  '#newAttrs':: d.fn(help='\n`google.bigtable_gc_policy.newAttrs` constructs a new object with attributes and blocks configured for the `bigtable_gc_policy`\nTerraform resource.\n\nUnlike [google.bigtable_gc_policy.new](#fn-new), this function will not inject the `resource`\nblock into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the\n[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.\n\nThis is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to\ninjecting into a complete block.\n\n**Args**:\n  - `column_family` (`string`): The name of the column family.\n  - `deletion_policy` (`string`): The deletion policy for the GC policy. Setting ABANDON allows the resource\n\t\t\t\tto be abandoned rather than deleted. This is useful for GC policy as it cannot be deleted\n\t\t\t\tin a replicated instance. Possible values are: &#34;ABANDON&#34;. When `null`, the `deletion_policy` field will be omitted from the resulting object.\n  - `gc_rules` (`string`): Serialized JSON string for garbage collection policy. Conflicts with &#34;mode&#34;, &#34;max_age&#34; and &#34;max_version&#34;. When `null`, the `gc_rules` field will be omitted from the resulting object.\n  - `instance_name` (`string`): The name of the Bigtable instance.\n  - `mode` (`string`): NOTE: &#39;gc_rules&#39; is more flexible, and should be preferred over this field for new resources. This field may be deprecated in the future. If multiple policies are set, you should choose between UNION OR INTERSECTION. When `null`, the `mode` field will be omitted from the resulting object.\n  - `project` (`string`): The ID of the project in which the resource belongs. If it is not provided, the provider project is used. When `null`, the `project` field will be omitted from the resulting object.\n  - `table` (`string`): The name of the table.\n  - `max_age` (`list[obj]`): NOTE: &#39;gc_rules&#39; is more flexible, and should be preferred over this field for new resources. This field may be deprecated in the future. GC policy that applies to all cells older than the given age. When `null`, the `max_age` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.bigtable_gc_policy.max_age.new](#fn-max_agenew) constructor.\n  - `max_version` (`list[obj]`): NOTE: &#39;gc_rules&#39; is more flexible, and should be preferred over this field for new resources. This field may be deprecated in the future. GC policy that applies to all versions of a cell except for the most recent. When `null`, the `max_version` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.bigtable_gc_policy.max_version.new](#fn-max_versionnew) constructor.\n  - `timeouts` (`obj`): Set the `timeouts` field on the resulting object. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.bigtable_gc_policy.timeouts.new](#fn-timeoutsnew) constructor.\n\n**Returns**:\n  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `bigtable_gc_policy` resource into the root Terraform configuration.\n', args=[]),
  newAttrs(
    column_family,
    instance_name,
    table,
    deletion_policy=null,
    gc_rules=null,
    max_age=null,
    max_version=null,
    mode=null,
    project=null,
    timeouts=null
  ):: std.prune(a={
    column_family: column_family,
    deletion_policy: deletion_policy,
    gc_rules: gc_rules,
    instance_name: instance_name,
    max_age: max_age,
    max_version: max_version,
    mode: mode,
    project: project,
    table: table,
    timeouts: timeouts,
  }),
  timeouts:: {
    '#new':: d.fn(help='\n`google.bigtable_gc_policy.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`\nTerraform sub block.\n\n\n\n**Args**:\n  - `create` (`string`): Set the `create` field on the resulting object. When `null`, the `create` field will be omitted from the resulting object.\n  - `delete` (`string`): Set the `delete` field on the resulting object. When `null`, the `delete` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `timeouts` sub block.\n', args=[]),
    new(
      create=null,
      delete=null
    ):: std.prune(a={
      create: create,
      delete: delete,
    }),
  },
  '#withColumnFamily':: d.fn(help='`google.string.withColumnFamily` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the column_family field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `column_family` field.\n', args=[]),
  withColumnFamily(resourceLabel, value): {
    resource+: {
      google_bigtable_gc_policy+: {
        [resourceLabel]+: {
          column_family: value,
        },
      },
    },
  },
  '#withDeletionPolicy':: d.fn(help='`google.string.withDeletionPolicy` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the deletion_policy field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `deletion_policy` field.\n', args=[]),
  withDeletionPolicy(resourceLabel, value): {
    resource+: {
      google_bigtable_gc_policy+: {
        [resourceLabel]+: {
          deletion_policy: value,
        },
      },
    },
  },
  '#withGcRules':: d.fn(help='`google.string.withGcRules` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the gc_rules field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `gc_rules` field.\n', args=[]),
  withGcRules(resourceLabel, value): {
    resource+: {
      google_bigtable_gc_policy+: {
        [resourceLabel]+: {
          gc_rules: value,
        },
      },
    },
  },
  '#withInstanceName':: d.fn(help='`google.string.withInstanceName` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the instance_name field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `instance_name` field.\n', args=[]),
  withInstanceName(resourceLabel, value): {
    resource+: {
      google_bigtable_gc_policy+: {
        [resourceLabel]+: {
          instance_name: value,
        },
      },
    },
  },
  '#withMaxAge':: d.fn(help='`google.list[obj].withMaxAge` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the max_age field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [google.list[obj].withMaxAgeMixin](TODO) function.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `max_age` field.\n', args=[]),
  withMaxAge(resourceLabel, value): {
    resource+: {
      google_bigtable_gc_policy+: {
        [resourceLabel]+: {
          max_age: value,
        },
      },
    },
  },
  '#withMaxAgeMixin':: d.fn(help='`google.list[obj].withMaxAgeMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the max_age field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google.list[obj].withMaxAge](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `max_age` field.\n', args=[]),
  withMaxAgeMixin(resourceLabel, value): {
    resource+: {
      google_bigtable_gc_policy+: {
        [resourceLabel]+: {
          max_age+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withMaxVersion':: d.fn(help='`google.list[obj].withMaxVersion` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the max_version field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [google.list[obj].withMaxVersionMixin](TODO) function.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `max_version` field.\n', args=[]),
  withMaxVersion(resourceLabel, value): {
    resource+: {
      google_bigtable_gc_policy+: {
        [resourceLabel]+: {
          max_version: value,
        },
      },
    },
  },
  '#withMaxVersionMixin':: d.fn(help='`google.list[obj].withMaxVersionMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the max_version field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google.list[obj].withMaxVersion](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `max_version` field.\n', args=[]),
  withMaxVersionMixin(resourceLabel, value): {
    resource+: {
      google_bigtable_gc_policy+: {
        [resourceLabel]+: {
          max_version+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withMode':: d.fn(help='`google.string.withMode` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the mode field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `mode` field.\n', args=[]),
  withMode(resourceLabel, value): {
    resource+: {
      google_bigtable_gc_policy+: {
        [resourceLabel]+: {
          mode: value,
        },
      },
    },
  },
  '#withProject':: d.fn(help='`google.string.withProject` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the project field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `project` field.\n', args=[]),
  withProject(resourceLabel, value): {
    resource+: {
      google_bigtable_gc_policy+: {
        [resourceLabel]+: {
          project: value,
        },
      },
    },
  },
  '#withTable':: d.fn(help='`google.string.withTable` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the table field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `table` field.\n', args=[]),
  withTable(resourceLabel, value): {
    resource+: {
      google_bigtable_gc_policy+: {
        [resourceLabel]+: {
          table: value,
        },
      },
    },
  },
  '#withTimeouts':: d.fn(help='`google.obj.withTimeouts` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will replace the map with the passed in `value`. If you wish to instead merge the\npassed in value to the existing map, use the [google.obj.withTimeoutsMixin](TODO) function.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeouts(resourceLabel, value): {
    resource+: {
      google_bigtable_gc_policy+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  '#withTimeoutsMixin':: d.fn(help='`google.obj.withTimeoutsMixin` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will merge the passed in value to the existing map. If you wish\nto instead replace the entire map with the passed in `value`, use the [google.obj.withTimeouts](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeoutsMixin(resourceLabel, value): {
    resource+: {
      google_bigtable_gc_policy+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
}
