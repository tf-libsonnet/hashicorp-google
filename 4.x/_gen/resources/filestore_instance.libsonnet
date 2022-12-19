local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
local d = (import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet');
{
  '#':: d.pkg(name='filestore_instance', url='', help='`filestore_instance` represents the `google_filestore_instance` Terraform resource.\n\n\n\nThis package contains functions and utilities for setting up the resource using Jsonnet code.\n'),
  file_shares:: {
    '#new':: d.fn(help='\n`google.filestore_instance.file_shares.new` constructs a new object with attributes and blocks configured for the `file_shares`\nTerraform sub block.\n\n\n\n**Args**:\n  - `capacity_gb` (`number`): File share capacity in GiB. This must be at least 1024 GiB\nfor the standard tier, or 2560 GiB for the premium tier.\n  - `name` (`string`): The name of the fileshare (16 characters or less)\n  - `nfs_export_options` (`list[obj]`): Nfs Export Options. There is a limit of 10 export options per file share. When `null`, the `nfs_export_options` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.filestore_instance.file_shares.nfs_export_options.new](#fn-nfs_export_optionsnew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `file_shares` sub block.\n', args=[]),
    new(
      capacity_gb,
      name,
      nfs_export_options=null
    ):: std.prune(a={
      capacity_gb: capacity_gb,
      name: name,
      nfs_export_options: nfs_export_options,
    }),
    nfs_export_options:: {
      '#new':: d.fn(help='\n`google.filestore_instance.file_shares.nfs_export_options.new` constructs a new object with attributes and blocks configured for the `nfs_export_options`\nTerraform sub block.\n\n\n\n**Args**:\n  - `access_mode` (`string`): Either READ_ONLY, for allowing only read requests on the exported directory,\nor READ_WRITE, for allowing both read and write requests. The default is READ_WRITE. Default value: &#34;READ_WRITE&#34; Possible values: [&#34;READ_ONLY&#34;, &#34;READ_WRITE&#34;] When `null`, the `access_mode` field will be omitted from the resulting object.\n  - `anon_gid` (`number`): An integer representing the anonymous group id with a default value of 65534.\nAnon_gid may only be set with squashMode of ROOT_SQUASH. An error will be returned\nif this field is specified for other squashMode settings. When `null`, the `anon_gid` field will be omitted from the resulting object.\n  - `anon_uid` (`number`): An integer representing the anonymous user id with a default value of 65534.\nAnon_uid may only be set with squashMode of ROOT_SQUASH. An error will be returned\nif this field is specified for other squashMode settings. When `null`, the `anon_uid` field will be omitted from the resulting object.\n  - `ip_ranges` (`list`): List of either IPv4 addresses, or ranges in CIDR notation which may mount the file share.\nOverlapping IP ranges are not allowed, both within and across NfsExportOptions. An error will be returned.\nThe limit is 64 IP ranges/addresses for each FileShareConfig among all NfsExportOptions. When `null`, the `ip_ranges` field will be omitted from the resulting object.\n  - `squash_mode` (`string`): Either NO_ROOT_SQUASH, for allowing root access on the exported directory, or ROOT_SQUASH,\nfor not allowing root access. The default is NO_ROOT_SQUASH. Default value: &#34;NO_ROOT_SQUASH&#34; Possible values: [&#34;NO_ROOT_SQUASH&#34;, &#34;ROOT_SQUASH&#34;] When `null`, the `squash_mode` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `nfs_export_options` sub block.\n', args=[]),
      new(
        access_mode=null,
        anon_gid=null,
        anon_uid=null,
        ip_ranges=null,
        squash_mode=null
      ):: std.prune(a={
        access_mode: access_mode,
        anon_gid: anon_gid,
        anon_uid: anon_uid,
        ip_ranges: ip_ranges,
        squash_mode: squash_mode,
      }),
    },
  },
  networks:: {
    '#new':: d.fn(help='\n`google.filestore_instance.networks.new` constructs a new object with attributes and blocks configured for the `networks`\nTerraform sub block.\n\n\n\n**Args**:\n  - `connect_mode` (`string`): The network connect mode of the Filestore instance.\nIf not provided, the connect mode defaults to\nDIRECT_PEERING. Default value: &#34;DIRECT_PEERING&#34; Possible values: [&#34;DIRECT_PEERING&#34;, &#34;PRIVATE_SERVICE_ACCESS&#34;] When `null`, the `connect_mode` field will be omitted from the resulting object.\n  - `modes` (`list`): IP versions for which the instance has\nIP addresses assigned. Possible values: [&#34;ADDRESS_MODE_UNSPECIFIED&#34;, &#34;MODE_IPV4&#34;, &#34;MODE_IPV6&#34;]\n  - `network` (`string`): The name of the GCE VPC network to which the\ninstance is connected.\n  - `reserved_ip_range` (`string`): A /29 CIDR block that identifies the range of IP\naddresses reserved for this instance. When `null`, the `reserved_ip_range` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `networks` sub block.\n', args=[]),
    new(
      modes,
      network,
      connect_mode=null,
      reserved_ip_range=null
    ):: std.prune(a={
      connect_mode: connect_mode,
      modes: modes,
      network: network,
      reserved_ip_range: reserved_ip_range,
    }),
  },
  '#new':: d.fn(help="\n`google.filestore_instance.new` injects a new `google_filestore_instance` Terraform `resource`\nblock into the root module document.\n\nAdditionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the\nresource. For example, if you added a new instance to the root using:\n\n    # arguments omitted for brevity\n    google.filestore_instance.new('some_id')\n\nYou can get the reference to the `id` field of the created `google.filestore_instance` using the reference:\n\n    $._ref.google_filestore_instance.some_id.get('id')\n\nThis is the same as directly entering `\"${ google_filestore_instance.some_id.id }\"` as the value.\n\nNOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,\nor `$` to refer to the root object. Instead, make an explicit outer object using `local`.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block.\n  - `description` (`string`): A description of the instance. When `null`, the `description` field will be omitted from the resulting object.\n  - `kms_key_name` (`string`): KMS key name used for data encryption. When `null`, the `kms_key_name` field will be omitted from the resulting object.\n  - `labels` (`obj`): Resource labels to represent user-provided metadata. When `null`, the `labels` field will be omitted from the resulting object.\n  - `location` (`string`): The name of the location of the instance. This can be a region for ENTERPRISE tier instances. When `null`, the `location` field will be omitted from the resulting object.\n  - `name` (`string`): The resource name of the instance.\n  - `project` (`string`):  When `null`, the `project` field will be omitted from the resulting object.\n  - `tier` (`string`): The service tier of the instance.\nPossible values include: STANDARD, PREMIUM, BASIC_HDD, BASIC_SSD, HIGH_SCALE_SSD and ENTERPRISE\n  - `zone` (`string`): The name of the Filestore zone of the instance. When `null`, the `zone` field will be omitted from the resulting object.\n  - `file_shares` (`list[obj]`): File system shares on the instance. For this version, only a\nsingle file share is supported. When `null`, the `file_shares` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.filestore_instance.file_shares.new](#fn-file_sharesnew) constructor.\n  - `networks` (`list[obj]`): VPC networks to which the instance is connected. For this version,\nonly a single network is supported. When `null`, the `networks` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.filestore_instance.networks.new](#fn-networksnew) constructor.\n  - `timeouts` (`obj`):  When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.filestore_instance.timeouts.new](#fn-timeoutsnew) constructor.\n\n**Returns**:\n- A mixin object that injects the new resource into the root Terraform configuration.\n", args=[]),
  new(
    resourceLabel,
    name,
    tier,
    description=null,
    file_shares=null,
    kms_key_name=null,
    labels=null,
    location=null,
    networks=null,
    project=null,
    timeouts=null,
    zone=null,
    _meta={}
  ):: tf.withResource(
    type='google_filestore_instance',
    label=resourceLabel,
    attrs=self.newAttrs(
      description=description,
      file_shares=file_shares,
      kms_key_name=kms_key_name,
      labels=labels,
      location=location,
      name=name,
      networks=networks,
      project=project,
      tier=tier,
      timeouts=timeouts,
      zone=zone
    ),
    _meta=_meta
  ),
  '#newAttrs':: d.fn(help='\n`google.filestore_instance.newAttrs` constructs a new object with attributes and blocks configured for the `filestore_instance`\nTerraform resource.\n\nUnlike [google.filestore_instance.new](#fn-new), this function will not inject the `resource`\nblock into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the\n[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.\n\nThis is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to\ninjecting into a complete block.\n\n**Args**:\n  - `description` (`string`): A description of the instance. When `null`, the `description` field will be omitted from the resulting object.\n  - `kms_key_name` (`string`): KMS key name used for data encryption. When `null`, the `kms_key_name` field will be omitted from the resulting object.\n  - `labels` (`obj`): Resource labels to represent user-provided metadata. When `null`, the `labels` field will be omitted from the resulting object.\n  - `location` (`string`): The name of the location of the instance. This can be a region for ENTERPRISE tier instances. When `null`, the `location` field will be omitted from the resulting object.\n  - `name` (`string`): The resource name of the instance.\n  - `project` (`string`):  When `null`, the `project` field will be omitted from the resulting object.\n  - `tier` (`string`): The service tier of the instance.\nPossible values include: STANDARD, PREMIUM, BASIC_HDD, BASIC_SSD, HIGH_SCALE_SSD and ENTERPRISE\n  - `zone` (`string`): The name of the Filestore zone of the instance. When `null`, the `zone` field will be omitted from the resulting object.\n  - `file_shares` (`list[obj]`): File system shares on the instance. For this version, only a\nsingle file share is supported. When `null`, the `file_shares` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.filestore_instance.file_shares.new](#fn-file_sharesnew) constructor.\n  - `networks` (`list[obj]`): VPC networks to which the instance is connected. For this version,\nonly a single network is supported. When `null`, the `networks` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.filestore_instance.networks.new](#fn-networksnew) constructor.\n  - `timeouts` (`obj`):  When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.filestore_instance.timeouts.new](#fn-timeoutsnew) constructor.\n\n**Returns**:\n  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `filestore_instance` resource into the root Terraform configuration.\n', args=[]),
  newAttrs(
    name,
    tier,
    description=null,
    file_shares=null,
    kms_key_name=null,
    labels=null,
    location=null,
    networks=null,
    project=null,
    timeouts=null,
    zone=null
  ):: std.prune(a={
    description: description,
    file_shares: file_shares,
    kms_key_name: kms_key_name,
    labels: labels,
    location: location,
    name: name,
    networks: networks,
    project: project,
    tier: tier,
    timeouts: timeouts,
    zone: zone,
  }),
  timeouts:: {
    '#new':: d.fn(help='\n`google.filestore_instance.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`\nTerraform sub block.\n\n\n\n**Args**:\n  - `create` (`string`):  When `null`, the `create` field will be omitted from the resulting object.\n  - `delete` (`string`):  When `null`, the `delete` field will be omitted from the resulting object.\n  - `update` (`string`):  When `null`, the `update` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `timeouts` sub block.\n', args=[]),
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
      google_filestore_instance+: {
        [resourceLabel]+: {
          description: value,
        },
      },
    },
  },
  '#withFileShares':: d.fn(help='`google.list[obj].withFileShares` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the file_shares field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [google.list[obj].withFileSharesMixin](TODO) function.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `file_shares` field.\n', args=[]),
  withFileShares(resourceLabel, value): {
    resource+: {
      google_filestore_instance+: {
        [resourceLabel]+: {
          file_shares: value,
        },
      },
    },
  },
  '#withFileSharesMixin':: d.fn(help='`google.list[obj].withFileSharesMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the file_shares field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google.list[obj].withFileShares](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `file_shares` field.\n', args=[]),
  withFileSharesMixin(resourceLabel, value): {
    resource+: {
      google_filestore_instance+: {
        [resourceLabel]+: {
          file_shares+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withKmsKeyName':: d.fn(help='`google.string.withKmsKeyName` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the kms_key_name field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `kms_key_name` field.\n', args=[]),
  withKmsKeyName(resourceLabel, value): {
    resource+: {
      google_filestore_instance+: {
        [resourceLabel]+: {
          kms_key_name: value,
        },
      },
    },
  },
  '#withLabels':: d.fn(help='`google.obj.withLabels` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the labels field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `labels` field.\n', args=[]),
  withLabels(resourceLabel, value): {
    resource+: {
      google_filestore_instance+: {
        [resourceLabel]+: {
          labels: value,
        },
      },
    },
  },
  '#withLocation':: d.fn(help='`google.string.withLocation` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the location field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `location` field.\n', args=[]),
  withLocation(resourceLabel, value): {
    resource+: {
      google_filestore_instance+: {
        [resourceLabel]+: {
          location: value,
        },
      },
    },
  },
  '#withName':: d.fn(help='`google.string.withName` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the name field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `name` field.\n', args=[]),
  withName(resourceLabel, value): {
    resource+: {
      google_filestore_instance+: {
        [resourceLabel]+: {
          name: value,
        },
      },
    },
  },
  '#withNetworks':: d.fn(help='`google.list[obj].withNetworks` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the networks field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [google.list[obj].withNetworksMixin](TODO) function.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `networks` field.\n', args=[]),
  withNetworks(resourceLabel, value): {
    resource+: {
      google_filestore_instance+: {
        [resourceLabel]+: {
          networks: value,
        },
      },
    },
  },
  '#withNetworksMixin':: d.fn(help='`google.list[obj].withNetworksMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the networks field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google.list[obj].withNetworks](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `networks` field.\n', args=[]),
  withNetworksMixin(resourceLabel, value): {
    resource+: {
      google_filestore_instance+: {
        [resourceLabel]+: {
          networks+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withProject':: d.fn(help='`google.string.withProject` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the project field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `project` field.\n', args=[]),
  withProject(resourceLabel, value): {
    resource+: {
      google_filestore_instance+: {
        [resourceLabel]+: {
          project: value,
        },
      },
    },
  },
  '#withTier':: d.fn(help='`google.string.withTier` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the tier field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `tier` field.\n', args=[]),
  withTier(resourceLabel, value): {
    resource+: {
      google_filestore_instance+: {
        [resourceLabel]+: {
          tier: value,
        },
      },
    },
  },
  '#withTimeouts':: d.fn(help='`google.obj.withTimeouts` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will replace the map with the passed in `value`. If you wish to instead merge the\npassed in value to the existing map, use the [google.obj.withTimeoutsMixin](TODO) function.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeouts(resourceLabel, value): {
    resource+: {
      google_filestore_instance+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  '#withTimeoutsMixin':: d.fn(help='`google.obj.withTimeoutsMixin` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will merge the passed in value to the existing map. If you wish\nto instead replace the entire map with the passed in `value`, use the [google.obj.withTimeouts](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeoutsMixin(resourceLabel, value): {
    resource+: {
      google_filestore_instance+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
  '#withZone':: d.fn(help='`google.string.withZone` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the zone field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `zone` field.\n', args=[]),
  withZone(resourceLabel, value): {
    resource+: {
      google_filestore_instance+: {
        [resourceLabel]+: {
          zone: value,
        },
      },
    },
  },
}
