local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
{
  disk_encryption_key:: {
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
  new(
    resourceLabel,
    name,
    description=null,
    disk_encryption_key=null,
    image=null,
    labels=null,
    physical_block_size_bytes=null,
    project=null,
    provisioned_iops=null,
    size=null,
    snapshot=null,
    source_disk=null,
    source_image_encryption_key=null,
    source_snapshot_encryption_key=null,
    timeouts=null,
    type=null,
    zone=null,
    _meta={}
  ):: tf.withResource(
    type='google_compute_disk',
    label=resourceLabel,
    attrs=self.newAttrs(
      description=description,
      disk_encryption_key=disk_encryption_key,
      image=image,
      labels=labels,
      name=name,
      physical_block_size_bytes=physical_block_size_bytes,
      project=project,
      provisioned_iops=provisioned_iops,
      size=size,
      snapshot=snapshot,
      source_disk=source_disk,
      source_image_encryption_key=source_image_encryption_key,
      source_snapshot_encryption_key=source_snapshot_encryption_key,
      timeouts=timeouts,
      type=type,
      zone=zone
    ),
    _meta=_meta
  ),
  newAttrs(
    name,
    description=null,
    disk_encryption_key=null,
    image=null,
    labels=null,
    physical_block_size_bytes=null,
    project=null,
    provisioned_iops=null,
    size=null,
    snapshot=null,
    source_disk=null,
    source_image_encryption_key=null,
    source_snapshot_encryption_key=null,
    timeouts=null,
    type=null,
    zone=null
  ):: std.prune(a={
    description: description,
    disk_encryption_key: disk_encryption_key,
    image: image,
    labels: labels,
    name: name,
    physical_block_size_bytes: physical_block_size_bytes,
    project: project,
    provisioned_iops: provisioned_iops,
    size: size,
    snapshot: snapshot,
    source_disk: source_disk,
    source_image_encryption_key: source_image_encryption_key,
    source_snapshot_encryption_key: source_snapshot_encryption_key,
    timeouts: timeouts,
    type: type,
    zone: zone,
  }),
  source_image_encryption_key:: {
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
  source_snapshot_encryption_key:: {
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
  timeouts:: {
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
  withDescription(resourceLabel, value):: {
    resource+: {
      google_compute_disk+: {
        [resourceLabel]+: {
          description: value,
        },
      },
    },
  },
  withDiskEncryptionKey(resourceLabel, value):: {
    resource+: {
      google_compute_disk+: {
        [resourceLabel]+: {
          disk_encryption_key: value,
        },
      },
    },
  },
  withDiskEncryptionKeyMixin(resourceLabel, value):: {
    resource+: {
      google_compute_disk+: {
        [resourceLabel]+: {
          disk_encryption_key+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  withImage(resourceLabel, value):: {
    resource+: {
      google_compute_disk+: {
        [resourceLabel]+: {
          image: value,
        },
      },
    },
  },
  withLabels(resourceLabel, value):: {
    resource+: {
      google_compute_disk+: {
        [resourceLabel]+: {
          labels: value,
        },
      },
    },
  },
  withName(resourceLabel, value):: {
    resource+: {
      google_compute_disk+: {
        [resourceLabel]+: {
          name: value,
        },
      },
    },
  },
  withPhysicalBlockSizeBytes(resourceLabel, value):: {
    resource+: {
      google_compute_disk+: {
        [resourceLabel]+: {
          physical_block_size_bytes: value,
        },
      },
    },
  },
  withProject(resourceLabel, value):: {
    resource+: {
      google_compute_disk+: {
        [resourceLabel]+: {
          project: value,
        },
      },
    },
  },
  withProvisionedIops(resourceLabel, value):: {
    resource+: {
      google_compute_disk+: {
        [resourceLabel]+: {
          provisioned_iops: value,
        },
      },
    },
  },
  withSize(resourceLabel, value):: {
    resource+: {
      google_compute_disk+: {
        [resourceLabel]+: {
          size: value,
        },
      },
    },
  },
  withSnapshot(resourceLabel, value):: {
    resource+: {
      google_compute_disk+: {
        [resourceLabel]+: {
          snapshot: value,
        },
      },
    },
  },
  withSourceDisk(resourceLabel, value):: {
    resource+: {
      google_compute_disk+: {
        [resourceLabel]+: {
          source_disk: value,
        },
      },
    },
  },
  withSourceImageEncryptionKey(resourceLabel, value):: {
    resource+: {
      google_compute_disk+: {
        [resourceLabel]+: {
          source_image_encryption_key: value,
        },
      },
    },
  },
  withSourceImageEncryptionKeyMixin(resourceLabel, value):: {
    resource+: {
      google_compute_disk+: {
        [resourceLabel]+: {
          source_image_encryption_key+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  withSourceSnapshotEncryptionKey(resourceLabel, value):: {
    resource+: {
      google_compute_disk+: {
        [resourceLabel]+: {
          source_snapshot_encryption_key: value,
        },
      },
    },
  },
  withSourceSnapshotEncryptionKeyMixin(resourceLabel, value):: {
    resource+: {
      google_compute_disk+: {
        [resourceLabel]+: {
          source_snapshot_encryption_key+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  withTimeouts(resourceLabel, value):: {
    resource+: {
      google_compute_disk+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  withTimeoutsMixin(resourceLabel, value):: {
    resource+: {
      google_compute_disk+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
  withType(resourceLabel, value):: {
    resource+: {
      google_compute_disk+: {
        [resourceLabel]+: {
          type: value,
        },
      },
    },
  },
  withZone(resourceLabel, value):: {
    resource+: {
      google_compute_disk+: {
        [resourceLabel]+: {
          zone: value,
        },
      },
    },
  },
}
