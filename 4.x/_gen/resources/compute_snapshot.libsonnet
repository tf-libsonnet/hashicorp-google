local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
local d = (import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet');
{
  '#':: d.pkg(name='compute_snapshot', url='', help='`compute_snapshot` represents the `google_compute_snapshot` Terraform resource.\n\n\n\nThis package contains functions and utilities for setting up the resource using Jsonnet code.\n'),
  '#new':: d.fn(help="\n`google.compute_snapshot.new` injects a new `google_compute_snapshot` Terraform `resource`\nblock into the root module document.\n\nAdditionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the\nresource. For example, if you added a new instance to the root using:\n\n    # arguments omitted for brevity\n    google.compute_snapshot.new('some_id')\n\nYou can get the reference to the `id` field of the created `google.compute_snapshot` using the reference:\n\n    $._ref.google_compute_snapshot.some_id.get('id')\n\nThis is the same as directly entering `\"${ google_compute_snapshot.some_id.id }\"` as the value.\n\nNOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,\nor `$` to refer to the root object. Instead, make an explicit outer object using `local`.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block.\n  - `chain_name` (`string`): Creates the new snapshot in the snapshot chain labeled with the \nspecified name. The chain name must be 1-63 characters long and \ncomply with RFC1035. This is an uncommon option only for advanced \nservice owners who needs to create separate snapshot chains, for \nexample, for chargeback tracking.  When you describe your snapshot \nresource, this field is visible only if it has a non-empty value. When `null`, the `chain_name` field will be omitted from the resulting object.\n  - `description` (`string`): An optional description of this resource. When `null`, the `description` field will be omitted from the resulting object.\n  - `labels` (`obj`): Labels to apply to this Snapshot. When `null`, the `labels` field will be omitted from the resulting object.\n  - `name` (`string`): Name of the resource; provided by the client when the resource is\ncreated. The name must be 1-63 characters long, and comply with\nRFC1035. Specifically, the name must be 1-63 characters long and match\nthe regular expression \u0026#39;[a-z]([-a-z0-9]*[a-z0-9])?\u0026#39; which means the\nfirst character must be a lowercase letter, and all following\ncharacters must be a dash, lowercase letter, or digit, except the last\ncharacter, which cannot be a dash.\n  - `project` (`string`):  When `null`, the `project` field will be omitted from the resulting object.\n  - `source_disk` (`string`): A reference to the disk used to create this snapshot.\n  - `storage_locations` (`list`): Cloud Storage bucket storage location of the snapshot (regional or multi-regional). When `null`, the `storage_locations` field will be omitted from the resulting object.\n  - `zone` (`string`): A reference to the zone where the disk is hosted. When `null`, the `zone` field will be omitted from the resulting object.\n  - `snapshot_encryption_key` (`list[obj]`): The customer-supplied encryption key of the snapshot. Required if the\nsource snapshot is protected by a customer-supplied encryption key. When `null`, the `snapshot_encryption_key` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_snapshot.snapshot_encryption_key.new](#fn-computesnapshotsnapshotencryptionkeynew) constructor.\n  - `source_disk_encryption_key` (`list[obj]`): The customer-supplied encryption key of the source snapshot. Required\nif the source snapshot is protected by a customer-supplied encryption\nkey. When `null`, the `source_disk_encryption_key` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_snapshot.source_disk_encryption_key.new](#fn-computesnapshotsourcediskencryptionkeynew) constructor.\n  - `timeouts` (`obj`):  When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_snapshot.timeouts.new](#fn-computesnapshottimeoutsnew) constructor.\n\n**Returns**:\n- A mixin object that injects the new resource into the root Terraform configuration.\n", args=[]),
  new(
    resourceLabel,
    name,
    source_disk,
    chain_name=null,
    description=null,
    labels=null,
    project=null,
    snapshot_encryption_key=null,
    source_disk_encryption_key=null,
    storage_locations=null,
    timeouts=null,
    zone=null,
    _meta={}
  ):: tf.withResource(
    type='google_compute_snapshot',
    label=resourceLabel,
    attrs=self.newAttrs(
      chain_name=chain_name,
      description=description,
      labels=labels,
      name=name,
      project=project,
      snapshot_encryption_key=snapshot_encryption_key,
      source_disk=source_disk,
      source_disk_encryption_key=source_disk_encryption_key,
      storage_locations=storage_locations,
      timeouts=timeouts,
      zone=zone
    ),
    _meta=_meta
  ),
  '#newAttrs':: d.fn(help='\n`google.compute_snapshot.newAttrs` constructs a new object with attributes and blocks configured for the `compute_snapshot`\nTerraform resource.\n\nUnlike [google.compute_snapshot.new](#fn-computesnapshotnew), this function will not inject the `resource`\nblock into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the\n[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.\n\nThis is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to\ninjecting into a complete block.\n\n**Args**:\n  - `chain_name` (`string`): Creates the new snapshot in the snapshot chain labeled with the \nspecified name. The chain name must be 1-63 characters long and \ncomply with RFC1035. This is an uncommon option only for advanced \nservice owners who needs to create separate snapshot chains, for \nexample, for chargeback tracking.  When you describe your snapshot \nresource, this field is visible only if it has a non-empty value. When `null`, the `chain_name` field will be omitted from the resulting object.\n  - `description` (`string`): An optional description of this resource. When `null`, the `description` field will be omitted from the resulting object.\n  - `labels` (`obj`): Labels to apply to this Snapshot. When `null`, the `labels` field will be omitted from the resulting object.\n  - `name` (`string`): Name of the resource; provided by the client when the resource is\ncreated. The name must be 1-63 characters long, and comply with\nRFC1035. Specifically, the name must be 1-63 characters long and match\nthe regular expression &#39;[a-z]([-a-z0-9]*[a-z0-9])?&#39; which means the\nfirst character must be a lowercase letter, and all following\ncharacters must be a dash, lowercase letter, or digit, except the last\ncharacter, which cannot be a dash.\n  - `project` (`string`):  When `null`, the `project` field will be omitted from the resulting object.\n  - `source_disk` (`string`): A reference to the disk used to create this snapshot.\n  - `storage_locations` (`list`): Cloud Storage bucket storage location of the snapshot (regional or multi-regional). When `null`, the `storage_locations` field will be omitted from the resulting object.\n  - `zone` (`string`): A reference to the zone where the disk is hosted. When `null`, the `zone` field will be omitted from the resulting object.\n  - `snapshot_encryption_key` (`list[obj]`): The customer-supplied encryption key of the snapshot. Required if the\nsource snapshot is protected by a customer-supplied encryption key. When `null`, the `snapshot_encryption_key` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_snapshot.snapshot_encryption_key.new](#fn-computesnapshotsnapshotencryptionkeynew) constructor.\n  - `source_disk_encryption_key` (`list[obj]`): The customer-supplied encryption key of the source snapshot. Required\nif the source snapshot is protected by a customer-supplied encryption\nkey. When `null`, the `source_disk_encryption_key` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_snapshot.source_disk_encryption_key.new](#fn-computesnapshotsourcediskencryptionkeynew) constructor.\n  - `timeouts` (`obj`):  When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_snapshot.timeouts.new](#fn-computesnapshottimeoutsnew) constructor.\n\n**Returns**:\n  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `compute_snapshot` resource into the root Terraform configuration.\n', args=[]),
  newAttrs(
    name,
    source_disk,
    chain_name=null,
    description=null,
    labels=null,
    project=null,
    snapshot_encryption_key=null,
    source_disk_encryption_key=null,
    storage_locations=null,
    timeouts=null,
    zone=null
  ):: std.prune(a={
    chain_name: chain_name,
    description: description,
    labels: labels,
    name: name,
    project: project,
    snapshot_encryption_key: snapshot_encryption_key,
    source_disk: source_disk,
    source_disk_encryption_key: source_disk_encryption_key,
    storage_locations: storage_locations,
    timeouts: timeouts,
    zone: zone,
  }),
  snapshot_encryption_key:: {
    '#new':: d.fn(help='\n`google.compute_snapshot.snapshot_encryption_key.new` constructs a new object with attributes and blocks configured for the `snapshot_encryption_key`\nTerraform sub block.\n\n\n\n**Args**:\n  - `kms_key_self_link` (`string`): The name of the encryption key that is stored in Google Cloud KMS. When `null`, the `kms_key_self_link` field will be omitted from the resulting object.\n  - `kms_key_service_account` (`string`): The service account used for the encryption request for the given KMS key.\nIf absent, the Compute Engine Service Agent service account is used. When `null`, the `kms_key_service_account` field will be omitted from the resulting object.\n  - `raw_key` (`string`): Specifies a 256-bit customer-supplied encryption key, encoded in\nRFC 4648 base64 to either encrypt or decrypt this resource. When `null`, the `raw_key` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `snapshot_encryption_key` sub block.\n', args=[]),
    new(
      kms_key_self_link=null,
      kms_key_service_account=null,
      raw_key=null
    ):: std.prune(a={
      kms_key_self_link: kms_key_self_link,
      kms_key_service_account: kms_key_service_account,
      raw_key: raw_key,
    }),
  },
  source_disk_encryption_key:: {
    '#new':: d.fn(help='\n`google.compute_snapshot.source_disk_encryption_key.new` constructs a new object with attributes and blocks configured for the `source_disk_encryption_key`\nTerraform sub block.\n\n\n\n**Args**:\n  - `kms_key_service_account` (`string`): The service account used for the encryption request for the given KMS key.\nIf absent, the Compute Engine Service Agent service account is used. When `null`, the `kms_key_service_account` field will be omitted from the resulting object.\n  - `raw_key` (`string`): Specifies a 256-bit customer-supplied encryption key, encoded in\nRFC 4648 base64 to either encrypt or decrypt this resource. When `null`, the `raw_key` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `source_disk_encryption_key` sub block.\n', args=[]),
    new(
      kms_key_service_account=null,
      raw_key=null
    ):: std.prune(a={
      kms_key_service_account: kms_key_service_account,
      raw_key: raw_key,
    }),
  },
  timeouts:: {
    '#new':: d.fn(help='\n`google.compute_snapshot.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`\nTerraform sub block.\n\n\n\n**Args**:\n  - `create` (`string`):  When `null`, the `create` field will be omitted from the resulting object.\n  - `delete` (`string`):  When `null`, the `delete` field will be omitted from the resulting object.\n  - `update` (`string`):  When `null`, the `update` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `timeouts` sub block.\n', args=[]),
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
  '#withChainName':: d.fn(help='`google.string.withChainName` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the chain_name field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `chain_name` field.\n', args=[]),
  withChainName(resourceLabel, value): {
    resource+: {
      google_compute_snapshot+: {
        [resourceLabel]+: {
          chain_name: value,
        },
      },
    },
  },
  '#withDescription':: d.fn(help='`google.string.withDescription` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the description field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `description` field.\n', args=[]),
  withDescription(resourceLabel, value): {
    resource+: {
      google_compute_snapshot+: {
        [resourceLabel]+: {
          description: value,
        },
      },
    },
  },
  '#withLabels':: d.fn(help='`google.obj.withLabels` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the labels field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `labels` field.\n', args=[]),
  withLabels(resourceLabel, value): {
    resource+: {
      google_compute_snapshot+: {
        [resourceLabel]+: {
          labels: value,
        },
      },
    },
  },
  '#withName':: d.fn(help='`google.string.withName` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the name field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `name` field.\n', args=[]),
  withName(resourceLabel, value): {
    resource+: {
      google_compute_snapshot+: {
        [resourceLabel]+: {
          name: value,
        },
      },
    },
  },
  '#withProject':: d.fn(help='`google.string.withProject` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the project field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `project` field.\n', args=[]),
  withProject(resourceLabel, value): {
    resource+: {
      google_compute_snapshot+: {
        [resourceLabel]+: {
          project: value,
        },
      },
    },
  },
  '#withSnapshotEncryptionKey':: d.fn(help='`google.list[obj].withSnapshotEncryptionKey` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the snapshot_encryption_key field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [google.list[obj].withSnapshotEncryptionKeyMixin](TODO) function.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `snapshot_encryption_key` field.\n', args=[]),
  withSnapshotEncryptionKey(resourceLabel, value): {
    resource+: {
      google_compute_snapshot+: {
        [resourceLabel]+: {
          snapshot_encryption_key: value,
        },
      },
    },
  },
  '#withSnapshotEncryptionKeyMixin':: d.fn(help='`google.list[obj].withSnapshotEncryptionKeyMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the snapshot_encryption_key field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google.list[obj].withSnapshotEncryptionKey](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `snapshot_encryption_key` field.\n', args=[]),
  withSnapshotEncryptionKeyMixin(resourceLabel, value): {
    resource+: {
      google_compute_snapshot+: {
        [resourceLabel]+: {
          snapshot_encryption_key+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withSourceDisk':: d.fn(help='`google.string.withSourceDisk` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the source_disk field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `source_disk` field.\n', args=[]),
  withSourceDisk(resourceLabel, value): {
    resource+: {
      google_compute_snapshot+: {
        [resourceLabel]+: {
          source_disk: value,
        },
      },
    },
  },
  '#withSourceDiskEncryptionKey':: d.fn(help='`google.list[obj].withSourceDiskEncryptionKey` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the source_disk_encryption_key field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [google.list[obj].withSourceDiskEncryptionKeyMixin](TODO) function.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `source_disk_encryption_key` field.\n', args=[]),
  withSourceDiskEncryptionKey(resourceLabel, value): {
    resource+: {
      google_compute_snapshot+: {
        [resourceLabel]+: {
          source_disk_encryption_key: value,
        },
      },
    },
  },
  '#withSourceDiskEncryptionKeyMixin':: d.fn(help='`google.list[obj].withSourceDiskEncryptionKeyMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the source_disk_encryption_key field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google.list[obj].withSourceDiskEncryptionKey](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `source_disk_encryption_key` field.\n', args=[]),
  withSourceDiskEncryptionKeyMixin(resourceLabel, value): {
    resource+: {
      google_compute_snapshot+: {
        [resourceLabel]+: {
          source_disk_encryption_key+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withStorageLocations':: d.fn(help='`google.list.withStorageLocations` constructs a mixin object that can be merged into the `list`\nTerraform resource block to set or update the storage_locations field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list`): The value to set for the `storage_locations` field.\n', args=[]),
  withStorageLocations(resourceLabel, value): {
    resource+: {
      google_compute_snapshot+: {
        [resourceLabel]+: {
          storage_locations: value,
        },
      },
    },
  },
  '#withTimeouts':: d.fn(help='`google.obj.withTimeouts` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will replace the map with the passed in `value`. If you wish to instead merge the\npassed in value to the existing map, use the [google.obj.withTimeoutsMixin](TODO) function.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeouts(resourceLabel, value): {
    resource+: {
      google_compute_snapshot+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  '#withTimeoutsMixin':: d.fn(help='`google.obj.withTimeoutsMixin` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will merge the passed in value to the existing map. If you wish\nto instead replace the entire map with the passed in `value`, use the [google.obj.withTimeouts](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeoutsMixin(resourceLabel, value): {
    resource+: {
      google_compute_snapshot+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
  '#withZone':: d.fn(help='`google.string.withZone` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the zone field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `zone` field.\n', args=[]),
  withZone(resourceLabel, value): {
    resource+: {
      google_compute_snapshot+: {
        [resourceLabel]+: {
          zone: value,
        },
      },
    },
  },
}
