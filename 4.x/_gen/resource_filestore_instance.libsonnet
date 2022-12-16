local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
{
  file_shares:: {
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
      google_filestore_instance+: {
        [resourceLabel]+: {
          description: value,
        },
      },
    },
  },
  withFileShares(resourceLabel, value):: {
    resource+: {
      google_filestore_instance+: {
        [resourceLabel]+: {
          file_shares: value,
        },
      },
    },
  },
  withFileSharesMixin(resourceLabel, value):: {
    resource+: {
      google_filestore_instance+: {
        [resourceLabel]+: {
          file_shares+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  withKmsKeyName(resourceLabel, value):: {
    resource+: {
      google_filestore_instance+: {
        [resourceLabel]+: {
          kms_key_name: value,
        },
      },
    },
  },
  withLabels(resourceLabel, value):: {
    resource+: {
      google_filestore_instance+: {
        [resourceLabel]+: {
          labels: value,
        },
      },
    },
  },
  withLocation(resourceLabel, value):: {
    resource+: {
      google_filestore_instance+: {
        [resourceLabel]+: {
          location: value,
        },
      },
    },
  },
  withName(resourceLabel, value):: {
    resource+: {
      google_filestore_instance+: {
        [resourceLabel]+: {
          name: value,
        },
      },
    },
  },
  withNetworks(resourceLabel, value):: {
    resource+: {
      google_filestore_instance+: {
        [resourceLabel]+: {
          networks: value,
        },
      },
    },
  },
  withNetworksMixin(resourceLabel, value):: {
    resource+: {
      google_filestore_instance+: {
        [resourceLabel]+: {
          networks+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  withProject(resourceLabel, value):: {
    resource+: {
      google_filestore_instance+: {
        [resourceLabel]+: {
          project: value,
        },
      },
    },
  },
  withTier(resourceLabel, value):: {
    resource+: {
      google_filestore_instance+: {
        [resourceLabel]+: {
          tier: value,
        },
      },
    },
  },
  withTimeouts(resourceLabel, value):: {
    resource+: {
      google_filestore_instance+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  withTimeoutsMixin(resourceLabel, value):: {
    resource+: {
      google_filestore_instance+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
  withZone(resourceLabel, value):: {
    resource+: {
      google_filestore_instance+: {
        [resourceLabel]+: {
          zone: value,
        },
      },
    },
  },
}
