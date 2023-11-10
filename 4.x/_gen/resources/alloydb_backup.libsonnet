local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
local d = (import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet');
{
  '#':: d.pkg(name='alloydb_backup', url='', help='`alloydb_backup` represents the `google_alloydb_backup` Terraform resource.\n\n\n\nThis package contains functions and utilities for setting up the resource using Jsonnet code.\n'),
  encryption_config:: {
    '#new':: d.fn(help='\n`google.alloydb_backup.encryption_config.new` constructs a new object with attributes and blocks configured for the `encryption_config`\nTerraform sub block.\n\n\n\n**Args**:\n  - `kms_key_name` (`string`): The fully-qualified resource name of the KMS key. Each Cloud KMS key is regionalized and has the following format: projects/[PROJECT]/locations/[REGION]/keyRings/[RING]/cryptoKeys/[KEY_NAME]. When `null`, the `kms_key_name` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `encryption_config` sub block.\n', args=[]),
    new(
      kms_key_name=null
    ):: std.prune(a={
      kms_key_name: kms_key_name,
    }),
  },
  '#new':: d.fn(help="\n`google.alloydb_backup.new` injects a new `google_alloydb_backup` Terraform `resource`\nblock into the root module document.\n\nAdditionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the\nresource. For example, if you added a new instance to the root using:\n\n    # arguments omitted for brevity\n    google.alloydb_backup.new('some_id')\n\nYou can get the reference to the `id` field of the created `google.alloydb_backup` using the reference:\n\n    $._ref.google_alloydb_backup.some_id.get('id')\n\nThis is the same as directly entering `\"${ google_alloydb_backup.some_id.id }\"` as the value.\n\nNOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,\nor `$` to refer to the root object. Instead, make an explicit outer object using `local`.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block.\n  - `annotations` (`obj`): Annotations to allow client tools to store small amount of arbitrary data. This is distinct from labels. https://google.aip.dev/128\nAn object containing a list of \u0026#34;key\u0026#34;: value pairs. Example: { \u0026#34;name\u0026#34;: \u0026#34;wrench\u0026#34;, \u0026#34;mass\u0026#34;: \u0026#34;1.3kg\u0026#34;, \u0026#34;count\u0026#34;: \u0026#34;3\u0026#34; }.\n\n\n**Note**: This field is non-authoritative, and will only manage the annotations present in your configuration.\nPlease refer to the field \u0026#39;effective_annotations\u0026#39; for all of the annotations present on the resource. When `null`, the `annotations` field will be omitted from the resulting object.\n  - `backup_id` (`string`): The ID of the alloydb backup.\n  - `cluster_name` (`string`): The full resource name of the backup source cluster (e.g., projects/{project}/locations/{location}/clusters/{clusterId}).\n  - `description` (`string`): User-provided description of the backup. When `null`, the `description` field will be omitted from the resulting object.\n  - `display_name` (`string`): User-settable and human-readable display name for the Backup. When `null`, the `display_name` field will be omitted from the resulting object.\n  - `labels` (`obj`): User-defined labels for the alloydb backup. An object containing a list of \u0026#34;key\u0026#34;: value pairs. Example: { \u0026#34;name\u0026#34;: \u0026#34;wrench\u0026#34;, \u0026#34;mass\u0026#34;: \u0026#34;1.3kg\u0026#34;, \u0026#34;count\u0026#34;: \u0026#34;3\u0026#34; }.\n\n\n**Note**: This field is non-authoritative, and will only manage the labels present in your configuration.\nPlease refer to the field \u0026#39;effective_labels\u0026#39; for all of the labels present on the resource. When `null`, the `labels` field will be omitted from the resulting object.\n  - `location` (`string`): The location where the alloydb backup should reside.\n  - `project` (`string`): Set the `project` field on the resulting resource block. When `null`, the `project` field will be omitted from the resulting object.\n  - `type` (`string`): The backup type, which suggests the trigger for the backup. Possible values: [\u0026#34;TYPE_UNSPECIFIED\u0026#34;, \u0026#34;ON_DEMAND\u0026#34;, \u0026#34;AUTOMATED\u0026#34;, \u0026#34;CONTINUOUS\u0026#34;] When `null`, the `type` field will be omitted from the resulting object.\n  - `encryption_config` (`list[obj]`): EncryptionConfig describes the encryption config of a cluster or a backup that is encrypted with a CMEK (customer-managed encryption key). When `null`, the `encryption_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.alloydb_backup.encryption_config.new](#fn-encryption_confignew) constructor.\n  - `timeouts` (`obj`): Set the `timeouts` field on the resulting resource block. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.alloydb_backup.timeouts.new](#fn-timeoutsnew) constructor.\n\n**Returns**:\n- A mixin object that injects the new resource into the root Terraform configuration.\n", args=[]),
  new(
    resourceLabel,
    backup_id,
    cluster_name,
    location,
    annotations=null,
    description=null,
    display_name=null,
    encryption_config=null,
    labels=null,
    project=null,
    timeouts=null,
    type=null,
    _meta={}
  ):: tf.withResource(
    type='google_alloydb_backup',
    label=resourceLabel,
    attrs=self.newAttrs(
      annotations=annotations,
      backup_id=backup_id,
      cluster_name=cluster_name,
      description=description,
      display_name=display_name,
      encryption_config=encryption_config,
      labels=labels,
      location=location,
      project=project,
      timeouts=timeouts,
      type=type
    ),
    _meta=_meta
  ),
  '#newAttrs':: d.fn(help='\n`google.alloydb_backup.newAttrs` constructs a new object with attributes and blocks configured for the `alloydb_backup`\nTerraform resource.\n\nUnlike [google.alloydb_backup.new](#fn-new), this function will not inject the `resource`\nblock into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the\n[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.\n\nThis is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to\ninjecting into a complete block.\n\n**Args**:\n  - `annotations` (`obj`): Annotations to allow client tools to store small amount of arbitrary data. This is distinct from labels. https://google.aip.dev/128\nAn object containing a list of &#34;key&#34;: value pairs. Example: { &#34;name&#34;: &#34;wrench&#34;, &#34;mass&#34;: &#34;1.3kg&#34;, &#34;count&#34;: &#34;3&#34; }.\n\n\n**Note**: This field is non-authoritative, and will only manage the annotations present in your configuration.\nPlease refer to the field &#39;effective_annotations&#39; for all of the annotations present on the resource. When `null`, the `annotations` field will be omitted from the resulting object.\n  - `backup_id` (`string`): The ID of the alloydb backup.\n  - `cluster_name` (`string`): The full resource name of the backup source cluster (e.g., projects/{project}/locations/{location}/clusters/{clusterId}).\n  - `description` (`string`): User-provided description of the backup. When `null`, the `description` field will be omitted from the resulting object.\n  - `display_name` (`string`): User-settable and human-readable display name for the Backup. When `null`, the `display_name` field will be omitted from the resulting object.\n  - `labels` (`obj`): User-defined labels for the alloydb backup. An object containing a list of &#34;key&#34;: value pairs. Example: { &#34;name&#34;: &#34;wrench&#34;, &#34;mass&#34;: &#34;1.3kg&#34;, &#34;count&#34;: &#34;3&#34; }.\n\n\n**Note**: This field is non-authoritative, and will only manage the labels present in your configuration.\nPlease refer to the field &#39;effective_labels&#39; for all of the labels present on the resource. When `null`, the `labels` field will be omitted from the resulting object.\n  - `location` (`string`): The location where the alloydb backup should reside.\n  - `project` (`string`): Set the `project` field on the resulting object. When `null`, the `project` field will be omitted from the resulting object.\n  - `type` (`string`): The backup type, which suggests the trigger for the backup. Possible values: [&#34;TYPE_UNSPECIFIED&#34;, &#34;ON_DEMAND&#34;, &#34;AUTOMATED&#34;, &#34;CONTINUOUS&#34;] When `null`, the `type` field will be omitted from the resulting object.\n  - `encryption_config` (`list[obj]`): EncryptionConfig describes the encryption config of a cluster or a backup that is encrypted with a CMEK (customer-managed encryption key). When `null`, the `encryption_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.alloydb_backup.encryption_config.new](#fn-encryption_confignew) constructor.\n  - `timeouts` (`obj`): Set the `timeouts` field on the resulting object. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.alloydb_backup.timeouts.new](#fn-timeoutsnew) constructor.\n\n**Returns**:\n  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `alloydb_backup` resource into the root Terraform configuration.\n', args=[]),
  newAttrs(
    backup_id,
    cluster_name,
    location,
    annotations=null,
    description=null,
    display_name=null,
    encryption_config=null,
    labels=null,
    project=null,
    timeouts=null,
    type=null
  ):: std.prune(a={
    annotations: annotations,
    backup_id: backup_id,
    cluster_name: cluster_name,
    description: description,
    display_name: display_name,
    encryption_config: encryption_config,
    labels: labels,
    location: location,
    project: project,
    timeouts: timeouts,
    type: type,
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
  '#withAnnotations':: d.fn(help='`google.obj.withAnnotations` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the annotations field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `annotations` field.\n', args=[]),
  withAnnotations(resourceLabel, value): {
    resource+: {
      google_alloydb_backup+: {
        [resourceLabel]+: {
          annotations: value,
        },
      },
    },
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
  '#withDisplayName':: d.fn(help='`google.string.withDisplayName` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the display_name field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `display_name` field.\n', args=[]),
  withDisplayName(resourceLabel, value): {
    resource+: {
      google_alloydb_backup+: {
        [resourceLabel]+: {
          display_name: value,
        },
      },
    },
  },
  '#withEncryptionConfig':: d.fn(help='`google.list[obj].withEncryptionConfig` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the encryption_config field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [google.list[obj].withEncryptionConfigMixin](TODO) function.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `encryption_config` field.\n', args=[]),
  withEncryptionConfig(resourceLabel, value): {
    resource+: {
      google_alloydb_backup+: {
        [resourceLabel]+: {
          encryption_config: value,
        },
      },
    },
  },
  '#withEncryptionConfigMixin':: d.fn(help='`google.list[obj].withEncryptionConfigMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the encryption_config field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google.list[obj].withEncryptionConfig](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `encryption_config` field.\n', args=[]),
  withEncryptionConfigMixin(resourceLabel, value): {
    resource+: {
      google_alloydb_backup+: {
        [resourceLabel]+: {
          encryption_config+: if std.isArray(v=value) then value else [value],
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
  '#withType':: d.fn(help='`google.string.withType` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the type field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `type` field.\n', args=[]),
  withType(resourceLabel, value): {
    resource+: {
      google_alloydb_backup+: {
        [resourceLabel]+: {
          type: value,
        },
      },
    },
  },
}
