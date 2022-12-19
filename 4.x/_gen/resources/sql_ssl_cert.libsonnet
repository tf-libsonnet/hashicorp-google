local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
local d = (import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet');
{
  '#':: d.pkg(name='sql_ssl_cert', url='', help='`sql_ssl_cert` represents the `google_sql_ssl_cert` Terraform resource.\n\n\n\nThis package contains functions and utilities for setting up the resource using Jsonnet code.\n'),
  '#new':: d.fn(help="\n`google.sql_ssl_cert.new` injects a new `google_sql_ssl_cert` Terraform `resource`\nblock into the root module document.\n\nAdditionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the\nresource. For example, if you added a new instance to the root using:\n\n    # arguments omitted for brevity\n    google.sql_ssl_cert.new('some_id')\n\nYou can get the reference to the `id` field of the created `google.sql_ssl_cert` using the reference:\n\n    $._ref.google_sql_ssl_cert.some_id.get('id')\n\nThis is the same as directly entering `\"${ google_sql_ssl_cert.some_id.id }\"` as the value.\n\nNOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,\nor `$` to refer to the root object. Instead, make an explicit outer object using `local`.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block.\n  - `common_name` (`string`): The common name to be used in the certificate to identify the client. Constrained to [a-zA-Z.-_ ]\u0026#43;. Changing this forces a new resource to be created.\n  - `instance` (`string`): The name of the Cloud SQL instance. Changing this forces a new resource to be created.\n  - `project` (`string`): The ID of the project in which the resource belongs. If it is not provided, the provider project is used. When `null`, the `project` field will be omitted from the resulting object.\n  - `timeouts` (`obj`):  When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.sql_ssl_cert.timeouts.new](#fn-sqlsslcerttimeoutsnew) constructor.\n\n**Returns**:\n- A mixin object that injects the new resource into the root Terraform configuration.\n", args=[]),
  new(
    resourceLabel,
    common_name,
    instance,
    project=null,
    timeouts=null,
    _meta={}
  ):: tf.withResource(
    type='google_sql_ssl_cert',
    label=resourceLabel,
    attrs=self.newAttrs(
      common_name=common_name,
      instance=instance,
      project=project,
      timeouts=timeouts
    ),
    _meta=_meta
  ),
  '#newAttrs':: d.fn(help='\n`google.sql_ssl_cert.newAttrs` constructs a new object with attributes and blocks configured for the `sql_ssl_cert`\nTerraform resource.\n\nUnlike [google.sql_ssl_cert.new](#fn-sqlsslcertnew), this function will not inject the `resource`\nblock into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the\n[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.\n\nThis is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to\ninjecting into a complete block.\n\n**Args**:\n  - `common_name` (`string`): The common name to be used in the certificate to identify the client. Constrained to [a-zA-Z.-_ ]&#43;. Changing this forces a new resource to be created.\n  - `instance` (`string`): The name of the Cloud SQL instance. Changing this forces a new resource to be created.\n  - `project` (`string`): The ID of the project in which the resource belongs. If it is not provided, the provider project is used. When `null`, the `project` field will be omitted from the resulting object.\n  - `timeouts` (`obj`):  When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.sql_ssl_cert.timeouts.new](#fn-sqlsslcerttimeoutsnew) constructor.\n\n**Returns**:\n  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `sql_ssl_cert` resource into the root Terraform configuration.\n', args=[]),
  newAttrs(
    common_name,
    instance,
    project=null,
    timeouts=null
  ):: std.prune(a={
    common_name: common_name,
    instance: instance,
    project: project,
    timeouts: timeouts,
  }),
  timeouts:: {
    '#new':: d.fn(help='\n`google.sql_ssl_cert.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`\nTerraform sub block.\n\n\n\n**Args**:\n  - `create` (`string`):  When `null`, the `create` field will be omitted from the resulting object.\n  - `delete` (`string`):  When `null`, the `delete` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `timeouts` sub block.\n', args=[]),
    new(
      create=null,
      delete=null
    ):: std.prune(a={
      create: create,
      delete: delete,
    }),
  },
  '#withCommonName':: d.fn(help='`google.string.withCommonName` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the common_name field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `common_name` field.\n', args=[]),
  withCommonName(resourceLabel, value): {
    resource+: {
      google_sql_ssl_cert+: {
        [resourceLabel]+: {
          common_name: value,
        },
      },
    },
  },
  '#withInstance':: d.fn(help='`google.string.withInstance` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the instance field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `instance` field.\n', args=[]),
  withInstance(resourceLabel, value): {
    resource+: {
      google_sql_ssl_cert+: {
        [resourceLabel]+: {
          instance: value,
        },
      },
    },
  },
  '#withProject':: d.fn(help='`google.string.withProject` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the project field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `project` field.\n', args=[]),
  withProject(resourceLabel, value): {
    resource+: {
      google_sql_ssl_cert+: {
        [resourceLabel]+: {
          project: value,
        },
      },
    },
  },
  '#withTimeouts':: d.fn(help='`google.obj.withTimeouts` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will replace the map with the passed in `value`. If you wish to instead merge the\npassed in value to the existing map, use the [google.obj.withTimeoutsMixin](TODO) function.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeouts(resourceLabel, value): {
    resource+: {
      google_sql_ssl_cert+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  '#withTimeoutsMixin':: d.fn(help='`google.obj.withTimeoutsMixin` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will merge the passed in value to the existing map. If you wish\nto instead replace the entire map with the passed in `value`, use the [google.obj.withTimeouts](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeoutsMixin(resourceLabel, value): {
    resource+: {
      google_sql_ssl_cert+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
}
