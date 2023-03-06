local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
local d = (import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet');
{
  '#':: d.pkg(name='scc_mute_config', url='', help='`scc_mute_config` represents the `google_scc_mute_config` Terraform resource.\n\n\n\nThis package contains functions and utilities for setting up the resource using Jsonnet code.\n'),
  '#new':: d.fn(help="\n`google.scc_mute_config.new` injects a new `google_scc_mute_config` Terraform `resource`\nblock into the root module document.\n\nAdditionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the\nresource. For example, if you added a new instance to the root using:\n\n    # arguments omitted for brevity\n    google.scc_mute_config.new('some_id')\n\nYou can get the reference to the `id` field of the created `google.scc_mute_config` using the reference:\n\n    $._ref.google_scc_mute_config.some_id.get('id')\n\nThis is the same as directly entering `\"${ google_scc_mute_config.some_id.id }\"` as the value.\n\nNOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,\nor `$` to refer to the root object. Instead, make an explicit outer object using `local`.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block.\n  - `description` (`string`): A description of the mute config. When `null`, the `description` field will be omitted from the resulting object.\n  - `filter` (`string`): An expression that defines the filter to apply across create/update\nevents of findings. While creating a filter string, be mindful of\nthe scope in which the mute configuration is being created. E.g.,\nIf a filter contains project = X but is created under the\nproject = Y scope, it might not match any findings.\n  - `mute_config_id` (`string`): Unique identifier provided by the client within the parent scope.\n  - `parent` (`string`): Resource name of the new mute configs\u0026#39;s parent. Its format is\n\u0026#34;organizations/[organization_id]\u0026#34;, \u0026#34;folders/[folder_id]\u0026#34;, or\n\u0026#34;projects/[project_id]\u0026#34;.\n  - `timeouts` (`obj`): Set the `timeouts` field on the resulting resource block. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.scc_mute_config.timeouts.new](#fn-timeoutsnew) constructor.\n\n**Returns**:\n- A mixin object that injects the new resource into the root Terraform configuration.\n", args=[]),
  new(
    resourceLabel,
    filter,
    mute_config_id,
    parent,
    description=null,
    timeouts=null,
    _meta={}
  ):: tf.withResource(
    type='google_scc_mute_config',
    label=resourceLabel,
    attrs=self.newAttrs(
      description=description,
      filter=filter,
      mute_config_id=mute_config_id,
      parent=parent,
      timeouts=timeouts
    ),
    _meta=_meta
  ),
  '#newAttrs':: d.fn(help='\n`google.scc_mute_config.newAttrs` constructs a new object with attributes and blocks configured for the `scc_mute_config`\nTerraform resource.\n\nUnlike [google.scc_mute_config.new](#fn-new), this function will not inject the `resource`\nblock into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the\n[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.\n\nThis is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to\ninjecting into a complete block.\n\n**Args**:\n  - `description` (`string`): A description of the mute config. When `null`, the `description` field will be omitted from the resulting object.\n  - `filter` (`string`): An expression that defines the filter to apply across create/update\nevents of findings. While creating a filter string, be mindful of\nthe scope in which the mute configuration is being created. E.g.,\nIf a filter contains project = X but is created under the\nproject = Y scope, it might not match any findings.\n  - `mute_config_id` (`string`): Unique identifier provided by the client within the parent scope.\n  - `parent` (`string`): Resource name of the new mute configs&#39;s parent. Its format is\n&#34;organizations/[organization_id]&#34;, &#34;folders/[folder_id]&#34;, or\n&#34;projects/[project_id]&#34;.\n  - `timeouts` (`obj`): Set the `timeouts` field on the resulting object. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.scc_mute_config.timeouts.new](#fn-timeoutsnew) constructor.\n\n**Returns**:\n  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `scc_mute_config` resource into the root Terraform configuration.\n', args=[]),
  newAttrs(
    filter,
    mute_config_id,
    parent,
    description=null,
    timeouts=null
  ):: std.prune(a={
    description: description,
    filter: filter,
    mute_config_id: mute_config_id,
    parent: parent,
    timeouts: timeouts,
  }),
  timeouts:: {
    '#new':: d.fn(help='\n`google.scc_mute_config.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`\nTerraform sub block.\n\n\n\n**Args**:\n  - `create` (`string`): Set the `create` field on the resulting object. When `null`, the `create` field will be omitted from the resulting object.\n  - `delete` (`string`): Set the `delete` field on the resulting object. When `null`, the `delete` field will be omitted from the resulting object.\n  - `update` (`string`): Set the `update` field on the resulting object. When `null`, the `update` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `timeouts` sub block.\n', args=[]),
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
  '#withDescription':: d.fn(help='`google.string.withDescription` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the description field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `description` field.\n', args=[]),
  withDescription(resourceLabel, value): {
    resource+: {
      google_scc_mute_config+: {
        [resourceLabel]+: {
          description: value,
        },
      },
    },
  },
  '#withFilter':: d.fn(help='`google.string.withFilter` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the filter field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `filter` field.\n', args=[]),
  withFilter(resourceLabel, value): {
    resource+: {
      google_scc_mute_config+: {
        [resourceLabel]+: {
          filter: value,
        },
      },
    },
  },
  '#withMuteConfigId':: d.fn(help='`google.string.withMuteConfigId` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the mute_config_id field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `mute_config_id` field.\n', args=[]),
  withMuteConfigId(resourceLabel, value): {
    resource+: {
      google_scc_mute_config+: {
        [resourceLabel]+: {
          mute_config_id: value,
        },
      },
    },
  },
  '#withParent':: d.fn(help='`google.string.withParent` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the parent field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `parent` field.\n', args=[]),
  withParent(resourceLabel, value): {
    resource+: {
      google_scc_mute_config+: {
        [resourceLabel]+: {
          parent: value,
        },
      },
    },
  },
  '#withTimeouts':: d.fn(help='`google.obj.withTimeouts` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will replace the map with the passed in `value`. If you wish to instead merge the\npassed in value to the existing map, use the [google.obj.withTimeoutsMixin](TODO) function.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeouts(resourceLabel, value): {
    resource+: {
      google_scc_mute_config+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  '#withTimeoutsMixin':: d.fn(help='`google.obj.withTimeoutsMixin` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will merge the passed in value to the existing map. If you wish\nto instead replace the entire map with the passed in `value`, use the [google.obj.withTimeouts](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeoutsMixin(resourceLabel, value): {
    resource+: {
      google_scc_mute_config+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
}
