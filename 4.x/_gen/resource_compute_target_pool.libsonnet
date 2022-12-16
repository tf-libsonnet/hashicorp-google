local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
{
  new(
    resourceLabel,
    name,
    backup_pool=null,
    description=null,
    failover_ratio=null,
    health_checks=null,
    instances=null,
    project=null,
    region=null,
    session_affinity=null,
    timeouts=null,
    _meta={}
  ):: tf.withResource(
    type='google_compute_target_pool',
    label=resourceLabel,
    attrs=self.newAttrs(
      backup_pool=backup_pool,
      description=description,
      failover_ratio=failover_ratio,
      health_checks=health_checks,
      instances=instances,
      name=name,
      project=project,
      region=region,
      session_affinity=session_affinity,
      timeouts=timeouts
    ),
    _meta=_meta
  ),
  newAttrs(
    name,
    backup_pool=null,
    description=null,
    failover_ratio=null,
    health_checks=null,
    instances=null,
    project=null,
    region=null,
    session_affinity=null,
    timeouts=null
  ):: std.prune(a={
    backup_pool: backup_pool,
    description: description,
    failover_ratio: failover_ratio,
    health_checks: health_checks,
    instances: instances,
    name: name,
    project: project,
    region: region,
    session_affinity: session_affinity,
    timeouts: timeouts,
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
  withBackupPool(resourceLabel, value):: {
    resource+: {
      google_compute_target_pool+: {
        [resourceLabel]+: {
          backup_pool: value,
        },
      },
    },
  },
  withDescription(resourceLabel, value):: {
    resource+: {
      google_compute_target_pool+: {
        [resourceLabel]+: {
          description: value,
        },
      },
    },
  },
  withFailoverRatio(resourceLabel, value):: {
    resource+: {
      google_compute_target_pool+: {
        [resourceLabel]+: {
          failover_ratio: value,
        },
      },
    },
  },
  withHealthChecks(resourceLabel, value):: {
    resource+: {
      google_compute_target_pool+: {
        [resourceLabel]+: {
          health_checks: value,
        },
      },
    },
  },
  withInstances(resourceLabel, value):: {
    resource+: {
      google_compute_target_pool+: {
        [resourceLabel]+: {
          instances: value,
        },
      },
    },
  },
  withName(resourceLabel, value):: {
    resource+: {
      google_compute_target_pool+: {
        [resourceLabel]+: {
          name: value,
        },
      },
    },
  },
  withProject(resourceLabel, value):: {
    resource+: {
      google_compute_target_pool+: {
        [resourceLabel]+: {
          project: value,
        },
      },
    },
  },
  withRegion(resourceLabel, value):: {
    resource+: {
      google_compute_target_pool+: {
        [resourceLabel]+: {
          region: value,
        },
      },
    },
  },
  withSessionAffinity(resourceLabel, value):: {
    resource+: {
      google_compute_target_pool+: {
        [resourceLabel]+: {
          session_affinity: value,
        },
      },
    },
  },
  withTimeouts(resourceLabel, value):: {
    resource+: {
      google_compute_target_pool+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  withTimeoutsMixin(resourceLabel, value):: {
    resource+: {
      google_compute_target_pool+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
}
