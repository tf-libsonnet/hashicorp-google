local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
{
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
    new(
      kms_key_service_account=null,
      raw_key=null
    ):: std.prune(a={
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
  withChainName(resourceLabel, value):: {
    resource+: {
      google_compute_snapshot+: {
        [resourceLabel]+: {
          chain_name: value,
        },
      },
    },
  },
  withDescription(resourceLabel, value):: {
    resource+: {
      google_compute_snapshot+: {
        [resourceLabel]+: {
          description: value,
        },
      },
    },
  },
  withLabels(resourceLabel, value):: {
    resource+: {
      google_compute_snapshot+: {
        [resourceLabel]+: {
          labels: value,
        },
      },
    },
  },
  withName(resourceLabel, value):: {
    resource+: {
      google_compute_snapshot+: {
        [resourceLabel]+: {
          name: value,
        },
      },
    },
  },
  withProject(resourceLabel, value):: {
    resource+: {
      google_compute_snapshot+: {
        [resourceLabel]+: {
          project: value,
        },
      },
    },
  },
  withSnapshotEncryptionKey(resourceLabel, value):: {
    resource+: {
      google_compute_snapshot+: {
        [resourceLabel]+: {
          snapshot_encryption_key: value,
        },
      },
    },
  },
  withSnapshotEncryptionKeyMixin(resourceLabel, value):: {
    resource+: {
      google_compute_snapshot+: {
        [resourceLabel]+: {
          snapshot_encryption_key+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  withSourceDisk(resourceLabel, value):: {
    resource+: {
      google_compute_snapshot+: {
        [resourceLabel]+: {
          source_disk: value,
        },
      },
    },
  },
  withSourceDiskEncryptionKey(resourceLabel, value):: {
    resource+: {
      google_compute_snapshot+: {
        [resourceLabel]+: {
          source_disk_encryption_key: value,
        },
      },
    },
  },
  withSourceDiskEncryptionKeyMixin(resourceLabel, value):: {
    resource+: {
      google_compute_snapshot+: {
        [resourceLabel]+: {
          source_disk_encryption_key+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  withStorageLocations(resourceLabel, value):: {
    resource+: {
      google_compute_snapshot+: {
        [resourceLabel]+: {
          storage_locations: value,
        },
      },
    },
  },
  withTimeouts(resourceLabel, value):: {
    resource+: {
      google_compute_snapshot+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  withTimeoutsMixin(resourceLabel, value):: {
    resource+: {
      google_compute_snapshot+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
  withZone(resourceLabel, value):: {
    resource+: {
      google_compute_snapshot+: {
        [resourceLabel]+: {
          zone: value,
        },
      },
    },
  },
}
