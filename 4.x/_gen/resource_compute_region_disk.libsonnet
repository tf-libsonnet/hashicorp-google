local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
{
  disk_encryption_key:: {
    new(
      kms_key_name=null,
      raw_key=null
    ):: std.prune(a={
      kms_key_name: kms_key_name,
      raw_key: raw_key,
    }),
  },
  new(
    resourceLabel,
    name,
    replica_zones,
    description=null,
    disk_encryption_key=null,
    labels=null,
    physical_block_size_bytes=null,
    project=null,
    region=null,
    size=null,
    snapshot=null,
    source_disk=null,
    source_snapshot_encryption_key=null,
    timeouts=null,
    type=null,
    _meta={}
  ):: tf.withResource(
    type='google_compute_region_disk',
    label=resourceLabel,
    attrs=self.newAttrs(
      description=description,
      disk_encryption_key=disk_encryption_key,
      labels=labels,
      name=name,
      physical_block_size_bytes=physical_block_size_bytes,
      project=project,
      region=region,
      replica_zones=replica_zones,
      size=size,
      snapshot=snapshot,
      source_disk=source_disk,
      source_snapshot_encryption_key=source_snapshot_encryption_key,
      timeouts=timeouts,
      type=type
    ),
    _meta=_meta
  ),
  newAttrs(
    name,
    replica_zones,
    description=null,
    disk_encryption_key=null,
    labels=null,
    physical_block_size_bytes=null,
    project=null,
    region=null,
    size=null,
    snapshot=null,
    source_disk=null,
    source_snapshot_encryption_key=null,
    timeouts=null,
    type=null
  ):: std.prune(a={
    description: description,
    disk_encryption_key: disk_encryption_key,
    labels: labels,
    name: name,
    physical_block_size_bytes: physical_block_size_bytes,
    project: project,
    region: region,
    replica_zones: replica_zones,
    size: size,
    snapshot: snapshot,
    source_disk: source_disk,
    source_snapshot_encryption_key: source_snapshot_encryption_key,
    timeouts: timeouts,
    type: type,
  }),
  source_snapshot_encryption_key:: {
    new(
      raw_key=null
    ):: std.prune(a={
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
      google_compute_region_disk+: {
        [resourceLabel]+: {
          description: value,
        },
      },
    },
  },
  withDiskEncryptionKey(resourceLabel, value):: {
    resource+: {
      google_compute_region_disk+: {
        [resourceLabel]+: {
          disk_encryption_key: value,
        },
      },
    },
  },
  withDiskEncryptionKeyMixin(resourceLabel, value):: {
    resource+: {
      google_compute_region_disk+: {
        [resourceLabel]+: {
          disk_encryption_key+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  withLabels(resourceLabel, value):: {
    resource+: {
      google_compute_region_disk+: {
        [resourceLabel]+: {
          labels: value,
        },
      },
    },
  },
  withName(resourceLabel, value):: {
    resource+: {
      google_compute_region_disk+: {
        [resourceLabel]+: {
          name: value,
        },
      },
    },
  },
  withPhysicalBlockSizeBytes(resourceLabel, value):: {
    resource+: {
      google_compute_region_disk+: {
        [resourceLabel]+: {
          physical_block_size_bytes: value,
        },
      },
    },
  },
  withProject(resourceLabel, value):: {
    resource+: {
      google_compute_region_disk+: {
        [resourceLabel]+: {
          project: value,
        },
      },
    },
  },
  withRegion(resourceLabel, value):: {
    resource+: {
      google_compute_region_disk+: {
        [resourceLabel]+: {
          region: value,
        },
      },
    },
  },
  withReplicaZones(resourceLabel, value):: {
    resource+: {
      google_compute_region_disk+: {
        [resourceLabel]+: {
          replica_zones: value,
        },
      },
    },
  },
  withSize(resourceLabel, value):: {
    resource+: {
      google_compute_region_disk+: {
        [resourceLabel]+: {
          size: value,
        },
      },
    },
  },
  withSnapshot(resourceLabel, value):: {
    resource+: {
      google_compute_region_disk+: {
        [resourceLabel]+: {
          snapshot: value,
        },
      },
    },
  },
  withSourceDisk(resourceLabel, value):: {
    resource+: {
      google_compute_region_disk+: {
        [resourceLabel]+: {
          source_disk: value,
        },
      },
    },
  },
  withSourceSnapshotEncryptionKey(resourceLabel, value):: {
    resource+: {
      google_compute_region_disk+: {
        [resourceLabel]+: {
          source_snapshot_encryption_key: value,
        },
      },
    },
  },
  withSourceSnapshotEncryptionKeyMixin(resourceLabel, value):: {
    resource+: {
      google_compute_region_disk+: {
        [resourceLabel]+: {
          source_snapshot_encryption_key+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  withTimeouts(resourceLabel, value):: {
    resource+: {
      google_compute_region_disk+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  withTimeoutsMixin(resourceLabel, value):: {
    resource+: {
      google_compute_region_disk+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
  withType(resourceLabel, value):: {
    resource+: {
      google_compute_region_disk+: {
        [resourceLabel]+: {
          type: value,
        },
      },
    },
  },
}
