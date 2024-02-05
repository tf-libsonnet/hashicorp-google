local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
local d = (import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet');
{
  '#':: d.pkg(name='logging_folder_settings', url='', help='`logging_folder_settings` represents the `google_logging_folder_settings` Terraform resource.\n\n\n\nThis package contains functions and utilities for setting up the resource using Jsonnet code.\n'),
  '#new':: d.fn(help="\n`google.logging_folder_settings.new` injects a new `google_logging_folder_settings` Terraform `resource`\nblock into the root module document.\n\nAdditionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the\nresource. For example, if you added a new instance to the root using:\n\n    # arguments omitted for brevity\n    google.logging_folder_settings.new('some_id')\n\nYou can get the reference to the `id` field of the created `google.logging_folder_settings` using the reference:\n\n    $._ref.google_logging_folder_settings.some_id.get('id')\n\nThis is the same as directly entering `\"${ google_logging_folder_settings.some_id.id }\"` as the value.\n\nNOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,\nor `$` to refer to the root object. Instead, make an explicit outer object using `local`.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block.\n  - `disable_default_sink` (`bool`): If set to true, the _Default sink in newly created projects and folders will created in a disabled state. This can be used to automatically disable log storage if there is already an aggregated sink configured in the hierarchy. The _Default sink can be re-enabled manually if needed. When `null`, the `disable_default_sink` field will be omitted from the resulting object.\n  - `folder` (`string`): The folder for which to retrieve settings.\n  - `kms_key_name` (`string`): The resource name for the configured Cloud KMS key. When `null`, the `kms_key_name` field will be omitted from the resulting object.\n  - `storage_location` (`string`): The storage location that Cloud Logging will use to create new resources when a location is needed but not explicitly provided. When `null`, the `storage_location` field will be omitted from the resulting object.\n  - `timeouts` (`obj`): Set the `timeouts` field on the resulting resource block. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.logging_folder_settings.timeouts.new](#fn-timeoutsnew) constructor.\n\n**Returns**:\n- A mixin object that injects the new resource into the root Terraform configuration.\n", args=[]),
  new(
    resourceLabel,
    folder,
    disable_default_sink=null,
    kms_key_name=null,
    storage_location=null,
    timeouts=null,
    _meta={}
  ):: tf.withResource(
    type='google_logging_folder_settings',
    label=resourceLabel,
    attrs=self.newAttrs(
      disable_default_sink=disable_default_sink,
      folder=folder,
      kms_key_name=kms_key_name,
      storage_location=storage_location,
      timeouts=timeouts
    ),
    _meta=_meta
  ),
  '#newAttrs':: d.fn(help='\n`google.logging_folder_settings.newAttrs` constructs a new object with attributes and blocks configured for the `logging_folder_settings`\nTerraform resource.\n\nUnlike [google.logging_folder_settings.new](#fn-new), this function will not inject the `resource`\nblock into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the\n[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.\n\nThis is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to\ninjecting into a complete block.\n\n**Args**:\n  - `disable_default_sink` (`bool`): If set to true, the _Default sink in newly created projects and folders will created in a disabled state. This can be used to automatically disable log storage if there is already an aggregated sink configured in the hierarchy. The _Default sink can be re-enabled manually if needed. When `null`, the `disable_default_sink` field will be omitted from the resulting object.\n  - `folder` (`string`): The folder for which to retrieve settings.\n  - `kms_key_name` (`string`): The resource name for the configured Cloud KMS key. When `null`, the `kms_key_name` field will be omitted from the resulting object.\n  - `storage_location` (`string`): The storage location that Cloud Logging will use to create new resources when a location is needed but not explicitly provided. When `null`, the `storage_location` field will be omitted from the resulting object.\n  - `timeouts` (`obj`): Set the `timeouts` field on the resulting object. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.logging_folder_settings.timeouts.new](#fn-timeoutsnew) constructor.\n\n**Returns**:\n  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `logging_folder_settings` resource into the root Terraform configuration.\n', args=[]),
  newAttrs(
    folder,
    disable_default_sink=null,
    kms_key_name=null,
    storage_location=null,
    timeouts=null
  ):: std.prune(a={
    disable_default_sink: disable_default_sink,
    folder: folder,
    kms_key_name: kms_key_name,
    storage_location: storage_location,
    timeouts: timeouts,
  }),
  timeouts:: {
    '#new':: d.fn(help='\n`google.logging_folder_settings.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`\nTerraform sub block.\n\n\n\n**Args**:\n  - `create` (`string`): Set the `create` field on the resulting object. When `null`, the `create` field will be omitted from the resulting object.\n  - `delete` (`string`): Set the `delete` field on the resulting object. When `null`, the `delete` field will be omitted from the resulting object.\n  - `update` (`string`): Set the `update` field on the resulting object. When `null`, the `update` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `timeouts` sub block.\n', args=[]),
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
  '#withDisableDefaultSink':: d.fn(help='`google.bool.withDisableDefaultSink` constructs a mixin object that can be merged into the `bool`\nTerraform resource block to set or update the disable_default_sink field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`bool`): The value to set for the `disable_default_sink` field.\n', args=[]),
  withDisableDefaultSink(resourceLabel, value): {
    resource+: {
      google_logging_folder_settings+: {
        [resourceLabel]+: {
          disable_default_sink: value,
        },
      },
    },
  },
  '#withFolder':: d.fn(help='`google.string.withFolder` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the folder field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `folder` field.\n', args=[]),
  withFolder(resourceLabel, value): {
    resource+: {
      google_logging_folder_settings+: {
        [resourceLabel]+: {
          folder: value,
        },
      },
    },
  },
  '#withKmsKeyName':: d.fn(help='`google.string.withKmsKeyName` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the kms_key_name field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `kms_key_name` field.\n', args=[]),
  withKmsKeyName(resourceLabel, value): {
    resource+: {
      google_logging_folder_settings+: {
        [resourceLabel]+: {
          kms_key_name: value,
        },
      },
    },
  },
  '#withStorageLocation':: d.fn(help='`google.string.withStorageLocation` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the storage_location field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `storage_location` field.\n', args=[]),
  withStorageLocation(resourceLabel, value): {
    resource+: {
      google_logging_folder_settings+: {
        [resourceLabel]+: {
          storage_location: value,
        },
      },
    },
  },
  '#withTimeouts':: d.fn(help='`google.obj.withTimeouts` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will replace the map with the passed in `value`. If you wish to instead merge the\npassed in value to the existing map, use the [google.obj.withTimeoutsMixin](TODO) function.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeouts(resourceLabel, value): {
    resource+: {
      google_logging_folder_settings+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  '#withTimeoutsMixin':: d.fn(help='`google.obj.withTimeoutsMixin` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will merge the passed in value to the existing map. If you wish\nto instead replace the entire map with the passed in `value`, use the [google.obj.withTimeouts](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeoutsMixin(resourceLabel, value): {
    resource+: {
      google_logging_folder_settings+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
}
